#!/usr/bin/env bash
# Rebuild every macOS project that sits on Csound 7, CsoundAC, and cloud-5.
# Dependency order (each step needs only earlier steps):
#   1. csound                 Csound 7, branch develop
#   2. csound-ac              CsoundAC (this repository), branch master
#   3. csound-cxx-opcodes     Csound 7 and CsoundAC headers, branch main
#   4. csound-vst3-opcodes    Csound 7 and CsoundAC files, branch master
#   5. csound-vst3            Csound 7 and CsoundAC headers, branch main
#   6. csound-nwjs            Csound 7 and vendored CsoundAC headers, branch main
#   7. csound-wasm            Csound and CsoundAC for WebAssembly, branch main
#   8. cloud-5                site, from the csound-wasm dist, branch main
#
# Each checkout must already be on that branch. A clean tree that is strictly
# behind origin is fast-forwarded. A diverged or dirty tracked tree stops
# the build. csound-wasm's own build then resets its csound submodule to
# origin/develop and its csound-ac submodule to origin/master.
#
# Step 1 installs Csound 7 into ~/Library/Frameworks.
# Step 2 installs the CsoundAC Python extension into Homebrew site-packages
# and, when the csound venv exists, into that venv as well.
# Mach-O release archives (CsoundAC, cxx-opcodes, vst3-opcodes, CsoundVST3)
# are Developer ID signed. On GitHub Actions they are notarized as well.
# gogins.github.io is the publish of cloud-5 and is not run here.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

run() {
    local title="$1"
    shift
    echo
    echo "============================================================"
    echo "${title}"
    echo "============================================================"
    echo
    "$@"
}

require_exec() {
    local path="$1"
    if [[ ! -x "$path" ]]; then
        echo "ERROR: build script is missing or not executable: ${path}" >&2
        exit 1
    fi
}

require_writable() {
    local path="$1"
    if [[ ! -w "$path" ]]; then
        echo "ERROR: not writable by ${USER}: ${path}" >&2
        exit 1
    fi
}

# Fetch origin and require HEAD to be the tip of the expected branch.
# Fast-forward a clean checkout that is strictly behind. Do not reset.
require_head() {
    local repo="$1"
    local branch="$2"
    local current head upstream

    echo "Checking Git head: ${repo} (${branch})"
    git -C "$repo" fetch --prune origin

    current="$(git -C "$repo" rev-parse --abbrev-ref HEAD)"
    if [[ "$current" != "$branch" ]]; then
        echo "ERROR: ${repo} is on ${current}, expected ${branch}." >&2
        exit 1
    fi

    if [[ -n "$(git -C "$repo" status --porcelain --untracked-files=no)" ]]; then
        echo "ERROR: ${repo} has tracked changes, so it was not fast-forwarded." >&2
        exit 1
    fi

    head="$(git -C "$repo" rev-parse HEAD)"
    upstream="$(git -C "$repo" rev-parse "origin/${branch}")"
    if [[ "$head" == "$upstream" ]]; then
        git -C "$repo" log -1 --oneline
        return 0
    fi

    if ! git -C "$repo" merge-base --is-ancestor HEAD "origin/${branch}"; then
        echo "ERROR: ${repo} ${branch} has diverged from origin/${branch}." >&2
        echo "  HEAD:   ${head}" >&2
        echo "  origin: ${upstream}" >&2
        exit 1
    fi

    echo "Fast-forwarding ${repo} to origin/${branch}..."
    git -C "$repo" merge --ff-only "origin/${branch}"
    git -C "$repo" log -1 --oneline
}

verify_csound7_installed() {
    local framework="${HOME}/Library/Frameworks/CsoundLib64.framework/Versions/7.0/CsoundLib64"
    if [[ ! -x "$framework" ]]; then
        echo "ERROR: Csound 7 framework was not installed at ${framework}" >&2
        exit 1
    fi
    echo "Installed Csound 7: ${framework}"
}

verify_csoundac_python_installed() {
    local prefix_dir="/opt/homebrew/lib/python3.12/site-packages"
    local prefix_so="${prefix_dir}/_CsoundAC.so"
    local prefix_py="${prefix_dir}/CsoundAC.py"
    local venv_python="${HOME}/venv/csound/bin/python"
    local venv_so="${HOME}/venv/csound/lib/python3.12/site-packages/_CsoundAC.so"

    if [[ ! -f "$prefix_py" || ! -x "$prefix_so" ]]; then
        echo "ERROR: CsoundAC Python extension was not installed in ${prefix_dir}" >&2
        exit 1
    fi
    echo "Installed CsoundAC Python extension: ${prefix_so}"

    if [[ -x "$venv_python" ]]; then
        if [[ ! -x "$venv_so" ]]; then
            echo "ERROR: CsoundAC Python extension was not installed in the csound venv." >&2
            exit 1
        fi
        "$venv_python" -c 'import CsoundAC; print("CsoundAC import:", CsoundAC.__file__)'
    fi
}

require_exec "${HOME}/csound-ac/external/build-csound7.sh"
require_exec "${root}/build-macos.sh"
require_exec "${HOME}/csound-cxx-opcodes/clean-build-macos.bash"
require_exec "${HOME}/csound-vst3-opcodes/clean-build-macos.bash"
require_exec "${HOME}/csound-vst3/CsoundVST3/clean-build-macos.bash"
require_exec "${HOME}/csound-nwjs/rebuild.bash"
require_exec "${HOME}/csound-wasm/build-wasm.sh"
require_exec "${HOME}/csound-wasm/update-dependency-submodules.sh"

require_writable "${HOME}/csound"
require_writable "${root}"
require_writable "${HOME}/csound-cxx-opcodes"
require_writable "${HOME}/csound-vst3-opcodes"
require_writable "${HOME}/csound-vst3"
require_writable "${HOME}/csound-nwjs"
require_writable "${HOME}/csound-wasm"
require_writable "${HOME}/cloud-5"
require_writable "${HOME}/Library/Frameworks"

require_head "${HOME}/csound" develop
require_head "${root}" master
require_head "${HOME}/csound-cxx-opcodes" main
require_head "${HOME}/csound-vst3-opcodes" master
require_head "${HOME}/csound-vst3" main
require_head "${HOME}/csound-nwjs" main
require_head "${HOME}/csound-wasm" main
require_head "${HOME}/cloud-5" main

signing_env="${HOME}/csound-release-signing.env"
if [[ -z "${APPLE_CODESIGN_IDENTITY:-}" && -f "${signing_env}" ]]; then
    # shellcheck disable=SC1090
    source "${signing_env}"
fi

if [[ -z "${APPLE_CODESIGN_IDENTITY:-}" ]]; then
    echo "ERROR: APPLE_CODESIGN_IDENTITY is not set." >&2
    echo "Export it, or define it in ${signing_env}." >&2
    exit 1
fi

sign_cmake_args=(-DCSOUND_AC_ENABLE_CODESIGN=ON)
notarize="OFF"
if [[ "${GITHUB_ACTIONS:-}" == "true" ]]; then
    notarize="ON"
    if [[ -z "${APPLE_NOTARY_KEY:-}" || -z "${APPLE_NOTARY_KEY_ID:-}" || -z "${APPLE_NOTARY_ISSUER_ID:-}" ]]; then
        echo "ERROR: GitHub Actions notarization needs APPLE_NOTARY_KEY, APPLE_NOTARY_KEY_ID, and APPLE_NOTARY_ISSUER_ID." >&2
        exit 1
    fi
    sign_cmake_args+=(-DCSOUND_AC_ENABLE_NOTARIZATION=ON)
fi

echo "Codesign: ON (${APPLE_CODESIGN_IDENTITY})"
echo "Notarize: ${notarize}"

vst3_args=("${sign_cmake_args[@]}")
if [[ "${notarize}" == "ON" ]]; then
    # Match the release workflow: no Homebrew entitlement, then notarize.
    vst3_args=(--strict-codesign "${sign_cmake_args[@]}")
fi

run "1/8  Csound 7" \
    bash "${HOME}/csound-ac/external/build-csound7.sh"
verify_csound7_installed

run "2/8  CsoundAC" \
    bash -c 'cd "$1" && shift && bash ./build-macos.sh "$@"' _ "${root}" "${sign_cmake_args[@]}"
verify_csoundac_python_installed

run "3/8  csound-cxx-opcodes" \
    bash "${HOME}/csound-cxx-opcodes/clean-build-macos.bash" "${sign_cmake_args[@]}"

run "4/8  csound-vst3-opcodes" \
    bash -c 'cd "$1" && shift && git submodule update --init --recursive && bash ./clean-build-macos.bash "$@"' _ "${HOME}/csound-vst3-opcodes" "${sign_cmake_args[@]}"

run "5/8  csound-vst3" \
    bash -c 'cd "$1" && shift && git submodule update --init --recursive && bash ./CsoundVST3/clean-build-macos.bash "$@"' _ "${HOME}/csound-vst3" "${vst3_args[@]}"

run "6/8  csound-nwjs" \
    bash "${HOME}/csound-nwjs/rebuild.bash"

run "7/8  csound-wasm" \
    bash -c "cd '${HOME}/csound-wasm' && bash ./build-wasm.sh"

run "8/8  cloud-5" \
    bash -c "cd '${HOME}/cloud-5' && git submodule update --init --recursive && pnpm install && pnpm run build"

echo
echo "Finished the Csound 7, CsoundAC, and cloud-5 stack."
