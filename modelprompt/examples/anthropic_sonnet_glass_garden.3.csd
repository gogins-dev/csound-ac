<CsoundSynthesizer>
<CsOptions>
-odac -d -m160
</CsOptions>
<CsInstruments>

; Glass Garden -- a small generative showcase for modelprompt.
;
; Requires:
;   export ANTHROPIC_API_KEY=...
;   modelprompt plugin on OPCODE7DIR64 / CS_USER_PLUGINDIR
;
; Run:
;   csound anthropic_sonnet_glass_garden.3.csd
;
; Caching (default auto): omit iregenerate to reuse caches after the first run
; when the prompt text is unchanged. Editing a prompt generates a new response.
; Pass iregenerate=1 on a call to force a fresh model response.
; Pass iregenerate=0 to require a cache hit (fail if missing).
;
; Pipeline (up to 6 model-call *kinds*; score sections are sliced):
;   1. poetic title                -> S
;   2. pitch set                   -> i[]
;   3. Section I score, 4 slices   -> S (0-80 s)
;   4. Section II score, 4 slices  -> S (80-160 s), sync so events exist at t=0
;   5. Section III score, 4 slices -> S (160-240 s), sync so Pulse is not late
;   6. connected orchestra         -> modelprompt_orc (last)
;
; Form (~4 minutes): tonic garden -> prepare V of E -> E minor with Spark
;       (Spark enters sparse, then denser) -> prepare return -> tonic with
;       Pulse (isolated, then heartbeat, then thin close). Voices layer on.
;       Harmony is a bass Pad plus hanging tones, not a round-robin of the set.

sr = 48000
ksmps = 32
nchnls = 2
0dbfs = 1

gSProvider = "anthropic"
gSModel = "claude-sonnet-5"

giComposeDone init 0
; Last onsets ~240 s, pads up to 16 s, then delay/reverb tails and a fade.
giPerfEnd = 285

opcode PrintPfields, 0, 0
    prints "%-24s i %9.4f t %9.4f d %9.4f p4 %9.4f p5 %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, active(p1)
endop

; scoreline / scorelinei do not treat ';' as a comment. Never send comment
; lines to them. This opcode drops those lines only.
opcode ScoreNoComments, S, S
    Sin xin
    Sout = ""
    iscan = 0
    ilen = strlen(Sin)
    while iscan < ilen do
        Srest = strsub(Sin, iscan)
        inl = strindex(Srest, "\n")
        if inl < 0 then
            Sline = Srest
            iscan = ilen
        else
            Sline = strsub(Srest, 0, inl)
            iscan = iscan + inl + 1
        endif
        ij = 0
        iln = strlen(Sline)
        icont = 1
        while ij < iln && icont == 1 do
            ic = strchar(Sline, ij)
            if ic == 32 || ic == 9 || ic == 13 then
                ij += 1
            else
                icont = 0
            endif
        od
        if ij < iln then
            if strchar(Sline, ij) != 59 then
                Sout = strcat(Sout, strsub(Sline, ij))
                Sout = strcat(Sout, "\n")
            endif
        endif
    od
    xout Sout
endop

; Keep every i-statement. Shift a local 0-N clock into [it0, it1],
; map i1..i4 to names, and put amplitude in p4 / Hz in p5.
opcode ScoreNormSlice, S, Sii
    Sin, it0, it1 xin
    ivoice[] init 256
    istart[] init 256
    idur[] init 256
    iampv[] init 256
    ifreqv[] init 256
    invals[] init 8
    inev = 0
    iscan = 0
    ilen = strlen(Sin)
    while iscan < ilen do
        Srest = strsub(Sin, iscan)
        inl = strindex(Srest, "\n")
        if inl < 0 then
            Sline = Srest
            iscan = ilen
        else
            Sline = strsub(Srest, 0, inl)
            iscan = iscan + inl + 1
        endif
        ij = 0
        iln = strlen(Sline)
        icont = 1
        while ij < iln && icont == 1 do
            ic = strchar(Sline, ij)
            if ic == 32 || ic == 9 || ic == 13 then
                ij += 1
            else
                icont = 0
            endif
        od
        if ij < iln then
            if strchar(Sline, ij) == 105 && inev < 256 then
                ipos = ij + 1
                ivo = 0
                Snm = ""
                if ipos < iln then
                    ic = strchar(Sline, ipos)
                    if ic >= 48 && ic <= 57 then
                        in0 = ipos
                        icontn = 1
                        while ipos < iln && icontn == 1 do
                            ic = strchar(Sline, ipos)
                            if ic >= 48 && ic <= 57 then
                                ipos += 1
                            else
                                icontn = 0
                            endif
                        od
                        ivo = strtod(strsub(Sline, in0, ipos))
                    else
                        icont = 1
                        while ipos < iln && icont == 1 do
                            ic = strchar(Sline, ipos)
                            if ic == 32 || ic == 9 then
                                ipos += 1
                            else
                                icont = 0
                            endif
                        od
                        if ipos < iln then
                            ic = strchar(Sline, ipos)
                            if ic == 34 then
                                ipos += 1
                                in0 = ipos
                                icontn = 1
                                while ipos < iln && icontn == 1 do
                                    if strchar(Sline, ipos) == 34 then
                                        icontn = 0
                                    else
                                        ipos += 1
                                    endif
                                od
                                Snm = strsub(Sline, in0, ipos)
                                if ipos < iln then
                                    ipos += 1
                                endif
                            elseif ic >= 48 && ic <= 57 then
                                in0 = ipos
                                icontn = 1
                                while ipos < iln && icontn == 1 do
                                    ic = strchar(Sline, ipos)
                                    if ic >= 48 && ic <= 57 then
                                        ipos += 1
                                    else
                                        icontn = 0
                                    endif
                                od
                                ivo = strtod(strsub(Sline, in0, ipos))
                            else
                                in0 = ipos
                                icontn = 1
                                while ipos < iln && icontn == 1 do
                                    ic = strchar(Sline, ipos)
                                    if (ic >= 65 && ic <= 90) || (ic >= 97 && ic <= 122) then
                                        ipos += 1
                                    else
                                        icontn = 0
                                    endif
                                od
                                Snm = strsub(Sline, in0, ipos)
                            endif
                            if ivo == 0 then
                                if strcmp(Snm, "Glass") == 0 then
                                    ivo = 1
                                elseif strcmp(Snm, "Pad") == 0 then
                                    ivo = 2
                                elseif strcmp(Snm, "Spark") == 0 then
                                    ivo = 3
                                elseif strcmp(Snm, "Pulse") == 0 then
                                    ivo = 4
                                endif
                            endif
                        endif
                    endif
                endif
                incount = 0
                imore = 1
                while imore == 1 do
                    icont = 1
                    while ipos < iln && icont == 1 do
                        ic = strchar(Sline, ipos)
                        if ic == 32 || ic == 9 || ic == 13 then
                            ipos += 1
                        else
                            icont = 0
                        endif
                    od
                    imore = 0
                    if ipos < iln && incount < 8 then
                        ic = strchar(Sline, ipos)
                        if (ic >= 48 && ic <= 57) || ic == 46 || ic == 45 || ic == 43 then
                            in0 = ipos
                            icontn = 1
                            while ipos < iln && icontn == 1 do
                                ic = strchar(Sline, ipos)
                                if (ic >= 48 && ic <= 57) || ic == 46 || ic == 45 || ic == 43 || ic == 101 || ic == 69 then
                                    ipos += 1
                                else
                                    icontn = 0
                                endif
                            od
                            invals[incount] = strtod(strsub(Sline, in0, ipos))
                            incount += 1
                            imore = 1
                        endif
                    endif
                od
                if ivo >= 1 && ivo <= 4 && incount >= 1 then
                    ist = invals[0]
                    idu = 0.5
                    iamp = 0.4
                    ifq = 220
                    if incount == 2 then
                        idu = invals[1]
                    elseif incount == 3 then
                        idu = invals[1]
                        ix = invals[2]
                        if ix > 1 then
                            ifq = ix
                        else
                            iamp = ix
                        endif
                    else
                        idu = invals[1]
                        iamp = invals[2]
                        ifq = invals[3]
                    endif
                    if iamp > 1 && ifq <= 1 then
                        isw = iamp
                        iamp = ifq
                        ifq = isw
                    endif
                    if iamp >= 36 && iamp <= 84 && ifq <= 1 then
                        ifq = iamp
                        iamp = 0.4
                        if incount >= 5 then
                            if invals[4] > 0 && invals[4] <= 1 then
                                iamp = invals[4]
                            endif
                        endif
                    endif
                    if ifq >= 36 && ifq <= 84 then
                        if abs(ifq - int(ifq + 0.5)) < 0.02 then
                            ifq = cpsmidinn(ifq)
                        endif
                    endif
                    if iamp > 1 then
                        iamp = 0.4
                    endif
                    if iamp < 0.001 then
                        iamp = 0.4
                    endif
                    if ifq < 20 then
                        ifq = 110
                    endif
                    if idu < 0.02 then
                        idu = 0.02
                    endif
                    ivoice[inev] = ivo
                    istart[inev] = ist
                    idur[inev] = idu
                    iampv[inev] = iamp
                    ifreqv[inev] = ifq
                    inev += 1
                endif
            endif
        endif
    od
    ioff = 0
    if inev > 0 then
        imin = istart[0]
        imax = istart[0]
        ix = 1
        while ix < inev do
            if istart[ix] < imin then
                imin = istart[ix]
            endif
            if istart[ix] > imax then
                imax = istart[ix]
            endif
            ix += 1
        od
        if imax < it0 then
            ioff = it0 - imin
        endif
    endif
    Sout = ""
    ix = 0
    while ix < inev do
        ist = istart[ix]
        if ioff != 0 then
            ist = ist + ioff
        endif
        Snm = "Glass"
        if ivoice[ix] == 2 then
            Snm = "Pad"
        elseif ivoice[ix] == 3 then
            Snm = "Spark"
        elseif ivoice[ix] == 4 then
            Snm = "Pulse"
        endif
        Sout = strcat(Sout, sprintf("i \"%s\" %.4f %.4f %.4f %.4f\n",
              Snm, ist, idur[ix], iampv[ix], ifreqv[ix]))
        ix += 1
    od
    prints("ScoreNormSlice [%.0f,%.0f]: %d events, time shift %.2fs\n",
           it0, it1, inev, ioff)
    xout Sout
endop

; Number sounding instruments first so compiled Glass/Pad/Spark/Pulse
; occupy 1-4. Then leftover numeric i1/i2/i3 from the model hit those
; voices instead of Compose. modelprompt_orc redefines the
; bodies in place.
instr Glass
    PrintPfields
endin
instr Pad
    PrintPfields
endin
instr Spark
    PrintPfields
endin
instr Pulse
    PrintPfields
endin
instr Echo
    PrintPfields
endin
instr Reverb
    PrintPfields
endin
instr Master
    PrintPfields
endin

instr Compose
    PrintPfields
    if giComposeDone != 0 igoto ComposeSkip
    giComposeDone = 1

    prints("\n=== Glass Garden: composing with %s / %s ===\n\n",
           gSProvider, gSModel)

    ; ------------------------------------------------------------------
    ; 1) Title (string)
    ; ------------------------------------------------------------------
    Stitle = modelprompt(gSProvider, gSModel, {{
Invent a short poetic title (3 to 6 words) for a four-minute stereo piece that
begins with glass chimes and soft pads, then is pierced by bright sparks
and finally by quick pulsing figures. Return only the title text,
no quotes or commentary.
}})
    prints("Title: %s\n\n", Stitle)

    ; ------------------------------------------------------------------
    ; 2) Pitch material (numeric array)
    ; ------------------------------------------------------------------
    ipchs:i[] = modelprompt(gSProvider, gSModel, {{
Return exactly 8 MIDI key numbers as a JSON array of numbers.
Home key: a quiet luminous mode on D Dorian or A Aeolian (NOT E minor).
Centered around MIDI 60 to 76, with one or two notes below 60 for bass color.
No duplicate consecutive values. Return only the JSON array.
}})

    ilen = lenarray(ipchs)
    prints("Pitch set (%d MIDI keys):", ilen)
    indx = 0
    while indx < ilen do
        prints(" %.1f", ipchs[indx])
        indx += 1
    od
    prints("\n\n")

    Spitches = ""
    indx = 0
    while indx < ilen do
        Stmp = sprintf("%s %.1f", Spitches, ipchs[indx])
        Spitches = Stmp
        indx += 1
    od
    ; E natural minor (E3 B3 E4 F#4 G4 A4 B4 E5), contrasting destination key.
    SpitchesEmin = " 52.0 59.0 64.0 66.0 67.0 69.0 71.0 76.0"
    prints("E minor pitch set (MIDI):%s\n\n", SpitchesEmin)

    ; ------------------------------------------------------------------
    ; 3) Section I -- Glass + Pad (slow), four 20 s slices
    ;    One model call cannot fill 80 s at this density (responses truncate).
    ; ------------------------------------------------------------------
    Sscore1 = ""
    iwin = 0
    while iwin < 4 do
        it0 = iwin * 20
        it1 = it0 + 20
        Sharm1 = "TONIC. Bass Pad is the lowest tonic pitch as Hz. One Glass pitch is a toll (repeat it). Do not modulate."
        if iwin == 1 then
            Sharm1 = "TONIC. Bass still the lowest tonic pitch as Hz. Continue the garden; the toll pitch may change."
        endif
        if iwin == 2 then
            Sharm1 = "TONIC. Bass lowest tonic as Hz. Slightly busier than the previous slice, still phrases and holes."
        endif
        if iwin == 3 then
            Sharm1 = {{PREPARE E minor, do not cadence in E. Start in the tonic. Bass Pad moves to B (246.94 Hz) or B under tonic. Introduce F# (369.99 Hz). End hanging on B (246.94 or 493.88) or F# so E can resolve at 80 s. Mix tonic pitches with E-minor 164.81 246.94 329.63 369.99 392.00 440.00 493.88 659.26.}}
        endif
        iglo = 8 + iwin * 2
        ighi = 12 + iwin * 2
        Sseg = "OPENING. First events may start near 0 s."
        if iwin > 0 then
            Sseg = sprintf("SEGUE from the previous 20 s: no downbeat or reset at %.0f. First Glass onset 1.5 to 4 s after %.0f, not a tutti at the join. Do not start all Pads at %.0f; stagger replacements. Pad durations 12 to 18 so they overlap past %.0f into the next slice. Keep the same bass Hz unless harmony below moves it. Continue the garden; do not begin a new piece.", it0, it0, it0, it1)
        endif
        Sprompt1 = sprintf({{
Write valid Csound i-statements for instruments Glass and Pad only.

TONIC MIDI pitch set (convert each to Hz; write the Hz number, not cpsmidinn):
%s

E minor (destination, Hz): 164.81 246.94 329.63 369.99 392.00 440.00 493.88 659.26

This is slice %d of 4 of Section I, absolute time %.0f to %.0f.

Harmony for THIS slice:
%s

Join:
%s

TIMEBASE: p2 is ABSOLUTE time in [%.0f, %.0f].
Example: i "Glass" %.2f 0.8 0.42 293.66
p4 is amplitude in (0, 1]. p5 is a Hz literal (e.g. 293.66), never MIDI,
never cpsmidinn() or any expression. Four numbers after the quoted name.

Write PHRASES, not a grid and not an up-down walk of the set:
- 3 to 5 short Glass phrases, each 2 to 4 notes.
- Repeat one Glass Hz as a toll (at least 3 times in this window).
- Leave at least two gaps of 1 to 2 seconds with no Glass onset.
- Do not space onsets evenly. Do not list the pitch set in order.

Counts for THIS slice only:
- Glass: %d to %d chimes, durations 0.5 to 1.8.
- Pad: exactly 2 or 3 tones (never more than 3 sounding). Durations 12 to 18
  so they overlap the next slice. One Pad is the BASS of the window.
- Emit Glass AND Pad.

p4: Glass 0.35-0.55, Pad 0.042-0.085.

Return only i-statements, one per line.
Each line MUST use a quoted name: i "Glass" start dur amp freq (or i "Pad").
Never write numeric instruments (i1, i2, i3, ...).
No comments, markdown, f-statements, or e-statement.
}}, Spitches, iwin + 1, it0, it1, Sharm1, Sseg, it0, it1, it0 + 0.3, iglo, ighi)
        Sslice = modelprompt(gSProvider, gSModel, Sprompt1)
        prints("Section I slice %d (%.0f-%.0f):\n%s\n", iwin + 1, it0, it1, Sslice)
        Sslice = ScoreNormSlice(Sslice, it0, it1)
        Sscore1 = strcat(Sscore1, Sslice)
        Sscore1 = strcat(Sscore1, "\n")
        iwin += 1
    od

    ; ------------------------------------------------------------------
    ; 4) Section II -- Spark; E minor after resolving the first modulation.
    ; ------------------------------------------------------------------
    Sscore2 = ""
    iwin = 0
    while iwin < 4 do
        it0 = 80 + iwin * 20
        it1 = it0 + 20
        islo = 12
        ishi = 18
        iglo = 10
        ighi = 14
        Sharm2 = "Remain in E MINOR. Bass Pad is E (164.81 Hz). Use only E-minor Hz (include F# 369.99, no F natural). Do not walk the eight pitches in order."
        if iwin == 0 then
            islo = 6
            ishi = 10
            iglo = 8
            ighi = 12
            Sharm2 = {{RESOLVE into E minor at the opening (cadence or settle on E-G-B). Bass Pad is E (164.81 Hz). Then stay in E minor. Spark is only just entering -- a few groups, not a grid. Every p2 in [80, 100). Forbidden: p2=0, p2=8, MIDI in p4 or p5.}}
        endif
        if iwin == 2 then
            islo = 18
            ishi = 28
            iglo = 12
            ighi = 16
            Sharm2 = "Remain in E MINOR. Bass Pad is E (164.81 Hz). Densest Spark of the piece, still in groups of 2-3 with gaps, never a constant grid."
        endif
        if iwin == 3 then
            islo = 10
            ishi = 16
            iglo = 8
            ighi = 12
            Sharm2 = {{PREPARE return to the TONIC, do not cadence yet. Start in E minor. Bass Pad moves toward A (220.00 Hz) or mixes tonic-set bass. Spark thins. End hanging so the tonic can cadence at 160 s. Every p2 in [140, 160). Forbidden: p2=8, p4=50, p5=0.35.}}
        endif
        Sseg = sprintf("SEGUE: no downbeat at %.0f. First Spark/Glass 1.5 to 4 s after %.0f, not a tutti. Stagger Pads; durations 12 to 18 to overlap %.0f. Keep bass E unless harmony below moves it. Glass continues from the previous slice.", it0, it0, it1)
        if iwin == 0 then
            Sseg = sprintf("SEGUE from Section I: no hard cut at 80. Glass continues. Spark enters 2 to 5 s after 80, not a pile-up at 80.0. Pad bass may move to E (164.81) as a continuation, not a new chorale. Pad durations 12 to 18 overlapping 100.")
        endif
        Sprompt2 = sprintf({{
Write a second-section slice as valid Csound i-statements.

Instruments allowed: Glass, Pad, and Spark.
Spark is a brass finger-cymbal / wind-chime -- pitched, ringing -- not a grid of ticks.
Glass and Pad CONTINUE (do not stop when Spark enters).

TONIC MIDI set: %s
E MINOR Hz (52 59 64 66 67 69 71 76 as 164.81 246.94 329.63 369.99 392.00 440.00 493.88 659.26).

This is slice %d of 4 of Section II, absolute time %.0f to %.0f.

Harmony for THIS slice:
%s

Join:
%s

TIMEBASE: p2 is ABSOLUTE performance time in [%.0f, %.0f].
Example first event: i "Spark" %.2f 0.14 0.16 329.63
i "Glass" 0.0 ... is WRONG (that plays at the start of the piece).
p4 is amplitude in (0, 1], never MIDI 50-76. p5 is Hz >= 40, never 0.35.
p5 is a numeric Hz literal, never a MIDI key and never cpsmidinn().
Four numbers after the name: i "Name" start dur amp freq. No comment lines.

Rhythm -- groups, not a rate:
- Spark in groups of 2 or 3 onsets 0.12 to 0.28 s apart, then a gap of 0.8 to 1.8 s.
- Never a constant spacing. Never walk the eight E-minor pitches in order.

Counts for THIS slice only:
- Spark: %d to %d notes, durations 0.08 to 0.35.
- Glass: %d to %d chimes in short phrases (not a scale run), durations 0.5 to 1.8.
- Pad: exactly 2 or 3 tones (never more than 3 sounding). Durations 12 to 18
  so they overlap the next slice. One Pad is the BASS.
- Emit Spark, Glass, AND Pad.

p4: Spark 0.10-0.20, Glass 0.18-0.32, Pad 0.035-0.071.
Notes may ring a little past %.0f.

Return only i-statements, one per line.
Each line MUST use a quoted name: i "Spark" start dur amp freq
(or i "Glass" / i "Pad"). Never write numeric instruments (i1, i2, i3, ...).
No comments, markdown, f-statements, or e-statement.
}}, Spitches, iwin + 1, it0, it1, Sharm2, Sseg, it0, it1, it0 + 0.25, islo, ishi, iglo, ighi, it1)
        Sslice = modelprompt(gSProvider, gSModel, Sprompt2)
        prints("Section II slice %d (%.0f-%.0f):\n%s\n", iwin + 1, it0, it1, Sslice)
        Sslice = ScoreNormSlice(Sslice, it0, it1)
        Sscore2 = strcat(Sscore2, Sslice)
        Sscore2 = strcat(Sscore2, "\n")
        iwin += 1
    od

    ; ------------------------------------------------------------------
    ; 5) Section III -- resolve to tonic; Pulse is a gated pulse (not a pad).
    ; ------------------------------------------------------------------
    Sscore3 = ""
    iwin = 0
    while iwin < 4 do
        it0 = 160 + iwin * 20
        it1 = it0 + 20
        iplo = 10
        iphi = 14
        islo = 6
        ishi = 10
        iglo = 8
        ighi = 12
        ipadn = 3
        Sharm3 = "Remain in the TONIC. Bass Pad is the lowest tonic pitch as Hz. Pulse is a heartbeat (long-short), not an even clock."
        if iwin == 0 then
            iplo = 6
            iphi = 10
            islo = 8
            ishi = 12
            iglo = 8
            ighi = 12
            ipadn = 3
            Sharm3 = {{RESOLVE to the TONIC. Bass Pad is the lowest tonic pitch as Hz. Pulse ENTERS as isolated long-short hits in the tonic bass, not a continuous clock. Spark is thinning. Every p2 in [160, 180). Forbidden: p2=60, p4=110, p5=0.35.}}
        endif
        if iwin == 2 then
            iplo = 8
            iphi = 12
            islo = 4
            ishi = 8
            iglo = 6
            ighi = 10
            ipadn = 2
            Sharm3 = "TONIC. Bass lowest tonic as Hz. Pulse at half-time (slower, more space). Spark sparse. Glass more isolated."
        endif
        if iwin == 3 then
            iplo = 6
            iphi = 8
            islo = 0
            ishi = 4
            iglo = 4
            ighi = 8
            ipadn = 2
            Sharm3 = {{CLOSE in the TONIC. Thin, not a full inventory. Pulse in the bass only (lowest tonic Hz). Pad: 1 or 2 tones, tonic bass only. Glass: isolated tolls. Spark: almost none (0 to 4). Leave holes. The piece should recede.}}
        endif
        Sseg = sprintf("SEGUE: no downbeat at %.0f. First Pulse/Glass 1.5 to 4 s after %.0f, not a tutti. Stagger Pads; durations 12 to 18 overlapping %.0f. Keep the same tonic bass unless harmony below moves it.", it0, it0, it1)
        if iwin == 0 then
            Sseg = "SEGUE from Section II: no hard cut at 160. Glass continues. Pulse enters 2 to 5 s after 160 as isolated hits, not a pile-up. Pad bass may return to the lowest tonic as a continuation."
        endif
        if iwin == 3 then
            Sseg = "CLOSE: thin out; do not start a new tutti at 220. Isolated events, overlapping Pads from the previous slice."
        endif
        Sprompt3 = sprintf({{
Write a third-section slice as valid Csound i-statements.

Instruments allowed: Glass, Pad, Spark, and Pulse.
Pulse is a gated square-wave (octave down) -- a heartbeat/clock, not a pad.
Layer Pulse under continuing Glass/Pad; Spark may thin or vanish in later slices.

TONIC MIDI set (write Hz literals, not cpsmidinn):
%s
E minor Hz (leaving this key): 164.81 246.94 329.63 369.99 392.00 440.00 493.88 659.26

This is slice %d of 4 of Section III, absolute time %.0f to %.0f.

Harmony for THIS slice:
%s

Join:
%s

TIMEBASE: p2 is ABSOLUTE performance time in [%.0f, %.0f].
Example first event: i "Pulse" %.2f 0.8 0.18 146.83
i "Pulse" 0.0 ... or i "Pad" 60 ... is WRONG for this window.
p4 is amplitude in (0, 1], never MIDI. p5 is Hz >= 40, never 0.35.
p5 is a numeric Hz literal, never MIDI, never cpsmidinn().
Four numbers after the name. No comment lines.

Rhythm -- not an even grid:
- Pulse as long-short pairs (clave/heartbeat), then a gap. Prefer bass pitches.
- Do not space Pulse every 0.8 to 1.1 s evenly. Do not walk the pitch set in order.

Counts for THIS slice only:
- Pulse: %d to %d notes, durations 0.5 to 2. If this is the close, keep them
  in the bass with holes.
- Spark: %d to %d (zero is allowed if the range includes 0).
- Glass: %d to %d chimes as phrases or isolated tolls, not a scale run.
- Pad: at most %d tones sounding (1 to 3). Durations 12 to 18 to overlap.
  One Pad is the BASS.
- Do not emit a full inventory if the counts above are small.

p4: Pulse 0.14-0.24, Spark 0.08-0.16, Glass 0.18-0.32, Pad 0.035-0.071.
Notes may ring a little past %.0f; the piece rings to ~240.

Return only i-statements, one per line.
Each line MUST use a quoted name: i "Pulse" start dur amp freq
(or i "Spark" / i "Glass" / i "Pad"). Never write numeric instruments
(i1, i2, i3, ...).
No comments, markdown, f-statements, or e-statement.
}}, Spitches, iwin + 1, it0, it1, Sharm3, Sseg, it0, it1, it0 + 0.25, iplo, iphi, islo, ishi, iglo, ighi, ipadn, it1)
        Sslice = modelprompt(gSProvider, gSModel, Sprompt3)
        prints("Section III slice %d (%.0f-%.0f):\n%s\n", iwin + 1, it0, it1, Sslice)
        Sslice = ScoreNormSlice(Sslice, it0, it1)
        Sscore3 = strcat(Sscore3, Sslice)
        Sscore3 = strcat(Sscore3, "\n")
        iwin += 1
    od

    ; ------------------------------------------------------------------
    ; 6) Orchestra graph last (compile + alwayson FX)
    ; ------------------------------------------------------------------
    Sorc = modelprompt_orc(gSProvider, gSModel, {{
Return ONLY the following Csound orchestra, with at most small numeric
tweaks to frequencies, bandwidths, delay time, or wet mixes. Do not invent
new opcodes. Do not use mode. Do not use outs. No markdown or commentary.
Keep every PrintPfields line. Do not remove prints or nstrstr.
Pulse MUST be a gated square-wave (vco2 mode 2) an octave down with an lfo
square gate -- rhythmic on/off, never a slow sine pad. Keep mix Pulse * 0.00955.
Keep these mix scales exactly: Pad * 0.178, Spark * 1.76, Pulse * 0.00955,
Glass * 0.88. Do not change those constants.
Keep the Glass chime/wineglass design (high-Q bar modes, long expon ring).
Do not revert Glass to eight loud clangorous partials.
Keep Spark as pitched brass wind-chimes / finger cymbals: high-Q metal ring
at p5, long decay (~2 s), mix * 1.76. Do not make Spark bamboo or FM.
Pan Glass left (left 1, right 0.40) and Spark right (left 0.40, right 1).
Do not center Glass or Spark.
Connect Pulse to Reverb (not Echo) so the gate stays articulated.
Keep Echo feedback high (ifb 0.82 or above). Delayed repeats must fade slowly
so textures accumulate over the four-minute form. Do not lower ifb below 0.75.
Echo must delay each side independently (no cross-feedback, no ping-pong).
Keep Master's kfade linseg that holds until 268 s then fades to 0 over 17 s.
Keep Pad and Pulse kgain from times: full level through 115 s, 14 dB down
(multiply 0.20) from 125-158 s (middle to about two-thirds), restored by 174 s.
Do not apply kgain to Glass or Spark. Opening and close stay at full Pad/Pulse.
instr Glass
  ; Struck wineglass / small chime: inharmonic bar modes, high Q, long ring.
  PrintPfields
  iamp = p4
  ifreq = p5
  aclk expon 1, 0.01, 0.001
  astrike rand 1
  aexc mpulse 1, 0
  aexc = aexc + astrike * aclk * 0.18
  a1 reson aexc, ifreq * 1.000, ifreq * 0.0016, 2
  a2 reson aexc, ifreq * 2.756, ifreq * 0.0024, 2
  a3 reson aexc, ifreq * 5.404, ifreq * 0.0040, 2
  a4 reson aexc, ifreq * 8.933, ifreq * 0.0065, 2
  a5 reson aexc, ifreq * 13.34, ifreq * 0.0110, 2
  aenv expon iamp, p3, iamp * 0.001
  asig = (a1*1.00 + a2*0.48 + a3*0.22 + a4*0.10 + a5*0.05) * aenv * 0.88
  aL = asig * 1.00
  aR delay asig * 0.40, 0.00023
  outleta "leftout", aL
  outleta "rightout", aR
endin

instr Pad
  PrintPfields
  iamp = p4
  ifreq = p5
  aenv linen iamp, p3 * 0.35, p3, p3 * 0.35
  a1 oscili 0.45, ifreq * 0.997
  a2 oscili 0.45, ifreq * 1.003
  a3 oscili 0.25, ifreq * 2.001
  ktime times
  kdown limit (ktime - 115) / 10, 0, 1
  kup limit (ktime - 158) / 16, 0, 1
  kgain = 1 - 0.80 * kdown * (1 - kup)
  aL = (a1 + a3) * aenv * 0.178 * kgain
  aR = (a2 + a3) * aenv * 0.178 * kgain
  outleta "leftout", aL
  outleta "rightout", aR
endin

instr Spark
  ; Brass wind-chime / finger cymbal: pitched at p5, high Q, long metal ring.
  PrintPfields
  iamp = p4
  ifreq = p5
  iring = 2.2
  if p3 > iring then
    iring = p3
  endif
  aexc mpulse 1, 0
  a1 reson aexc, ifreq * 1.000, ifreq * 0.0007, 2
  a2 reson aexc, ifreq * 2.003, ifreq * 0.0010, 2
  a3 reson aexc, ifreq * 2.714, ifreq * 0.0015, 2
  a4 reson aexc, ifreq * 3.011, ifreq * 0.0018, 2
  a5 reson aexc, ifreq * 4.084, ifreq * 0.0028, 2
  aenv expon iamp, iring, iamp * 0.001
  asig = (a1*1.00 + a2*0.90 + a3*0.32 + a4*0.38 + a5*0.18) * aenv * 1.76
  aL = asig * 0.40
  aR delay asig * 1.00, 0.00041
  outleta "leftout", aL
  outleta "rightout", aR
endin

instr Pulse
  ; Gated pulse wave an octave down -- a clock, not a pad. Dry into Reverb.
  PrintPfields
  iamp = p4
  ifreq = p5
  aenv linen iamp, 0.012, p3, 0.05
  apulse vco2 0.55, ifreq * 0.5, 2, 0.18
  afilt butterlp apulse, ifreq * 2.8
  kgate lfo 0.5, 2.7, 3
  agate = 0.08 + (0.5 + kgate) * 0.92
  ktime times
  kdown limit (ktime - 115) / 10, 0, 1
  kup limit (ktime - 158) / 16, 0, 1
  kgain = 1 - 0.80 * kdown * (1 - kup)
  asig = afilt * aenv * agate * 0.00955 * kgain
  outleta "leftout", asig * 0.90
  outleta "rightout", asig * 1.10
endin

instr Echo
  ; Stereo delay, each side feeds itself. Not ping-pong.
  PrintPfields
  aL inleta "leftin"
  aR inleta "rightin"
  ifb = 0.82
  iwet = 0.52
  aLfb init 0
  aRfb init 0
  aLfb delay aL + aLfb * ifb, 0.36
  aRfb delay aR + aRfb * ifb, 0.41
  aOutL = aL * (1 - iwet) + aLfb * iwet
  aOutR = aR * (1 - iwet) + aRfb * iwet
  outleta "leftout", aOutL
  outleta "rightout", aOutR
endin

instr Reverb
  ; Do not name reverb signals aX -- that identifier breaks the right outleta path.
  PrintPfields
  aL inleta "leftin"
  aR inleta "rightin"
  aRevL, aRevR reverbsc aL, aR, 0.90, 12000
  iwet = 0.42
  aOutL = aL * (1 - iwet) + aRevL * iwet
  aOutR = aR * (1 - iwet) + aRevR * iwet
  outleta "leftout", aOutL
  outleta "rightout", aOutR
endin

instr Master
  PrintPfields
  aL inleta "leftin"
  aR inleta "rightin"
  kfade linseg 1, 268, 1, 17, 0
  aOutL = tanh(aL * 4) * kfade
  aOutR = tanh(aR * 4) * kfade
  outc aOutL, aOutR
endin

connect "Glass", "leftout", "Echo", "leftin"
connect "Glass", "rightout", "Echo", "rightin"
connect "Spark", "leftout", "Echo", "leftin"
connect "Spark", "rightout", "Echo", "rightin"
connect "Pulse", "leftout", "Reverb", "leftin"
connect "Pulse", "rightout", "Reverb", "rightin"
connect "Pad", "leftout", "Reverb", "leftin"
connect "Pad", "rightout", "Reverb", "rightin"
connect "Echo", "leftout", "Reverb", "leftin"
connect "Echo", "rightout", "Reverb", "rightin"
connect "Reverb", "leftout", "Master", "leftin"
connect "Reverb", "rightout", "Master", "rightin"
alwayson "Echo"
alwayson "Reverb"
alwayson "Master"
}})

    prints("Compiled orchestra:\n%s\n", Sorc)

    scorelinei(ScoreNoComments(Sscore1))
    scorelinei(ScoreNoComments(Sscore2))
    scorelinei(ScoreNoComments(Sscore3))
    prints("All three sections are in the score.\n\n")
    event("e", 0, giPerfEnd)
ComposeSkip:
endin

schedule("Compose", 0, 1)

</CsInstruments>
<CsScore>
</CsScore>
</CsoundSynthesizer>
