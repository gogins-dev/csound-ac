<CsoundSynthesizer>
<CsOptions>
-odac -d -m161
</CsOptions>
<CsInstruments>

; Glass Garden -- a small generative showcase for modelprompt.
;
; Requires:
;   export ANTHROPIC_API_KEY=...
;   modelprompt plugin on OPCODE7DIR64 / CS_USER_PLUGINDIR
;
; Run:
;   csound anthropic_sonnet_glass_garden.csd
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
; Form (~4 minutes): tonic garden -> prepare -> E minor with Spark ->
;       prepare return -> tonic with Pulse. Each new voice is layered on.

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
        Sharm1 = "Remain in the TONIC. Use only the tonic MIDI set. Do not modulate."
        if iwin == 3 then
            Sharm1 = {{PREPARE a modulation to E minor (do not cadence in E yet). Start the slice in the tonic. Then introduce F# (MIDI 66) and emphasize B (59 and 71) as V of E. End the window hanging on B or F# so E minor can resolve at 80 s. p5 may mix tonic pitches with E-minor pitches 52 59 64 66 67 69 71 76.}}
        endif
        Sprompt1 = sprintf({{
Write valid Csound i-statements for instruments Glass and Pad only.

TONIC MIDI pitch set (convert each to Hz with cpsmidinn):
%s

E minor MIDI set (destination key): 52 59 64 66 67 69 71 76

This is slice %d of 4 of Section I. Fill THIS 20-second window only.

Harmony for THIS slice:
%s

Constraints:
- Onset times from %.0f to %.0f seconds (absolute). First onset within 0.5 s of %.0f;
  last onset within 1 s of %.0f. Distribute evenly; do not cluster at the start.
- About 16 to 24 Glass notes: short chimes (durations 0.5 to 1.8).
- About 6 to 10 Pad notes: longer tones (durations 8 to 16) that overlap so the
  pad bed never drops out in this window.
- Emit Glass AND Pad (not Pad only). Finish the full note list.
- p4 amplitudes: Glass 0.35-0.55 (prominent chimes), Pad 0.042-0.085 (3 dB softer than 0.06-0.12).
- p5 must be frequency in Hz (not MIDI).
- Slow, sparse garden tempo -- leave space between events.
- Prefer gentle rising and falling shapes through the pitch set.

Return only i-statements, one per line.
Each line MUST use a quoted name: i "Glass" start dur amp freq (or i "Pad").
Never write numeric instruments (i1, i2, i3, ...).
No comments, markdown, f-statements, or e-statement.
}}, Spitches, iwin + 1, Sharm1, it0, it1, it0, it1)
        Sslice = modelprompt(gSProvider, gSModel, Sprompt1)
        prints("Section I slice %d (%.0f-%.0f):\n%s\n", iwin + 1, it0, it1, Sslice)
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
        Sharm2 = "Remain in E MINOR. Use only the E minor MIDI set (include F#, no F natural)."
        if iwin == 0 then
            Sharm2 = {{RESOLVE the modulation into E minor at the opening (the previous slice prepared V of E). Cadence or settle on E-G-B, then use ONLY the E minor set for the rest of this window.}}
        endif
        if iwin == 3 then
            Sharm2 = {{PREPARE the return to the TONIC (do not fully resolve yet). Start in E minor, then reintroduce tonic-set pitches and the tonic's dominant. End hanging so the tonic can cadence at 160 s.}}
        endif
        Sprompt2 = sprintf({{
Write a second-section slice as valid Csound i-statements.

Instruments allowed: Glass, Pad, and Spark.
Spark is a bright, short metallic attack -- sonically opposite the soft Pad.
Glass and Pad must CONTINUE throughout this slice (not stop when Spark enters).

TONIC MIDI set: %s
E MINOR MIDI set (52 59 64 66 67 69 71 76). Convert chosen MIDI to Hz with cpsmidinn.

This is slice %d of 4 of Section II. Fill THIS 20-second window only.

Harmony for THIS slice:
%s

TIMEBASE: p2 is ABSOLUTE performance time in [%.0f, %.0f].
Example first event: i "Spark" %.2f 0.12 0.14 329.63
i "Glass" 0.0 ... is WRONG (that plays at the start of the piece).
p4 is amplitude in (0, 1], never MIDI 50-76. p5 is Hz >= 40, never 0.35.
p5 is a numeric Hz literal (e.g. 329.63), never a MIDI key number
and never cpsmidinn() or any expression. Four numbers after the name:
i "Name" start dur amp freq. No comment lines. i-statements only.

Constraints:
- Absolute onset times from %.0f to %.0f. First onset within 0.5 s of %.0f;
  last onset within 1 s of %.0f. Distribute evenly; do not cluster at the start.
- Spark is the lead: about 32 to 44 Spark notes, durations 0.08 to 0.35,
  quicker successive onsets than Section I.
- Continuity: about 16 to 24 Glass chimes plus 6 to 8 overlapping Pad tones
  (durations 8-16 so the pad bed never drops out).
- Emit Spark, Glass, AND Pad. Finish the full list (do not stop after Pad).
- p4: Spark 0.10-0.20, Glass 0.18-0.32, Pad 0.035-0.071 (3 dB softer than 0.05-0.10).
- p5 in Hz. Notes may ring a little past %.0f.
- Return only i-statements, one per line.
- Each line MUST use a quoted name: i "Spark" start dur amp freq
  (or i "Glass" / i "Pad"). Never write numeric instruments (i1, i2, i3, ...).
- No comments, markdown, f-statements, or e-statement.
}}, Spitches, iwin + 1, Sharm2, it0, it1, it0 + 0.25, it0, it1, it0, it1, it1)
        Sslice = modelprompt(gSProvider, gSModel, Sprompt2)
        prints("Section II slice %d (%.0f-%.0f):\n%s\n", iwin + 1, it0, it1, Sslice)
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
        Sharm3 = "Remain in the TONIC. Use only the tonic MIDI set."
        if iwin == 0 then
            Sharm3 = {{RESOLVE the return to the TONIC at the opening (the previous slice prepared the dominant). Cadence or settle in the tonic set, then stay there. Pulse in the bass of the tonic. Do not remain in E minor.}}
        endif
        Sprompt3 = sprintf({{
Write a third-section slice as valid Csound i-statements.

Instruments allowed: Glass, Pad, Spark, and Pulse.
Pulse is a gated square-wave pulse (octave down, on/off chopping) -- not a pad
and not a swell. It must sound like a heartbeat/clock, distinct from Pad.
Glass, Pad, and Spark must CONTINUE throughout this slice (layered under Pulse).
Pulse must be clearly audible. Every slice MUST include many i "Pulse" lines.

TONIC MIDI set (convert to Hz with cpsmidinn):
%s
E minor MIDI set (leaving this key): 52 59 64 66 67 69 71 76

This is slice %d of 4 of Section III. Fill THIS 20-second window only.

Harmony for THIS slice:
%s

TIMEBASE: p2 is ABSOLUTE performance time in [%.0f, %.0f].
Example first event: i "Pulse" %.2f 0.8 0.18 146.83
i "Pulse" 0.0 ... or i "Pad" 60 ... is WRONG for this window.
p4 is amplitude in (0, 1], never MIDI 50-76. p5 is Hz >= 40, never 0.35.
p5 is a numeric Hz literal (e.g. 146.83), never a MIDI key number
and never cpsmidinn() or any expression. Four numbers after the name:
i "Name" start dur amp freq. No comment lines. i-statements only.

Constraints:
- Absolute onset times from %.0f to %.0f. First onset within 0.5 s of %.0f;
  last onset within 1 s of %.0f. Distribute evenly; do not cluster at the start.
- Pulse is the lead: about 18 to 25 Pulse notes, durations 0.5 to 2, with
  onsets about 0.8 to 1.1 s apart (2x slower than 36-50 notes at 0.25-1 s).
  Every slice MUST contain Pulse events.
- Pulse notes are short gated hits, not slow swells: durations 0.5 to 2,
  but the instrument itself chops; prefer lower (bass/tenor) pitches.
- Continuity:
  - Pad: 6 to 8 overlapping long tones (durations 8-16).
  - Glass: about 16 to 24 chimes.
  - Spark: about 16 to 24 accents (slightly less dense than Section II).
- Emit Pulse, Spark, Glass, AND Pad. Finish the full list.
- p4: Pulse 0.14-0.24 (audible gated hits), Spark 0.08-0.16,
  Glass 0.18-0.32, Pad 0.035-0.071 (Pad 3 dB softer than 0.05-0.10).
- p5 in Hz. Notes may ring a little past %.0f; the piece rings to ~240.
- Return only i-statements, one per line.
- Each line MUST use a quoted name: i "Pulse" start dur amp freq
  (or i "Spark" / i "Glass" / i "Pad"). Never write numeric instruments
  (i1, i2, i3, ...).
- No comments, markdown, f-statements, or e-statement.
}}, Spitches, iwin + 1, Sharm3, it0, it1, it0 + 0.25, it0, it1, it0, it1, it1)
        Sslice = modelprompt(gSProvider, gSModel, Sprompt3)
        prints("Section III slice %d (%.0f-%.0f):\n%s\n", iwin + 1, it0, it1, Sslice)
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
square gate -- rhythmic on/off, never a slow sine pad. Keep mix Pulse * 0.12.
Keep these mix scales exactly: Pad * 0.708, Spark * 0.494, Pulse * 0.12,
Glass * 0.88. Do not change those constants.
Keep the Glass chime/wineglass design (high-Q bar modes, long expon ring).
Do not revert Glass to eight loud clangorous partials.
Connect Pulse to Reverb (not Echo) so the gate stays articulated.
Keep Echo feedback high (ifb 0.82 or above). Delayed repeats must fade slowly
so textures accumulate over the four-minute form. Do not lower ifb below 0.75.
Keep Master's kfade linseg that holds until 268 s then fades to 0 over 17 s.
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
  aL = asig
  aR delay asig, 0.00023
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
  aL = (a1 + a3) * aenv * 0.708
  aR = (a2 + a3) * aenv * 0.708
  outleta "leftout", aL
  outleta "rightout", aR
endin

instr Spark
  ; Bright, short metallic contrast to Pad (FM-ish + noise tick).
  PrintPfields
  iamp = p4
  ifreq = p5
  aenv expon iamp, p3, iamp * 0.001
  amod oscili ifreq * 2.7, ifreq * 5.13
  acar oscili 0.7, ifreq + amod
  aclick mpulse 1, 0
  aclick = reson(aclick, ifreq * 6.0, ifreq * 0.4, 2) * 0.15
  asig = (acar + aclick) * aenv * 0.494
  aL = asig * 0.85
  aR = asig * 1.0
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
  asig = afilt * aenv * agate * 0.12
  outleta "leftout", asig * 0.90
  outleta "rightout", asig * 1.10
endin

instr Echo
  ; Stereo feedback delay. High feedback so repeats fade slowly and stack.
  PrintPfields
  aL inleta "leftin"
  aR inleta "rightin"
  idel = 0.36
  ifb = 0.82
  iwet = 0.52
  aLfb init 0
  aRfb init 0
  aLfb delay aL + aRfb * ifb, idel
  aRfb delay aR + aLfb * ifb, idel
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

    scorelinei(Sscore1)
    scorelinei(Sscore2)
    scorelinei(Sscore3)
    prints("All three sections are in the score.\n\n")
    event("e", 0, giPerfEnd)
ComposeSkip:
endin

schedule("Compose", 0, 1)

</CsInstruments>
<CsScore>
</CsScore>
</CsoundSynthesizer>
