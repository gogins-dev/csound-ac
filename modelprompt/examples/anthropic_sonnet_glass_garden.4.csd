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
;   3. Section I score, 4 slices   -> S (0 to giSec1End)
;   4. Section II score, 4 slices  -> S (giSec1End to giSec2End)
;   5. Section III score, 4 slices -> S (giSec2End to giFormEnd)
;   6. connected orchestra         -> modelprompt_orc (last)
;
; Form (240 seconds): tonic garden (G Dorian / D Aeolian) ->
;       prepare V of A -> A minor with Spark (sparse, then denser) ->
;       prepare return -> tonic with Pulse (isolated, heartbeat, thin close).
;       Voices layer on. Harmony is a bass Pad plus hanging tones, not a
;       round-robin of the set.

sr = 48000
ksmps = 32
nchnls = 2
0dbfs = 1

gSProvider = "anthropic"
gSModel = "claude-sonnet-5"

giComposeDone init 0
; Four slices per section. The score fills 240 seconds and the run ends there.
giSliceDur = 20
giSec1End  = 80
giSec2End  = 160
giFormEnd  = 240
giPerfEnd  = 240

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
    prints("ScoreNormSlice [%.1f,%.1f]: %d events, time shift %.2fs\n",
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
Invent a short poetic title (3 to 6 words) for a four-minute (240 second) stereo piece that
begins with glass chimes and soft pads, then is pierced by bright sparks
and finally by quick pulsing figures. Return only the title text,
no quotes or commentary.
}})
    prints("Title: %s\n\n", Stitle)

    ; ------------------------------------------------------------------
    ; 2) Pitch material (numeric array)
    ; ------------------------------------------------------------------
    ipchs:i[] = modelprompt(gSProvider, gSModel, {{
Return exactly 17 MIDI key numbers as a JSON array of numbers.
Home key: a quiet luminous mode on G Dorian or D Aeolian (NOT A minor).
Centered around MIDI 48 to 72, with one or two notes below 53 for bass color.
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
    ; A natural minor (A2 E3 A3 B3 C4 D4 E4 A4), contrasting destination key.
    SpitchesEmin = " 45.0 52.0 57.0 59.0 60.0 62.0 64.0 69.0"
    prints("A minor pitch set (MIDI):%s\n\n", SpitchesEmin)

    ; ------------------------------------------------------------------
    ; 3) Section I -- Glass + Pad (slow), four slices
    ;    One model call cannot fill a section at this density (responses truncate).
    ; ------------------------------------------------------------------
    Sscore1 = ""
    iwin = 0
    while iwin < 4 do
        it0 = iwin * giSliceDur
        it1 = it0 + giSliceDur
        Sharm1 = "Open on the tonic bass, as Hz, not the MIDI key. Halfway through this slice the bass rises a fifth. Upper Pad tones are chord tones of the bass that is sounding, and they change when the bass changes. Do not hold one bass for the whole slice. One Glass pitch is a toll."
        if iwin == 1 then
            Sharm1 = "A new chord at the start: the fourth of the home key. Before this slice ends, return to the tonic. Two different bass notes. Upper tones follow whichever bass is sounding."
        endif
        if iwin == 2 then
            Sharm1 = "Tonic for only a few seconds, then the bass moves to E (164.81 Hz) and B (246.94 Hz) enters. The turn toward A minor begins here. Upper tones follow the new bass. Do not stay on the opening chord."
        endif
        if iwin == 3 then
            Sharm1 = sprintf("The bass is already on E (164.81 Hz) at the start. Hang on E or B (246.94 Hz). Do not fall back to the tonic. A minor resolves at %.1f s.", giSec1End)
        endif
        iglo = 8 + iwin * 2
        ighi = 12 + iwin * 2
        Sseg = "OPENING. First events may start near 0 s."
        if iwin > 0 then
            Sseg = sprintf("SEGUE: no downbeat at %.1f. First Glass onset 1.0 to 2.7 s after %.1f, not a tutti. The new chord starts as the previous chord ends, with about a second of overlap. Do not carry the previous bass through this slice.", it0, it0)
        endif
        ; Csound 7 sprintf reallocs a negative size when a long result
        ; outgrows strlen(fmt)+13*nargs. Numbers only in short sprintf.
        Sprompt1 = {{
Write valid Csound i-statements for instruments Glass and Pad only.

TONIC MIDI pitch set (convert each to Hz; write the Hz number, not cpsmidinn):
}}
        Sprompt1 = strcat(Sprompt1, Spitches)
        Sprompt1 = strcat(Sprompt1, {{

A minor (destination, Hz): 110.00 164.81 220.00 246.94 261.63 293.66 329.63 440.00

}})
        Stmp = sprintf("This is slice %d of 4 of Section I, absolute time %.1f to %.1f.\n", iwin + 1, it0, it1)
        Sprompt1 = strcat(Sprompt1, Stmp)
        Sprompt1 = strcat(Sprompt1, {{
Harmony for THIS slice:
}})
        Sprompt1 = strcat(Sprompt1, Sharm1)
        Sprompt1 = strcat(Sprompt1, {{

Join:
}})
        Sprompt1 = strcat(Sprompt1, Sseg)
        Sprompt1 = strcat(Sprompt1, {{

}})
        Stmp = sprintf("TIMEBASE: p2 is ABSOLUTE time in [%.1f, %.1f].\nExample: i \"Glass\" %.2f 0.53 0.42 196.00\n", it0, it1, it0 + 0.2)
        Sprompt1 = strcat(Sprompt1, Stmp)
        Sprompt1 = strcat(Sprompt1, {{
p4 is amplitude in (0, 1]. p5 is a Hz literal (e.g. 196.00), never MIDI,
never cpsmidinn() or any expression. Four numbers after the quoted name.

TEMPO of Section I only: slow, about 40 beats a minute.
Glass onsets inside a phrase are 1.2 to 1.8 seconds apart.
Do not write anything closer than 0.9 seconds. This is not the fast
middle section and not the later heartbeat.
Write PHRASES, not a grid and not an up-down walk of the set:
- 3 to 5 short Glass phrases, each 2 to 4 notes, at that slow spacing.
- Repeat one Glass Hz as a toll (at least 3 times in this window).
- Each repeated Hz (the toll especially) must change duration: clearly shorter
  or clearly longer than the previous onset of that pitch. Never copy p3.
- Leave at least two gaps of 2.0 to 3.5 seconds with no Glass onset.
- Do not space onsets evenly. Do not list the pitch set in order.

Counts for THIS slice only:
}})
        Stmp = sprintf("- Glass: %d to %d chimes, durations 0.9 to 2.4.\n", iglo, ighi)
        Sprompt1 = strcat(Sprompt1, Stmp)
        Sprompt1 = strcat(Sprompt1, {{
- Pad: exactly 2 or 3 tones sounding. Two chords in this slice. Each lasts
  6 to 9 seconds, then the bass changes. Overlap the next chord by about a
  second. One Pad is the bass of that chord; the others match it.
- Emit Glass AND Pad.

p4: Glass 0.35-0.55, Pad 0.042-0.085.

Return only i-statements, one per line.
Each line MUST use a quoted name: i "Glass" start dur amp freq (or i "Pad").
Never write numeric instruments (i1, i2, i3, ...).
No comments, markdown, f-statements, or e-statement.
}})
        Sslice = modelprompt(gSProvider, gSModel, Sprompt1)
        prints("Section I slice %d (%.1f-%.1f):\n", iwin + 1, it0, it1)
        puts(Sslice, 1)
        Sslice = ScoreNormSlice(Sslice, it0, it1)
        Sscore1 = strcat(Sscore1, Sslice)
        Sscore1 = strcat(Sscore1, "\n")
        iwin += 1
    od

    ; ------------------------------------------------------------------
    ; 4) Section II -- Spark; A minor after resolving the first modulation.
    ; ------------------------------------------------------------------
    Sscore2 = ""
    iwin = 0
    while iwin < 4 do
        it0 = giSec1End + iwin * giSliceDur
        it1 = it0 + giSliceDur
        islo = 12
        ishi = 18
        iglo = 10
        ighi = 14
        Sharm2 = "Leave A. At the start the bass is D (146.83 Hz) or F (174.61 Hz). Before the slice ends it moves to a different chord. Upper tones are chord tones of the bass sounding then. Do not remain on A-C-E."
        if iwin == 0 then
            islo = 6
            ishi = 10
            iglo = 8
            ighi = 12
            Sharm2 = sprintf("RESOLVE to A minor at the join: bass A (110.00 Hz), upper tones C (261.63) and E (164.81 or 329.63). Halfway through, the bass leaves A for F (174.61 Hz) or D (146.83 Hz) and the upper tones move with it. Do not hold A-C-E for the whole slice. Spark is only just entering. Every p2 in [%.1f, %.1f). Forbidden: p2=0, p2=8, MIDI in p4 or p5.", it0, it1)
        endif
        if iwin == 2 then
            islo = 18
            ishi = 28
            iglo = 12
            ighi = 16
            Sharm2 = "A minor at the start (bass A, 110.00 Hz), then before the end the bass moves to E (164.81 Hz) and the upper tones follow. Densest Spark of the piece, still in groups of 2-3, never a constant grid, and never a silence."
        endif
        if iwin == 3 then
            islo = 10
            ishi = 16
            iglo = 8
            ighi = 12
            Sharm2 = sprintf("The return home starts now. Bass is D (146.83 Hz) from the beginning, then the fifth of the home key. Do not start on A. End hanging so the tonic can arrive at %.1f s. Spark thins. Every p2 in [%.1f, %.1f). Forbidden: p2=8, p4=50, p5=0.35.", giSec2End, it0, it1)
        endif
        Sseg = sprintf("SEGUE: no silence at %.1f. A Pad or Glass is already sounding. The bass changes with this slice. Do not keep the previous bass for the whole window. Glass continues.", it0)
        if iwin == 0 then
            Sseg = sprintf("SEGUE from Section I: no hard cut and no silence at %.1f. Glass or Pad is already sounding. Spark may enter with them. The bass arrives on A (110.00 Hz) at the join, and leaves A before the slice ends. Overlap the chords by about a second.", giSec1End)
        endif
        Sprompt2 = {{
Write a second-section slice as valid Csound i-statements.

Instruments allowed: Glass, Pad, and Spark.
Spark is a small brass bell -- pitched, ringing -- not a wood chime and not a grid of ticks.
Glass and Pad CONTINUE (do not stop when Spark enters).

TONIC MIDI set: }}
        Sprompt2 = strcat(Sprompt2, Spitches)
        Sprompt2 = strcat(Sprompt2, {{
A MINOR Hz (45 52 57 59 60 62 64 69 as 110.00 164.81 220.00 246.94 261.63 293.66 329.63 440.00).

}})
        Stmp = sprintf("This is slice %d of 4 of Section II, absolute time %.1f to %.1f.\n", iwin + 1, it0, it1)
        Sprompt2 = strcat(Sprompt2, Stmp)
        Sprompt2 = strcat(Sprompt2, {{
Harmony for THIS slice:
}})
        Sprompt2 = strcat(Sprompt2, Sharm2)
        Sprompt2 = strcat(Sprompt2, {{

Join:
}})
        Sprompt2 = strcat(Sprompt2, Sseg)
        Sprompt2 = strcat(Sprompt2, {{

}})
        Stmp = sprintf("TIMEBASE: p2 is ABSOLUTE performance time in [%.1f, %.1f].\nExample first event: i \"Spark\" %.2f 0.09 0.16 220.00\n", it0, it1, it0 + 0.17)
        Sprompt2 = strcat(Sprompt2, Stmp)
        Sprompt2 = strcat(Sprompt2, {{
i "Glass" 0.0 ... is WRONG (that plays at the start of the piece).
p4 is amplitude in (0, 1], never MIDI 36-84. p5 is Hz >= 40, never 0.35.
p5 is a numeric Hz literal, never a MIDI key and never cpsmidinn().
Four numbers after the name: i "Name" start dur amp freq. No comment lines.

TEMPO of Section II only: fast, clearly quicker than Section I.
Spark onsets inside a group are 0.09 to 0.16 seconds apart (a rattle,
about four times the pace of Section I).
Glass inside a phrase is 0.28 to 0.50 seconds apart, durations 0.18 to 0.45.
Do not use Section I's 1.2 to 1.8 second Glass spacing.
Do not leave any time in this slice with no note sounding. Between Spark
groups a Pad or Glass must already be sounding.
Rhythm -- groups, not a rate:
- Spark in groups of 2 or 3 at that fast spacing. The space between groups
  is filled by Pad or Glass, never by silence.
- Never a constant spacing. Never walk the eight A-minor pitches in order.
- Durations: never copy p3. Consecutive Spark or Glass notes, and any repeated
  Hz, must be clearly shorter or clearly longer than the previous one.

Counts for THIS slice only:
}})
        Stmp = sprintf("- Spark: %d to %d notes, durations 0.05 to 0.23.\n", islo, ishi)
        Sprompt2 = strcat(Sprompt2, Stmp)
        Stmp = sprintf("- Glass: %d to %d chimes in short phrases (not a scale run), durations 0.18 to 0.45.\n", iglo, ighi)
        Sprompt2 = strcat(Sprompt2, Stmp)
        Sprompt2 = strcat(Sprompt2, {{
- Pad: exactly 2 or 3 tones sounding. Two chords in this slice, each
  6 to 9 seconds, overlapped by about a second so the slice never goes
  silent. One Pad is the bass of that chord. The upper tones match the
  bass that is sounding then, and they change when the bass changes.
  Do not hold the previous chord over the new bass.
- Emit Spark, Glass, AND Pad. No silent gap.

p4: Spark 0.10-0.20, Glass 0.18-0.32, Pad 0.035-0.071.
}})
        Stmp = sprintf("Notes may ring a little past %.0f.\n", it1)
        Sprompt2 = strcat(Sprompt2, Stmp)
        Sprompt2 = strcat(Sprompt2, {{
Return only i-statements, one per line.
Each line MUST use a quoted name: i "Spark" start dur amp freq
(or i "Glass" / i "Pad"). Never write numeric instruments (i1, i2, i3, ...).
No comments, markdown, f-statements, or e-statement.
}})
        Sslice = modelprompt(gSProvider, gSModel, Sprompt2)
        prints("Section II slice %d (%.1f-%.1f):\n", iwin + 1, it0, it1)
        puts(Sslice, 1)
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
        it0 = giSec2End + iwin * giSliceDur
        it1 = it0 + giSliceDur
        iplo = 10
        iphi = 14
        islo = 6
        ishi = 10
        iglo = 8
        ighi = 12
        ipadn = 3
        Sharm3 = "Home key, and not one chord for the whole slice. Start on a neighbor of the tonic, then return to the tonic bass. That bass is the Hz of the opening tonic, the same frequency region as the opening, never the MIDI key written as Hz. Do not write 46, 53, 60, or 67 as p5. Pulse is a heartbeat, not an even clock."
        if iwin == 0 then
            iplo = 6
            iphi = 10
            islo = 8
            ishi = 12
            iglo = 8
            ighi = 12
            ipadn = 3
            Sharm3 = sprintf("RESOLVE to the opening tonic at the join. The bass Hz is that tonic's frequency, not its MIDI number. Do not write 46, 53, 60, or 67 as p5. Halfway through, the bass moves to the fifth of that tonic and the upper tones follow. Pulse enters as isolated long-short hits, not a continuous clock. Spark thins. Every p2 in [%.1f, %.1f). Forbidden: p2=60, p4=110, p5=0.35.", it0, it1)
        endif
        if iwin == 2 then
            iplo = 8
            iphi = 12
            islo = 4
            ishi = 8
            iglo = 6
            ighi = 10
            ipadn = 2
            Sharm3 = "Tonic, then one move to a neighbor chord, then the bass settles back. p5 is Hz, never a MIDI key. Pulse at half-time. Spark sparse. Glass more isolated."
        endif
        if iwin == 3 then
            iplo = 6
            iphi = 8
            islo = 0
            ishi = 4
            iglo = 4
            ighi = 8
            ipadn = 2
            Sharm3 = {{CLOSE on the opening tonic bass, as Hz, not the MIDI key. This last slice may hold that one chord. Thin, not a full inventory. Pulse in the bass only. Pad: 1 or 2 tones. Glass: isolated tolls. Spark: almost none (0 to 4). Leave holes. The piece should recede.}}
        endif
        Sseg = sprintf("SEGUE: no downbeat at %.1f. First Pulse or Glass 1.0 to 2.7 s after %.1f, not a tutti. The bass follows this slice. Do not freeze on the previous chord.", it0, it0)
        if iwin == 0 then
            Sseg = sprintf("SEGUE from Section II: no hard cut at %.1f. Glass continues. Pulse enters 1.3 to 3.3 s after %.1f as isolated hits. The Pad bass arrives on the opening tonic's Hz, not a MIDI number written as a frequency.", giSec2End, giSec2End)
        endif
        if iwin == 3 then
            Sseg = sprintf("CLOSE: thin out; do not start a new tutti at %.1f. Isolated events, overlapping Pads from the previous slice.", it0)
        endif
        Sprompt3 = {{
Write a third-section slice as valid Csound i-statements.

Instruments allowed: Glass, Pad, Spark, and Pulse.
Pulse is a gated square-wave (octave down) -- a heartbeat/clock, not a pad.
Layer Pulse under continuing Glass/Pad; Spark may thin or vanish in later slices.

TONIC MIDI set (write Hz literals, not cpsmidinn):
}}
        Sprompt3 = strcat(Sprompt3, Spitches)
        Sprompt3 = strcat(Sprompt3, {{
A minor Hz (leaving this key): 110.00 164.81 220.00 246.94 261.63 293.66 329.63 440.00

}})
        Stmp = sprintf("This is slice %d of 4 of Section III, absolute time %.1f to %.1f.\n", iwin + 1, it0, it1)
        Sprompt3 = strcat(Sprompt3, Stmp)
        Sprompt3 = strcat(Sprompt3, {{
Harmony for THIS slice:
}})
        Sprompt3 = strcat(Sprompt3, Sharm3)
        Sprompt3 = strcat(Sprompt3, {{

Join:
}})
        Sprompt3 = strcat(Sprompt3, Sseg)
        Sprompt3 = strcat(Sprompt3, {{

}})
        Stmp = sprintf("TIMEBASE: p2 is ABSOLUTE performance time in [%.1f, %.1f].\nExample first event: i \"Pulse\" %.2f 0.53 0.18 98.00\n", it0, it1, it0 + 0.17)
        Sprompt3 = strcat(Sprompt3, Stmp)
        Sprompt3 = strcat(Sprompt3, {{
i "Pulse" 0.0 ... or i "Pad" 60 ... is WRONG for this window.
p4 is amplitude in (0, 1], never MIDI. p5 is Hz >= 40, never 0.35.
p5 is a numeric Hz literal, never MIDI, never cpsmidinn().
Four numbers after the name. No comment lines.

TEMPO of Section III only: a slow heartbeat, slower than Section I's
phrases and nothing like Section II's rattle.
Pulse long-short pairs: the short gap is 0.55 to 0.75 seconds, the long
gap is 1.8 to 2.6 seconds, then a hole of 3.0 to 5.0 seconds with no Pulse.
Glass tolls are isolated, 3.0 to 6.0 seconds apart, durations 1.6 to 3.4.
Do not write Spark onsets 0.09 to 0.16 seconds apart except as a rare
leftover of two notes. Do not use Section I's 1.2 to 1.8 second phrases
as the Pulse.
Rhythm -- not an even grid:
- Pulse as those long-short pairs, then the hole. Prefer bass pitches.
- Do not space Pulse evenly. Do not walk the pitch set in order.
- Durations: never copy p3. Consecutive Pulse, Glass, or Spark notes, and any
  repeated Hz, must be clearly shorter or clearly longer than the previous one.

Counts for THIS slice only:
}})
        Stmp = sprintf("- Pulse: %d to %d notes, durations 0.7 to 1.8. If this is the close, keep them\n  in the bass with holes.\n", iplo, iphi)
        Sprompt3 = strcat(Sprompt3, Stmp)
        Stmp = sprintf("- Spark: %d to %d (zero is allowed if the range includes 0).\n", islo, ishi)
        Sprompt3 = strcat(Sprompt3, Stmp)
        Stmp = sprintf("- Glass: %d to %d chimes as phrases or isolated tolls, not a scale run.\n", iglo, ighi)
        Sprompt3 = strcat(Sprompt3, Stmp)
        Stmp = sprintf("- Pad: at most %d tones sounding. Each chord lasts 6 to 9 seconds, except the final slice, which may hold the tonic. p5 is Hz, never a MIDI key.\n", ipadn)
        Sprompt3 = strcat(Sprompt3, Stmp)
        Sprompt3 = strcat(Sprompt3, {{
  One Pad is the BASS.
- Do not emit a full inventory if the counts above are small.

p4: Pulse 0.14-0.24, Spark 0.08-0.16, Glass 0.18-0.32, Pad 0.035-0.071.
}})
        Stmp = sprintf("Notes may ring a little past %.1f; the piece rings to ~%.0f.\n", it1, giFormEnd)
        Sprompt3 = strcat(Sprompt3, Stmp)
        Sprompt3 = strcat(Sprompt3, {{
Return only i-statements, one per line.
Each line MUST use a quoted name: i "Pulse" start dur amp freq
(or i "Spark" / i "Glass" / i "Pad"). Never write numeric instruments
(i1, i2, i3, ...).
No comments, markdown, f-statements, or e-statement.
}})
        Sslice = modelprompt(gSProvider, gSModel, Sprompt3)
        prints("Section III slice %d (%.1f-%.1f):\n", iwin + 1, it0, it1)
        puts(Sslice, 1)
        Sslice = ScoreNormSlice(Sslice, it0, it1)
        Sscore3 = strcat(Sscore3, Sslice)
        Sscore3 = strcat(Sscore3, "\n")
        iwin += 1
    od

    ; ------------------------------------------------------------------
    ; 6) Orchestra graph last (compile + alwayson FX)
    ; ------------------------------------------------------------------
    Sorc = modelprompt_orc(gSProvider, gSModel, {{
Write one Csound orchestra fragment. The host already has blank instruments
named Glass, Pad, Spark, Pulse, Echo, Reverb, and Master. Redefine those
seven instruments and wire them. Do not add other instruments.

Return only instr/endin blocks, connect statements, and alwayson statements.
No markdown, no commentary, no score, no f-statements.
The first line of your response must be: instr Glass
Do not write any statement before the first instr.

Opcodes, exact forms that compile in this Csound:
- A single click is mpulse with TWO arguments: mpulse 1, 0
  There is no opcode named impulse. One-argument mpulse does not compile.
- A square wave is audio-rate only. Write exactly:
  aSig vco2 iamp, ifreq*0.5, 2, 0.18
  The name on the left must start with a. vco2 has no k-rate output.
  kSq vco2 does not compile (the only form is a vco2 kkoOOo).
  The fourth argument is pulse width, between 0.01 and 0.99.
- The Pulse gate is a smoothed square, not a hard multiply and not vco2.
  A raw square (lfo amplitude 1, or any jump through zero) clicks.
  Write exactly:
  kRaw lfo 0.5, 4, 3
  kUni = 0.5 + kRaw
  kGate port kUni, 0.018
  kUni stays between 0 and 1. port rounds each edge in about 18 ms.
  Do not multiply the tone by an unsmoothed lfo. Do not call vco2 at k-rate.
- Do not soft-clip. Do not use tanh. There is no opcode named taninh.
- Pad oscillators are oscili with TWO arguments only:
  aOsc oscili iamp, ifreq
  Pad has no function table. Do not use poscil, oscil, or table.
  A third argument is a table number and fails at init.
- Lowpass is butlp or butterlp. Bandpass resonators are reson with scaling 2.
- Envelopes are linen, linseg, expon, or port. Spark's water bell may also use transeg and xtratim. Do not invent opcode names.
  port is kres port ksig, ihtim. The note envelope on Pulse must be audio-rate.
- Echo uses vdelay. Its time arguments are MILLISECONDS, not seconds:
  adel vdelay ain, ktime_ms, 2000
  The third argument is an init-time maximum of 2000 milliseconds.
  ktime_ms must stay between 80 and 1500. A value of 0.64 is under one
  millisecond and is silent as a delay; write 640 for a 0.64 second repeat.
  Do not use the delay opcode for Echo. The tiny fixed pan offsets on Glass
  and Spark may still use delay with a time of at least 0.001 seconds.
  0.0004 is shorter than one control period and can fail to init.
  The delay opcode is in seconds; vdelay is in milliseconds.

Rules for every instrument:
- The first line inside each instr is exactly: PrintPfields
- Note instruments read iamp = p4 (amplitude, already 0 to 1) and ifreq = p5 (Hz).
- Do not call outs. Do not use the mode opcode.
- Note instruments send stereo with outleta "leftout" and outleta "rightout".
- Effect instruments read inleta "leftin" and inleta "rightin".
- Do not name any audio signal aX. That name breaks the right-channel outleta path.
- Do not call prints or nstrstr yourself; PrintPfields already does that.

Glass -- bamboo wood chime, not a bell and not brass.
Excite with mpulse 1, 0 plus a noise burst that dies in about 10 ms.
Five reson filters (scaling mode 2), high Q, inharmonic bar partials near
1.00, 2.76, 5.40, 8.93, and 13.3 times ifreq. Bandwidths are a few tenths
of a percent of each partial, widening slightly as the partial rises.
Partials fall off fast (fundamental full, top partial near 0.05).
Exponential ring over the whole note (p3), down to about 0.001 of iamp.
Scale the sum by 0.88. Pan left: left channel full level, right channel
about 0.40 delayed by a fraction of a millisecond. Do not use eight partials.

Pad -- soft detuned chorale, not a bell.
Three oscili tones, two arguments each, no table number:
  aOsc1 oscili iamp, ifreq*0.995
  aOsc2 oscili iamp, ifreq*1.005
  aOsc3 oscili iamp, ifreq*2
Do not write poscil. Do not pass a function-table number.
Linen envelope, attack and release each about 0.35 of p3.
Send a different oscillator mix to each channel.
Scale by 0.355.
0.355 is 2 dB above 0.282. Write 0.355. Do not write 0.282.
Do not change the Glass scale. Spark stays at 0.493.
Duck only this voice (and Pulse) with a gain from times.
The piece is 240 seconds. Do not divide these times by 1.5:
full level until 115 seconds, then fall across 10 seconds so the
level is multiplied by 0.20 (about 14 dB down) and stays there until
158 seconds, then rise across 16 seconds back to full by 174.
Opening and close stay loud. Do not duck Glass or Spark.

Spark -- Steven Yi's Water Bell. Not a wood chime, not Glass, not reson.
Do not use mpulse. Do not use reson. Do not use Glass's bar partials.
It is an FM bell on cosine waves. The only table in the piece is this one,
created inside Spark:
  icos ftgenonce 0, 0, 65537, 11, 1
Then, exactly:
  aTone fmbell 1, ifreq, 0.5, 0.5, 0.05, 6, icos, icos, icos, icos, icos
Index 0.5 and crossfade 0.5. Vibrato depth 0.05 at 6 Hz.
A very fast rise, then a long smooth fall, so a short score note still rings:
  xtratim 6
  aEnv transeg 0, 0.002, 6, 1, 6, -6, 0
  aSig = aTone * aEnv * iamp * 0.493
0.493 is 5 dB below 0.876. Write 0.493. Do not write 0.876.
Do not give Spark a 2.2 second expon.
Pan right: left channel about 0.40, right channel full, with a fraction
of a millisecond of delay on the right.

Pulse -- a gated square wave, a clock, never a sine pad.
The tone is audio-rate, exactly:
  aSig vco2 iamp, ifreq*0.5, 2, 0.18
then a lowpass around 2.8 times ifreq.
The note envelope is audio-rate and starts and ends at silence, so the
pulse wave does not click at the note boundary:
  aEnv linen 1, 0.03, p3, 0.07
Do not use a k-rate linen for this voice. Do not use an attack shorter than 0.025.
The gate still chops, but its edges are rounded. Write exactly:
  kRaw lfo 0.5, 4, 3
  kUni = 0.5 + kRaw
  kGate port kUni, 0.018
kRaw is bipolar, so kUni is 0 to 1. Do not use lfo 1, 4, 3.
Do not multiply by kRaw or by any unsmoothed square. Multiply by kGate and aEnv.
Do not write kSq vco2. Do not use vco2 as the gate.
Scale by 0.035, then the same times-based duck as Pad.
0.035 is 5 dB below 0.062. Write 0.035. Do not write 0.062.
Slightly louder on the right than the left.
This voice must stay articulated, so it does not go through the delay.

Echo -- stereo delay, each side feeds only itself. No cross-feedback, no ping-pong.
The piece is 240 seconds: section I is 0-80, section II is 80-160,
section III is 160-240. Each section keeps one delay, then changes.
The three sections must be easy to hear apart: a long blooming echo,
then a short echo that dies quickly, then a wide contrary echo.
Each side is its own vdelay. Times are milliseconds. Maximum is 2000.
  aLfb init 0
  aLdel vdelay aLeftIn + aLfb * kFb, kLeft, 2000
  aLfb = aLdel
and the same for the right side with kRight. Do not multiply the delay
time by 0.001. Do not pass a time below 80.
kWet is the level of the delayed signal:
  aLout = aLeftIn * (1 - kWet) + aLdel * kWet
  aRout = aRightIn * (1 - kWet) + aRdel * kWet
kFb is the decay. Higher feedback rings for many repeats. Lower feedback
dies after a few repeats. Write the four linsegs exactly. Each holds its
value for 70 seconds, moves across the section boundary in 10 seconds,
and holds the next value. Left and right are never equal. No LFO and no
rand; do not glide the time through the whole section.
  kLeft linseg 1200, 70, 1200, 10, 180, 70, 180, 10, 1500, 80, 1500
  kRight linseg 480, 70, 480, 10, 860, 70, 860, 10, 260, 80, 260
  kWet linseg 0.78, 70, 0.78, 10, 0.45, 70, 0.45, 10, 0.70, 80, 0.70
  kFb linseg 0.94, 70, 0.94, 10, 0.58, 70, 0.58, 10, 0.80, 80, 0.80
Section I (0-80): left 1200 ms, right 480 ms, wet 0.78, feedback 0.94
(long repeats). Section II (80-160): left 180 ms, right 860 ms, wet 0.45,
feedback 0.58 (short decay, still a delay). Section III (160-240): left
1500 ms, right 260 ms, wet 0.70, feedback 0.80. Do not reuse one time
for the whole piece. Do not keep feedback above 0.9 in every section.
outleta "leftout", aLout and outleta "rightout", aRout.

Reverb -- reverbsc, feedback near 0.90, cutoff near 12000 Hz.
Wet mix near 0.42, blended with the dry input.
Name the reverb outputs aRevL and aRevR, never aX.
outleta "leftout" and "rightout".

Master -- linear gain only. No soft clip, so each note keeps its own amplitude.
Do not use tanh. Do not write taninh. Write exactly:
  aOutL = aLeftIn * 4.0 * kfade
  aOutR = aRightIn * 4.0 * kfade
4.0 is the same gain on every voice. It puts the peak about 6 dB below full scale.
Do not write 2.0. Do not multiply the input by 4 inside a clip.
Do not change the Glass, Pad, Spark, or Pulse scales. Glass stays at 0.88. Pad stays at 0.355. Spark stays at 0.493. Pulse stays at 0.035.
The performance is 240 seconds. A linseg named kfade holds at 1 until
222 seconds, then falls to 0 over 18 seconds, reaching silence at 240.
Do not divide by 1.5. Do not fade before 222.
Write the dac with outc. Do not use outs.

Signal graph, both channels each:
Glass into Echo. Spark into Echo.
Pulse into Reverb (not Echo). Pad into Reverb.
Echo into Reverb. Reverb into Master.
alwayson "Echo", alwayson "Reverb", alwayson "Master".
Do not alwayson the note instruments.
}})

    prints("Compiled orchestra:\n")
    puts(Sorc, 1)

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
