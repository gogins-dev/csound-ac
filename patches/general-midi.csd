<CsoundSynthesizer>
<CsLicense>
General MIDI orchestra in pure Csound
Copyright (C) 2026 by Michael Gogins

This file implements the 128 General MIDI melodic programs and the
General MIDI percussion key map using only Csound opcodes: no samples,
no plugins, no external files. Every instrument follows the conventions
of the .inc patches in this directory:

  p1  instrument name            p2  onset time (seconds)
  p3  duration (seconds; -1 holds, struck sounds use their own decay)
  p4  MIDI key (middle C = 60)   p5  MIDI velocity (0..127)
  p6  front to back (unused)     p7  left to right (0..1; 0 = default pan)
  p8  bottom to top (unused)     p9  phase (unused)

Melodic instruments are named GM_<General MIDI name> with every run of
characters that are not letters or digits replaced by one underscore
(Csound does not permit "-" in instrument names), for example
GM_Acoustic_Grand_Piano, GM_Honky_tonk_Piano, GM_Lead_1_square,
GM_Acoustic_Guitar_nylon. The percussion kit is GM_Standard_Kit; its p4
is the General MIDI percussion key, 35 (Acoustic Bass Drum) to 81 (Open
Triangle).

Each instrument has global controls just above its definition:
gk_<name>_level (dB), gk_<name>_midi_dynamic_range (dB),
gk_<name>_space_left_to_right (default pan), and timbre parameters
specific to that instrument. All instruments are connected to ReverbSC
and then to MasterOutput with the signal flow graph opcodes.

The score is a mid-tempo swing tune in which every General MIDI program
takes a turn, over a rhythm section of GM_Acoustic_Grand_Piano,
GM_Acoustic_Bass, and GM_Standard_Kit.

This file is part of CsoundAC and is licensed under the terms of the
GNU Lesser General Public License, version 2.1 or later.
</CsLicense>
<CsOptions>
-d -m162 -odac
</CsOptions>
<CsInstruments>
sr = 48000
ksmps = 64
nchnls = 2
0dbfs = 1
seed 29193


;;;; Signal flow graph

connect "GM_Acoustic_Grand_Piano", "outleft", "ReverbSC", "inleft"
connect "GM_Acoustic_Grand_Piano", "outright", "ReverbSC", "inright"
connect "GM_Bright_Acoustic_Piano", "outleft", "ReverbSC", "inleft"
connect "GM_Bright_Acoustic_Piano", "outright", "ReverbSC", "inright"
connect "GM_Electric_Grand_Piano", "outleft", "ReverbSC", "inleft"
connect "GM_Electric_Grand_Piano", "outright", "ReverbSC", "inright"
connect "GM_Honky_tonk_Piano", "outleft", "ReverbSC", "inleft"
connect "GM_Honky_tonk_Piano", "outright", "ReverbSC", "inright"
connect "GM_Electric_Piano_1", "outleft", "ReverbSC", "inleft"
connect "GM_Electric_Piano_1", "outright", "ReverbSC", "inright"
connect "GM_Electric_Piano_2", "outleft", "ReverbSC", "inleft"
connect "GM_Electric_Piano_2", "outright", "ReverbSC", "inright"
connect "GM_Harpsichord", "outleft", "ReverbSC", "inleft"
connect "GM_Harpsichord", "outright", "ReverbSC", "inright"
connect "GM_Clavi", "outleft", "ReverbSC", "inleft"
connect "GM_Clavi", "outright", "ReverbSC", "inright"
connect "GM_Celesta", "outleft", "ReverbSC", "inleft"
connect "GM_Celesta", "outright", "ReverbSC", "inright"
connect "GM_Glockenspiel", "outleft", "ReverbSC", "inleft"
connect "GM_Glockenspiel", "outright", "ReverbSC", "inright"
connect "GM_Music_Box", "outleft", "ReverbSC", "inleft"
connect "GM_Music_Box", "outright", "ReverbSC", "inright"
connect "GM_Vibraphone", "outleft", "ReverbSC", "inleft"
connect "GM_Vibraphone", "outright", "ReverbSC", "inright"
connect "GM_Marimba", "outleft", "ReverbSC", "inleft"
connect "GM_Marimba", "outright", "ReverbSC", "inright"
connect "GM_Xylophone", "outleft", "ReverbSC", "inleft"
connect "GM_Xylophone", "outright", "ReverbSC", "inright"
connect "GM_Tubular_Bells", "outleft", "ReverbSC", "inleft"
connect "GM_Tubular_Bells", "outright", "ReverbSC", "inright"
connect "GM_Dulcimer", "outleft", "ReverbSC", "inleft"
connect "GM_Dulcimer", "outright", "ReverbSC", "inright"
connect "GM_Drawbar_Organ", "outleft", "ReverbSC", "inleft"
connect "GM_Drawbar_Organ", "outright", "ReverbSC", "inright"
connect "GM_Percussive_Organ", "outleft", "ReverbSC", "inleft"
connect "GM_Percussive_Organ", "outright", "ReverbSC", "inright"
connect "GM_Rock_Organ", "outleft", "ReverbSC", "inleft"
connect "GM_Rock_Organ", "outright", "ReverbSC", "inright"
connect "GM_Church_Organ", "outleft", "ReverbSC", "inleft"
connect "GM_Church_Organ", "outright", "ReverbSC", "inright"
connect "GM_Reed_Organ", "outleft", "ReverbSC", "inleft"
connect "GM_Reed_Organ", "outright", "ReverbSC", "inright"
connect "GM_Accordion", "outleft", "ReverbSC", "inleft"
connect "GM_Accordion", "outright", "ReverbSC", "inright"
connect "GM_Harmonica", "outleft", "ReverbSC", "inleft"
connect "GM_Harmonica", "outright", "ReverbSC", "inright"
connect "GM_Tango_Accordion", "outleft", "ReverbSC", "inleft"
connect "GM_Tango_Accordion", "outright", "ReverbSC", "inright"
connect "GM_Acoustic_Guitar_nylon", "outleft", "ReverbSC", "inleft"
connect "GM_Acoustic_Guitar_nylon", "outright", "ReverbSC", "inright"
connect "GM_Acoustic_Guitar_steel", "outleft", "ReverbSC", "inleft"
connect "GM_Acoustic_Guitar_steel", "outright", "ReverbSC", "inright"
connect "GM_Electric_Guitar_jazz", "outleft", "ReverbSC", "inleft"
connect "GM_Electric_Guitar_jazz", "outright", "ReverbSC", "inright"
connect "GM_Electric_Guitar_clean", "outleft", "ReverbSC", "inleft"
connect "GM_Electric_Guitar_clean", "outright", "ReverbSC", "inright"
connect "GM_Electric_Guitar_muted", "outleft", "ReverbSC", "inleft"
connect "GM_Electric_Guitar_muted", "outright", "ReverbSC", "inright"
connect "GM_Overdriven_Guitar", "outleft", "ReverbSC", "inleft"
connect "GM_Overdriven_Guitar", "outright", "ReverbSC", "inright"
connect "GM_Distortion_Guitar", "outleft", "ReverbSC", "inleft"
connect "GM_Distortion_Guitar", "outright", "ReverbSC", "inright"
connect "GM_Guitar_harmonics", "outleft", "ReverbSC", "inleft"
connect "GM_Guitar_harmonics", "outright", "ReverbSC", "inright"
connect "GM_Acoustic_Bass", "outleft", "ReverbSC", "inleft"
connect "GM_Acoustic_Bass", "outright", "ReverbSC", "inright"
connect "GM_Electric_Bass_finger", "outleft", "ReverbSC", "inleft"
connect "GM_Electric_Bass_finger", "outright", "ReverbSC", "inright"
connect "GM_Electric_Bass_pick", "outleft", "ReverbSC", "inleft"
connect "GM_Electric_Bass_pick", "outright", "ReverbSC", "inright"
connect "GM_Fretless_Bass", "outleft", "ReverbSC", "inleft"
connect "GM_Fretless_Bass", "outright", "ReverbSC", "inright"
connect "GM_Slap_Bass_1", "outleft", "ReverbSC", "inleft"
connect "GM_Slap_Bass_1", "outright", "ReverbSC", "inright"
connect "GM_Slap_Bass_2", "outleft", "ReverbSC", "inleft"
connect "GM_Slap_Bass_2", "outright", "ReverbSC", "inright"
connect "GM_Synth_Bass_1", "outleft", "ReverbSC", "inleft"
connect "GM_Synth_Bass_1", "outright", "ReverbSC", "inright"
connect "GM_Synth_Bass_2", "outleft", "ReverbSC", "inleft"
connect "GM_Synth_Bass_2", "outright", "ReverbSC", "inright"
connect "GM_Violin", "outleft", "ReverbSC", "inleft"
connect "GM_Violin", "outright", "ReverbSC", "inright"
connect "GM_Viola", "outleft", "ReverbSC", "inleft"
connect "GM_Viola", "outright", "ReverbSC", "inright"
connect "GM_Cello", "outleft", "ReverbSC", "inleft"
connect "GM_Cello", "outright", "ReverbSC", "inright"
connect "GM_Contrabass", "outleft", "ReverbSC", "inleft"
connect "GM_Contrabass", "outright", "ReverbSC", "inright"
connect "GM_Tremolo_Strings", "outleft", "ReverbSC", "inleft"
connect "GM_Tremolo_Strings", "outright", "ReverbSC", "inright"
connect "GM_Pizzicato_Strings", "outleft", "ReverbSC", "inleft"
connect "GM_Pizzicato_Strings", "outright", "ReverbSC", "inright"
connect "GM_Orchestral_Harp", "outleft", "ReverbSC", "inleft"
connect "GM_Orchestral_Harp", "outright", "ReverbSC", "inright"
connect "GM_Timpani", "outleft", "ReverbSC", "inleft"
connect "GM_Timpani", "outright", "ReverbSC", "inright"
connect "GM_String_Ensemble_1", "outleft", "ReverbSC", "inleft"
connect "GM_String_Ensemble_1", "outright", "ReverbSC", "inright"
connect "GM_String_Ensemble_2", "outleft", "ReverbSC", "inleft"
connect "GM_String_Ensemble_2", "outright", "ReverbSC", "inright"
connect "GM_SynthStrings_1", "outleft", "ReverbSC", "inleft"
connect "GM_SynthStrings_1", "outright", "ReverbSC", "inright"
connect "GM_SynthStrings_2", "outleft", "ReverbSC", "inleft"
connect "GM_SynthStrings_2", "outright", "ReverbSC", "inright"
connect "GM_Choir_Aahs", "outleft", "ReverbSC", "inleft"
connect "GM_Choir_Aahs", "outright", "ReverbSC", "inright"
connect "GM_Voice_Oohs", "outleft", "ReverbSC", "inleft"
connect "GM_Voice_Oohs", "outright", "ReverbSC", "inright"
connect "GM_Synth_Voice", "outleft", "ReverbSC", "inleft"
connect "GM_Synth_Voice", "outright", "ReverbSC", "inright"
connect "GM_Orchestra_Hit", "outleft", "ReverbSC", "inleft"
connect "GM_Orchestra_Hit", "outright", "ReverbSC", "inright"
connect "GM_Trumpet", "outleft", "ReverbSC", "inleft"
connect "GM_Trumpet", "outright", "ReverbSC", "inright"
connect "GM_Trombone", "outleft", "ReverbSC", "inleft"
connect "GM_Trombone", "outright", "ReverbSC", "inright"
connect "GM_Tuba", "outleft", "ReverbSC", "inleft"
connect "GM_Tuba", "outright", "ReverbSC", "inright"
connect "GM_Muted_Trumpet", "outleft", "ReverbSC", "inleft"
connect "GM_Muted_Trumpet", "outright", "ReverbSC", "inright"
connect "GM_French_Horn", "outleft", "ReverbSC", "inleft"
connect "GM_French_Horn", "outright", "ReverbSC", "inright"
connect "GM_Brass_Section", "outleft", "ReverbSC", "inleft"
connect "GM_Brass_Section", "outright", "ReverbSC", "inright"
connect "GM_SynthBrass_1", "outleft", "ReverbSC", "inleft"
connect "GM_SynthBrass_1", "outright", "ReverbSC", "inright"
connect "GM_SynthBrass_2", "outleft", "ReverbSC", "inleft"
connect "GM_SynthBrass_2", "outright", "ReverbSC", "inright"
connect "GM_Soprano_Sax", "outleft", "ReverbSC", "inleft"
connect "GM_Soprano_Sax", "outright", "ReverbSC", "inright"
connect "GM_Alto_Sax", "outleft", "ReverbSC", "inleft"
connect "GM_Alto_Sax", "outright", "ReverbSC", "inright"
connect "GM_Tenor_Sax", "outleft", "ReverbSC", "inleft"
connect "GM_Tenor_Sax", "outright", "ReverbSC", "inright"
connect "GM_Baritone_Sax", "outleft", "ReverbSC", "inleft"
connect "GM_Baritone_Sax", "outright", "ReverbSC", "inright"
connect "GM_Oboe", "outleft", "ReverbSC", "inleft"
connect "GM_Oboe", "outright", "ReverbSC", "inright"
connect "GM_English_Horn", "outleft", "ReverbSC", "inleft"
connect "GM_English_Horn", "outright", "ReverbSC", "inright"
connect "GM_Bassoon", "outleft", "ReverbSC", "inleft"
connect "GM_Bassoon", "outright", "ReverbSC", "inright"
connect "GM_Clarinet", "outleft", "ReverbSC", "inleft"
connect "GM_Clarinet", "outright", "ReverbSC", "inright"
connect "GM_Piccolo", "outleft", "ReverbSC", "inleft"
connect "GM_Piccolo", "outright", "ReverbSC", "inright"
connect "GM_Flute", "outleft", "ReverbSC", "inleft"
connect "GM_Flute", "outright", "ReverbSC", "inright"
connect "GM_Recorder", "outleft", "ReverbSC", "inleft"
connect "GM_Recorder", "outright", "ReverbSC", "inright"
connect "GM_Pan_Flute", "outleft", "ReverbSC", "inleft"
connect "GM_Pan_Flute", "outright", "ReverbSC", "inright"
connect "GM_Blown_Bottle", "outleft", "ReverbSC", "inleft"
connect "GM_Blown_Bottle", "outright", "ReverbSC", "inright"
connect "GM_Shakuhachi", "outleft", "ReverbSC", "inleft"
connect "GM_Shakuhachi", "outright", "ReverbSC", "inright"
connect "GM_Whistle", "outleft", "ReverbSC", "inleft"
connect "GM_Whistle", "outright", "ReverbSC", "inright"
connect "GM_Ocarina", "outleft", "ReverbSC", "inleft"
connect "GM_Ocarina", "outright", "ReverbSC", "inright"
connect "GM_Lead_1_square", "outleft", "ReverbSC", "inleft"
connect "GM_Lead_1_square", "outright", "ReverbSC", "inright"
connect "GM_Lead_2_sawtooth", "outleft", "ReverbSC", "inleft"
connect "GM_Lead_2_sawtooth", "outright", "ReverbSC", "inright"
connect "GM_Lead_3_calliope", "outleft", "ReverbSC", "inleft"
connect "GM_Lead_3_calliope", "outright", "ReverbSC", "inright"
connect "GM_Lead_4_chiff", "outleft", "ReverbSC", "inleft"
connect "GM_Lead_4_chiff", "outright", "ReverbSC", "inright"
connect "GM_Lead_5_charang", "outleft", "ReverbSC", "inleft"
connect "GM_Lead_5_charang", "outright", "ReverbSC", "inright"
connect "GM_Lead_6_voice", "outleft", "ReverbSC", "inleft"
connect "GM_Lead_6_voice", "outright", "ReverbSC", "inright"
connect "GM_Lead_7_fifths", "outleft", "ReverbSC", "inleft"
connect "GM_Lead_7_fifths", "outright", "ReverbSC", "inright"
connect "GM_Lead_8_bass_lead", "outleft", "ReverbSC", "inleft"
connect "GM_Lead_8_bass_lead", "outright", "ReverbSC", "inright"
connect "GM_Pad_1_new_age", "outleft", "ReverbSC", "inleft"
connect "GM_Pad_1_new_age", "outright", "ReverbSC", "inright"
connect "GM_Pad_2_warm", "outleft", "ReverbSC", "inleft"
connect "GM_Pad_2_warm", "outright", "ReverbSC", "inright"
connect "GM_Pad_3_polysynth", "outleft", "ReverbSC", "inleft"
connect "GM_Pad_3_polysynth", "outright", "ReverbSC", "inright"
connect "GM_Pad_4_choir", "outleft", "ReverbSC", "inleft"
connect "GM_Pad_4_choir", "outright", "ReverbSC", "inright"
connect "GM_Pad_5_bowed", "outleft", "ReverbSC", "inleft"
connect "GM_Pad_5_bowed", "outright", "ReverbSC", "inright"
connect "GM_Pad_6_metallic", "outleft", "ReverbSC", "inleft"
connect "GM_Pad_6_metallic", "outright", "ReverbSC", "inright"
connect "GM_Pad_7_halo", "outleft", "ReverbSC", "inleft"
connect "GM_Pad_7_halo", "outright", "ReverbSC", "inright"
connect "GM_Pad_8_sweep", "outleft", "ReverbSC", "inleft"
connect "GM_Pad_8_sweep", "outright", "ReverbSC", "inright"
connect "GM_FX_1_rain", "outleft", "ReverbSC", "inleft"
connect "GM_FX_1_rain", "outright", "ReverbSC", "inright"
connect "GM_FX_2_soundtrack", "outleft", "ReverbSC", "inleft"
connect "GM_FX_2_soundtrack", "outright", "ReverbSC", "inright"
connect "GM_FX_3_crystal", "outleft", "ReverbSC", "inleft"
connect "GM_FX_3_crystal", "outright", "ReverbSC", "inright"
connect "GM_FX_4_atmosphere", "outleft", "ReverbSC", "inleft"
connect "GM_FX_4_atmosphere", "outright", "ReverbSC", "inright"
connect "GM_FX_5_brightness", "outleft", "ReverbSC", "inleft"
connect "GM_FX_5_brightness", "outright", "ReverbSC", "inright"
connect "GM_FX_6_goblins", "outleft", "ReverbSC", "inleft"
connect "GM_FX_6_goblins", "outright", "ReverbSC", "inright"
connect "GM_FX_7_echoes", "outleft", "ReverbSC", "inleft"
connect "GM_FX_7_echoes", "outright", "ReverbSC", "inright"
connect "GM_FX_8_sci_fi", "outleft", "ReverbSC", "inleft"
connect "GM_FX_8_sci_fi", "outright", "ReverbSC", "inright"
connect "GM_Sitar", "outleft", "ReverbSC", "inleft"
connect "GM_Sitar", "outright", "ReverbSC", "inright"
connect "GM_Banjo", "outleft", "ReverbSC", "inleft"
connect "GM_Banjo", "outright", "ReverbSC", "inright"
connect "GM_Shamisen", "outleft", "ReverbSC", "inleft"
connect "GM_Shamisen", "outright", "ReverbSC", "inright"
connect "GM_Koto", "outleft", "ReverbSC", "inleft"
connect "GM_Koto", "outright", "ReverbSC", "inright"
connect "GM_Kalimba", "outleft", "ReverbSC", "inleft"
connect "GM_Kalimba", "outright", "ReverbSC", "inright"
connect "GM_Bag_pipe", "outleft", "ReverbSC", "inleft"
connect "GM_Bag_pipe", "outright", "ReverbSC", "inright"
connect "GM_Fiddle", "outleft", "ReverbSC", "inleft"
connect "GM_Fiddle", "outright", "ReverbSC", "inright"
connect "GM_Shanai", "outleft", "ReverbSC", "inleft"
connect "GM_Shanai", "outright", "ReverbSC", "inright"
connect "GM_Tinkle_Bell", "outleft", "ReverbSC", "inleft"
connect "GM_Tinkle_Bell", "outright", "ReverbSC", "inright"
connect "GM_Agogo", "outleft", "ReverbSC", "inleft"
connect "GM_Agogo", "outright", "ReverbSC", "inright"
connect "GM_Steel_Drums", "outleft", "ReverbSC", "inleft"
connect "GM_Steel_Drums", "outright", "ReverbSC", "inright"
connect "GM_Woodblock", "outleft", "ReverbSC", "inleft"
connect "GM_Woodblock", "outright", "ReverbSC", "inright"
connect "GM_Taiko_Drum", "outleft", "ReverbSC", "inleft"
connect "GM_Taiko_Drum", "outright", "ReverbSC", "inright"
connect "GM_Melodic_Tom", "outleft", "ReverbSC", "inleft"
connect "GM_Melodic_Tom", "outright", "ReverbSC", "inright"
connect "GM_Synth_Drum", "outleft", "ReverbSC", "inleft"
connect "GM_Synth_Drum", "outright", "ReverbSC", "inright"
connect "GM_Reverse_Cymbal", "outleft", "ReverbSC", "inleft"
connect "GM_Reverse_Cymbal", "outright", "ReverbSC", "inright"
connect "GM_Guitar_Fret_Noise", "outleft", "ReverbSC", "inleft"
connect "GM_Guitar_Fret_Noise", "outright", "ReverbSC", "inright"
connect "GM_Breath_Noise", "outleft", "ReverbSC", "inleft"
connect "GM_Breath_Noise", "outright", "ReverbSC", "inright"
connect "GM_Seashore", "outleft", "ReverbSC", "inleft"
connect "GM_Seashore", "outright", "ReverbSC", "inright"
connect "GM_Bird_Tweet", "outleft", "ReverbSC", "inleft"
connect "GM_Bird_Tweet", "outright", "ReverbSC", "inright"
connect "GM_Telephone_Ring", "outleft", "ReverbSC", "inleft"
connect "GM_Telephone_Ring", "outright", "ReverbSC", "inright"
connect "GM_Helicopter", "outleft", "ReverbSC", "inleft"
connect "GM_Helicopter", "outright", "ReverbSC", "inright"
connect "GM_Applause", "outleft", "ReverbSC", "inleft"
connect "GM_Applause", "outright", "ReverbSC", "inright"
connect "GM_Gunshot", "outleft", "ReverbSC", "inleft"
connect "GM_Gunshot", "outright", "ReverbSC", "inright"
connect "GM_Standard_Kit", "outleft", "ReverbSC", "inleft"
connect "GM_Standard_Kit", "outright", "ReverbSC", "inright"
connect "ReverbSC", "outleft", "MasterOutput", "inleft"
connect "ReverbSC", "outright", "MasterOutput", "inright"

alwayson "ReverbSC"
alwayson "MasterOutput"
;;;; Instruments

;;;;   1  Acoustic Grand Piano
gk_GM_Acoustic_Grand_Piano_level chnexport "gk_GM_Acoustic_Grand_Piano_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Acoustic_Grand_Piano_midi_dynamic_range chnexport "gk_GM_Acoustic_Grand_Piano_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Acoustic_Grand_Piano_space_left_to_right chnexport "gk_GM_Acoustic_Grand_Piano_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Acoustic_Grand_Piano_brightness chnexport "gk_GM_Acoustic_Grand_Piano_brightness", 3 ; Multiplies the hammer brightness.
gk_GM_Acoustic_Grand_Piano_decay_scale chnexport "gk_GM_Acoustic_Grand_Piano_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Acoustic_Grand_Piano_soundboard chnexport "gk_GM_Acoustic_Grand_Piano_soundboard", 3 ; Level of the soundboard resonances.
gk_GM_Acoustic_Grand_Piano_string_detune chnexport "gk_GM_Acoustic_Grand_Piano_string_detune", 3 ; Multiplies the detuning between the strings of a key.
gk_GM_Acoustic_Grand_Piano_level init -7
gk_GM_Acoustic_Grand_Piano_midi_dynamic_range init 20
gk_GM_Acoustic_Grand_Piano_space_left_to_right init 0.5
gk_GM_Acoustic_Grand_Piano_brightness init 1.0
gk_GM_Acoustic_Grand_Piano_decay_scale init 1.0
gk_GM_Acoustic_Grand_Piano_soundboard init 1.0
gk_GM_Acoustic_Grand_Piano_string_detune init 1.0
gi_GM_Acoustic_Grand_Piano_sine ftgen 0, 0, 65537, 10, 1
instr GM_Acoustic_Grand_Piano
; General MIDI program 1: Acoustic Grand Piano.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Acoustic_Grand_Piano_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Acoustic_Grand_Piano_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 56.6
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Acoustic_Grand_Piano_level)
; Physical model. A felt hammer (a stack of raised-cosine force pulses
; of decreasing width, so the spectrum rolls off smoothly and gets
; brighter with velocity and towards the treble, striking at one eighth
; of the string) excites three slightly detuned waveguide strings
; (wguide1: delay line, one-pole damping filter, feedback). The feedback
; is computed from the wanted decay time and the delay is corrected for
; the filter's phase delay, so every string is exactly in tune. The first
; arrival of the hammer pulse goes straight to the bridge, so the attack
; is immediate. The bridge drives a soundboard: a radiation shelf, a bank
; of low-Q modes excited mostly by the hammer knock, and a top roll-off.
i_brightness = i(gk_GM_Acoustic_Grand_Piano_brightness)
i_decay_scale = i(gk_GM_Acoustic_Grand_Piano_decay_scale)
i_soundboard = i(gk_GM_Acoustic_Grand_Piano_soundboard)
i_string_detune = i(gk_GM_Acoustic_Grand_Piano_string_detune)
; Decay time of the fundamental: long in the bass, short in the treble.
i_physical_decay = limit(12 * 2 ^ (-(i_midi_key - 60) / 18), 0.5, 25) * i_decay_scale
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
; The strings decay on their own; this envelope only holds the note and
; applies the damper when the key is released.
i_declick_release = 0.09
xtratim i_declick_release + 0.05
a_physical_envelope transeg 1, i_physical_decay * 0.85, 0, 1, i_physical_decay * 0.15, -3, 0
a_declicking_envelope cossegr 1, i_duration, 1, i_declick_release, 0
; Two-stage decay: the "prompt sound" of the vertical string motion dies
; faster than the "aftersound", so the first few hundred milliseconds
; drop quickly before the slow decay takes over.
a_prompt_envelope transeg 1, 0.3, -3, 0.55, i_physical_decay, 0, 0.55
a_envelope = a_physical_envelope * a_declicking_envelope * a_prompt_envelope
; Hammer force pulse: a few milliseconds in the bass, under a millisecond
; in the treble, shorter for harder blows. Narrower pulses are stacked on
; the main one with weights that grow with velocity (the felt hardens),
; which fills in the upper partials without the notches of a single pulse.
i_contact = limit(0.0024 * 2 ^ (-(i_midi_key - 36) / 24), 0.0004, 0.0028) * (1.2 - 0.4 * i_velocity)
i_hardness = limit((0.2 + 0.6 * i_velocity) * i_brightness, 0.05, 0.95)
a_pulse_1 cosseg 0, i_contact * 0.5, 1, i_contact * 0.5, 0, 1, 0
a_pulse_2 cosseg 0, i_contact * 0.3, 1, i_contact * 0.3, 0, 1, 0
a_pulse_3 cosseg 0, i_contact * 0.175, 1, i_contact * 0.175, 0, 1, 0
a_pulse_4 cosseg 0, i_contact * 0.1, 1, i_contact * 0.1, 0, 1, 0
a_hammer = a_pulse_1 + a_pulse_2 * i_hardness + a_pulse_3 * i_hardness * i_hardness + a_pulse_4 * i_hardness * i_hardness * i_hardness
; The hammer strikes at about one eighth of the string length: the wave
; reflected from the agraffe follows the direct wave, inverted.
a_hammer_reflection delay a_hammer, 0.125 / i_frequency
a_excitation = a_hammer - 0.75 * a_hammer_reflection
; String damping filter: upper partials die faster, more so in the bass.
i_cutoff = limit(3500 * 2 ^ ((i_midi_key - 48) / 12), 2500, 21000)
; Detuning between the three strings, in cents, wider in the treble.
i_detune_cents = (0.4 + 2.2 * (i_midi_key - 21) / 87) * i_string_detune
; Exact tuning of wguide1: compensate for one sample of feedback latency
; and the phase delay of its one-pole low-pass at the fundamental.
i_b = 2 - cos(2 * $M_PI * i_cutoff / sr)
i_c2 = i_b - sqrt(i_b * i_b - 1)
i_c1 = 1 - i_c2
i_omega = 2 * $M_PI * i_frequency / sr
i_filter_delay = taninv(i_c2 * sin(i_omega) / (1 - i_c2 * cos(i_omega))) / i_omega
i_filter_gain = i_c1 / sqrt(1 - 2 * i_c2 * cos(i_omega) + i_c2 * i_c2)
; Feedback from the wanted decay time of the fundamental.
i_period = sr / i_frequency
i_feedback = limit(10 ^ (-3 * i_period / (i_physical_decay * sr)) / i_filter_gain, 0.5, 0.9995)
i_frequency_1 = i_frequency * 2 ^ (-i_detune_cents / 1200)
i_frequency_2 = i_frequency
i_frequency_3 = i_frequency * 2 ^ (1.4 * i_detune_cents / 1200)
i_wg_frequency_1 = sr / (sr / i_frequency_1 - 1 - i_filter_delay)
i_wg_frequency_2 = sr / (sr / i_frequency_2 - 1 - i_filter_delay)
i_wg_frequency_3 = sr / (sr / i_frequency_3 - 1 - i_filter_delay)
a_string_1 wguide1 a_excitation, i_wg_frequency_1, i_cutoff, i_feedback
a_string_2 wguide1 a_excitation, i_wg_frequency_2, i_cutoff, i_feedback
a_string_3 wguide1 a_excitation, i_wg_frequency_3, i_cutoff, i_feedback
; wguide1 only outputs after one round trip; the first arrival of the
; pulse at the bridge is added directly so the attack is instantaneous.
if i_midi_key < 40 then
a_strings = (a_string_2 + a_excitation) * 1.5
elseif i_midi_key < 52 then
a_strings = (a_string_1 + a_string_3 + 2 * a_excitation) * 0.8
else
; Unequal string levels keep the beating from cancelling the tone.
a_strings = (a_string_1 * 0.8 + a_string_2 + a_string_3 * 0.65 + 2.45 * a_excitation) * 0.65
endif
; The model is louder in the bass than in the treble; even it out.
if i_midi_key < 60 then
i_key_compensation = ampdb(0.08 * (60 - i_midi_key))
else
i_key_compensation = ampdb(limit(0.12 * (i_midi_key - 60), 0, 6))
endif
a_strings = a_strings * i_key_compensation
; In the top octaves a one-pole damping filter cannot sustain the short
; strings for long enough, so a few stiff-string partials (decaying
; sinusoids with inharmonic stretch) are blended in above key 74.
i_modal_mix = limit((i_midi_key - 74) / 16, 0, 1)
if i_modal_mix > 0 then
i_inharmonicity = 0.0004 * 2 ^ ((i_midi_key - 60) / 8)
i_partial_2 = 2 * i_frequency * sqrt(1 + i_inharmonicity * 4)
i_partial_3 = 3 * i_frequency * sqrt(1 + i_inharmonicity * 9)
a_modal_envelope_1 transeg 1, i_physical_decay, -6.9, 0
a_modal_envelope_2 transeg 0.4, i_physical_decay * 0.6, -6.9, 0
a_modal_envelope_3 transeg 0.15, i_physical_decay * 0.4, -6.9, 0
a_modal_1 poscil a_modal_envelope_1, i_frequency, gi_GM_Acoustic_Grand_Piano_sine
a_modal_2 poscil a_modal_envelope_2, i_partial_2, gi_GM_Acoustic_Grand_Piano_sine
a_modal_3 poscil a_modal_envelope_3, i_partial_3, gi_GM_Acoustic_Grand_Piano_sine
a_modal_onset linseg 0, 0.002, 1, 1, 1
a_strings = a_strings * (1 - 0.6 * i_modal_mix) + (a_modal_1 + a_modal_2 + a_modal_3) * a_modal_onset * 0.25 * i_modal_mix
endif
; Soundboard radiation: the board radiates the low partials less well
; than the upper ones (a shelf of about -4 dB below 500 Hz).
a_strings_high butterhp a_strings, 500
a_strings = a_strings * 0.6 + a_strings_high * 0.4
; Soundboard body: the hammer blow and the key action knock the board,
; which answers with a short, dense thump; the strings also drive it a
; little, which colours the tone.
a_action_noise rand 1
a_action_envelope transeg 1, 0.004, -4, 0
a_action butterlp a_action_noise * a_action_envelope, 1500
; The wide bass pulses carry much more low-frequency energy than the
; treble ones, so the knock is scaled down towards the bass.
i_knock_gain = ampdb(-8.8 + limit(0.4 * (i_midi_key - 60), -20, 3.8))
a_knock = (a_hammer * (1.0 + 0.5 * i_velocity) + a_action * 0.3 * i_velocity) * i_knock_gain
a_to_board = a_knock * 0.5 + a_strings * 0.045
a_mode_1 mode a_to_board, 62, 8
a_mode_2 mode a_to_board, 97, 9
a_mode_3 mode a_to_board, 141, 10
a_mode_4 mode a_to_board, 196, 11
a_mode_5 mode a_to_board, 263, 12
a_mode_6 mode a_to_board, 347, 13
a_mode_7 mode a_to_board, 455, 14
a_mode_8 mode a_to_board, 603, 15
a_mode_9 mode a_to_board, 790, 16
a_mode_10 mode a_to_board, 1060, 16
a_mode_11 mode a_to_board, 1430, 16
a_mode_12 mode a_to_board, 1950, 16
a_mode_13 mode a_to_board, 2700, 16
a_board = (a_mode_1 + a_mode_2 + a_mode_3 + a_mode_4 + a_mode_5 + a_mode_6 + a_mode_7 + a_mode_8 + a_mode_9 + a_mode_10 + a_mode_11 + a_mode_12 + a_mode_13) * 0.05
; The board radiates everything, with a gentle roll-off at the top.
a_signal = a_strings + a_board * i_soundboard
a_signal tonex a_signal, 8000, 1
a_signal butterhp a_signal, 30
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;   2  Bright Acoustic Piano
gk_GM_Bright_Acoustic_Piano_level chnexport "gk_GM_Bright_Acoustic_Piano_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Bright_Acoustic_Piano_midi_dynamic_range chnexport "gk_GM_Bright_Acoustic_Piano_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Bright_Acoustic_Piano_space_left_to_right chnexport "gk_GM_Bright_Acoustic_Piano_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Bright_Acoustic_Piano_brightness chnexport "gk_GM_Bright_Acoustic_Piano_brightness", 3 ; Multiplies the hammer brightness.
gk_GM_Bright_Acoustic_Piano_decay_scale chnexport "gk_GM_Bright_Acoustic_Piano_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Bright_Acoustic_Piano_level init 0
gk_GM_Bright_Acoustic_Piano_midi_dynamic_range init 20
gk_GM_Bright_Acoustic_Piano_space_left_to_right init 0.5
gk_GM_Bright_Acoustic_Piano_brightness init 1.4
gk_GM_Bright_Acoustic_Piano_decay_scale init 1.0
gi_GM_Bright_Acoustic_Piano_sine ftgen 0, 0, 65537, 10, 1
instr GM_Bright_Acoustic_Piano
; General MIDI program 2: Bright Acoustic Piano.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Bright_Acoustic_Piano_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Bright_Acoustic_Piano_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 66.0
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Bright_Acoustic_Piano_level)
; Three detuned FM strings per key. The modulation index, the
; low-pass brightness, and the decay time all depend on key and velocity.
i_decay_scale = i(gk_GM_Bright_Acoustic_Piano_decay_scale)
i_brightness = i(gk_GM_Bright_Acoustic_Piano_brightness)
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = limit(14 * exp(-(i_midi_key - 21) / 36), 0.7, 14) * i_decay_scale
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 5
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.08
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

i_key_scale = limit(2 ^ ((60 - i_midi_key) / 24), 0.3, 2.5)
i_index = (1.0 + 3.2 * i_velocity) * i_key_scale * i_brightness
k_index transeg i_index, 0.25, -4, 0.3 * i_index + 0.15, i_physical_decay, -2, 0.05
i_detune = limit(0.0007 + 0.0007 * (i_midi_key - 36) / 48, 0.0004, 0.0016)
a_string_1 foscili 1, i_frequency * (1 - i_detune), 1, 1, k_index, gi_GM_Bright_Acoustic_Piano_sine
a_string_2 foscili 1, i_frequency, 1, 1, k_index * 0.93, gi_GM_Bright_Acoustic_Piano_sine
a_string_3 foscili 1, i_frequency * (1 + i_detune), 1, 1, k_index * 1.07, gi_GM_Bright_Acoustic_Piano_sine
a_strings = (a_string_1 + a_string_2 + a_string_3) / 3
; Inharmonic hammer sheen, fading quickly.
k_sheen transeg 0.5 * (0.3 + i_velocity) * i_brightness, 0.09, -5, 0.03, 1, -1, 0
a_sheen foscili 0.4, i_frequency, 1, 3.011, k_sheen, gi_GM_Bright_Acoustic_Piano_sine
; Hammer thump: a short low-passed noise burst.
a_noise rand 1
a_hammer_envelope transeg 0.5 * i_velocity, 0.005, -3, 0
a_hammer butterlp a_noise * a_hammer_envelope, 1200 + 3000 * i_velocity
a_signal = a_strings + a_sheen * 1.0 + a_hammer
; Brightness closes as the note decays.
k_cutoff transeg (2200 + i_frequency * (3 + 5 * i_velocity)) * i_brightness, 0.4, -3, 1500 + i_frequency * 2.5, i_physical_decay, -1, 700 + i_frequency * 1.5
k_cutoff limit k_cutoff, 200, 16000
a_signal tonex a_signal, k_cutoff, 2
; Soundboard resonances.
a_body_1 reson a_signal, 230, 120, 1
a_body_2 reson a_signal, 470, 180, 1
a_signal = a_signal + 0.120 * a_body_1 + 0.080 * a_body_2
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;   3  Electric Grand Piano
gk_GM_Electric_Grand_Piano_level chnexport "gk_GM_Electric_Grand_Piano_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Electric_Grand_Piano_midi_dynamic_range chnexport "gk_GM_Electric_Grand_Piano_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Electric_Grand_Piano_space_left_to_right chnexport "gk_GM_Electric_Grand_Piano_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Electric_Grand_Piano_brightness chnexport "gk_GM_Electric_Grand_Piano_brightness", 3 ; Multiplies the hammer brightness.
gk_GM_Electric_Grand_Piano_decay_scale chnexport "gk_GM_Electric_Grand_Piano_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Electric_Grand_Piano_level init 0
gk_GM_Electric_Grand_Piano_midi_dynamic_range init 20
gk_GM_Electric_Grand_Piano_space_left_to_right init 0.5
gk_GM_Electric_Grand_Piano_brightness init 1.2
gk_GM_Electric_Grand_Piano_decay_scale init 1.0
gi_GM_Electric_Grand_Piano_sine ftgen 0, 0, 65537, 10, 1
instr GM_Electric_Grand_Piano
; General MIDI program 3: Electric Grand Piano.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Electric_Grand_Piano_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Electric_Grand_Piano_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 67.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Electric_Grand_Piano_level)
; Three detuned FM strings per key. The modulation index, the
; low-pass brightness, and the decay time all depend on key and velocity.
i_decay_scale = i(gk_GM_Electric_Grand_Piano_decay_scale)
i_brightness = i(gk_GM_Electric_Grand_Piano_brightness)
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = limit(14 * exp(-(i_midi_key - 21) / 36), 0.7, 14) * i_decay_scale
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 5
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.08
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

i_key_scale = limit(2 ^ ((60 - i_midi_key) / 24), 0.3, 2.5)
i_index = (1.0 + 3.2 * i_velocity) * i_key_scale * i_brightness
k_index transeg i_index, 0.25, -4, 0.3 * i_index + 0.15, i_physical_decay, -2, 0.05
i_detune = limit(0.0007 + 0.0007 * (i_midi_key - 36) / 48, 0.0004, 0.0016)
a_string_1 foscili 1, i_frequency * (1 - i_detune), 1, 1, k_index, gi_GM_Electric_Grand_Piano_sine
a_string_2 foscili 1, i_frequency, 1, 1, k_index * 0.93, gi_GM_Electric_Grand_Piano_sine
a_string_3 foscili 1, i_frequency * (1 + i_detune), 1, 1, k_index * 1.07, gi_GM_Electric_Grand_Piano_sine
a_strings = (a_string_1 + a_string_2 + a_string_3) / 3
; Inharmonic hammer sheen, fading quickly.
k_sheen transeg 0.7 * (0.3 + i_velocity) * i_brightness, 0.09, -5, 0.03, 1, -1, 0
a_sheen foscili 0.4, i_frequency, 1, 3.011, k_sheen, gi_GM_Electric_Grand_Piano_sine
; Hammer thump: a short low-passed noise burst.
a_noise rand 1
a_hammer_envelope transeg 0.5 * i_velocity, 0.005, -3, 0
a_hammer butterlp a_noise * a_hammer_envelope, 1200 + 3000 * i_velocity
a_signal = a_strings + a_sheen * 1.6 + a_hammer
; Brightness closes as the note decays.
k_cutoff transeg (2200 + i_frequency * (3 + 5 * i_velocity)) * i_brightness, 0.4, -3, 1500 + i_frequency * 2.5, i_physical_decay, -1, 700 + i_frequency * 1.5
k_cutoff limit k_cutoff, 200, 16000
a_signal tonex a_signal, k_cutoff, 2
; Soundboard resonances.
a_body_1 reson a_signal, 230, 120, 1
a_body_2 reson a_signal, 470, 180, 1
a_signal = a_signal + 0.036 * a_body_1 + 0.024 * a_body_2
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;   4  Honky-tonk Piano
gk_GM_Honky_tonk_Piano_level chnexport "gk_GM_Honky_tonk_Piano_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Honky_tonk_Piano_midi_dynamic_range chnexport "gk_GM_Honky_tonk_Piano_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Honky_tonk_Piano_space_left_to_right chnexport "gk_GM_Honky_tonk_Piano_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Honky_tonk_Piano_brightness chnexport "gk_GM_Honky_tonk_Piano_brightness", 3 ; Multiplies the hammer brightness.
gk_GM_Honky_tonk_Piano_decay_scale chnexport "gk_GM_Honky_tonk_Piano_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Honky_tonk_Piano_level init 0
gk_GM_Honky_tonk_Piano_midi_dynamic_range init 20
gk_GM_Honky_tonk_Piano_space_left_to_right init 0.5
gk_GM_Honky_tonk_Piano_brightness init 1.2
gk_GM_Honky_tonk_Piano_decay_scale init 1.0
gi_GM_Honky_tonk_Piano_sine ftgen 0, 0, 65537, 10, 1
instr GM_Honky_tonk_Piano
; General MIDI program 4: Honky-tonk Piano.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Honky_tonk_Piano_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Honky_tonk_Piano_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 66.6
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Honky_tonk_Piano_level)
; Three detuned FM strings per key. The modulation index, the
; low-pass brightness, and the decay time all depend on key and velocity.
i_decay_scale = i(gk_GM_Honky_tonk_Piano_decay_scale)
i_brightness = i(gk_GM_Honky_tonk_Piano_brightness)
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = limit(14 * exp(-(i_midi_key - 21) / 36), 0.7, 14) * i_decay_scale
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 5
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.08
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

i_key_scale = limit(2 ^ ((60 - i_midi_key) / 24), 0.3, 2.5)
i_index = (1.0 + 3.2 * i_velocity) * i_key_scale * i_brightness
k_index transeg i_index, 0.25, -4, 0.3 * i_index + 0.15, i_physical_decay, -2, 0.05
i_detune = limit(0.0007 + 0.0007 * (i_midi_key - 36) / 48, 0.0004, 0.0016)
a_string_1 foscili 1, i_frequency * (1 - i_detune), 1, 1, k_index, gi_GM_Honky_tonk_Piano_sine
a_string_2 foscili 1, i_frequency, 1, 1, k_index * 0.93, gi_GM_Honky_tonk_Piano_sine
a_string_3 foscili 1, i_frequency * (1 + i_detune), 1, 1, k_index * 1.07, gi_GM_Honky_tonk_Piano_sine
a_strings = (a_string_1 + a_string_2 + a_string_3) / 3
; Inharmonic hammer sheen, fading quickly.
k_sheen transeg 0.35 * (0.3 + i_velocity) * i_brightness, 0.09, -5, 0.03, 1, -1, 0
a_sheen foscili 0.4, i_frequency, 1, 3.011, k_sheen, gi_GM_Honky_tonk_Piano_sine
; Hammer thump: a short low-passed noise burst.
a_noise rand 1
a_hammer_envelope transeg 0.5 * i_velocity, 0.005, -3, 0
a_hammer butterlp a_noise * a_hammer_envelope, 1200 + 3000 * i_velocity
a_signal = a_strings + a_sheen * 1.0 + a_hammer
; A second, slightly sharp set of strings for the honky-tonk beat.
a_honky_1 foscili 1, i_frequency * 1.0062, 1, 1, k_index * 1.1, gi_GM_Honky_tonk_Piano_sine
a_honky_2 foscili 1, i_frequency * 1.0062 * (1 + i_detune), 1, 1, k_index, gi_GM_Honky_tonk_Piano_sine
a_signal = a_signal * 0.6 + (a_honky_1 + a_honky_2) * 0.35
; Brightness closes as the note decays.
k_cutoff transeg (2200 + i_frequency * (3 + 5 * i_velocity)) * i_brightness, 0.4, -3, 1500 + i_frequency * 2.5, i_physical_decay, -1, 700 + i_frequency * 1.5
k_cutoff limit k_cutoff, 200, 16000
a_signal tonex a_signal, k_cutoff, 2
; Soundboard resonances.
a_body_1 reson a_signal, 230, 120, 1
a_body_2 reson a_signal, 470, 180, 1
a_signal = a_signal + 0.120 * a_body_1 + 0.080 * a_body_2
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;   5  Electric Piano 1
gk_GM_Electric_Piano_1_level chnexport "gk_GM_Electric_Piano_1_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Electric_Piano_1_midi_dynamic_range chnexport "gk_GM_Electric_Piano_1_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Electric_Piano_1_space_left_to_right chnexport "gk_GM_Electric_Piano_1_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Electric_Piano_1_tine_index chnexport "gk_GM_Electric_Piano_1_tine_index", 3 ; FM index of the tine; higher is brighter.
gk_GM_Electric_Piano_1_bark chnexport "gk_GM_Electric_Piano_1_bark", 3 ; Level of the high-velocity attack 'bark'.
gk_GM_Electric_Piano_1_level init 0
gk_GM_Electric_Piano_1_midi_dynamic_range init 20
gk_GM_Electric_Piano_1_space_left_to_right init 0.5
gk_GM_Electric_Piano_1_tine_index init 1.4
gk_GM_Electric_Piano_1_bark init 0.6
gi_GM_Electric_Piano_1_sine ftgen 0, 0, 65537, 10, 1
instr GM_Electric_Piano_1
; General MIDI program 5: Electric Piano 1.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Electric_Piano_1_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Electric_Piano_1_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 67.6
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Electric_Piano_1_level)
; Two FM pairs: a tine (1:1) with a slowly closing index, and a short
; inharmonic 'bark' (1:14) that only appears at high velocities.
i_tine_index = i(gk_GM_Electric_Piano_1_tine_index) * (0.5 + i_velocity)
i_bark = i(gk_GM_Electric_Piano_1_bark) * limit((i_velocity - 0.45) * 2.5, 0, 1)
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = limit(9 * exp(-(i_midi_key - 28) / 40), 1.0, 9)
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 5
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.06
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_tine_index transeg i_tine_index, 0.5, -3, i_tine_index * 0.35, i_physical_decay, -1, i_tine_index * 0.1
a_tine foscili 1, i_frequency, 1, 1, k_tine_index, gi_GM_Electric_Piano_1_sine
k_bark_index transeg i_bark * 1.5, 0.06, -4, 0
a_bark foscili 0.5, i_frequency, 1, 14, k_bark_index, gi_GM_Electric_Piano_1_sine
; A sine an octave up fills in the bell-like tone of the tine bar.
a_bell_envelope transeg 0.25, 0.4, -3, 0.05, i_physical_decay, -1, 0
a_bell poscil a_bell_envelope, i_frequency * 2, gi_GM_Electric_Piano_1_sine
a_signal = a_tine + a_bark + a_bell
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;   6  Electric Piano 2
gk_GM_Electric_Piano_2_level chnexport "gk_GM_Electric_Piano_2_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Electric_Piano_2_midi_dynamic_range chnexport "gk_GM_Electric_Piano_2_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Electric_Piano_2_space_left_to_right chnexport "gk_GM_Electric_Piano_2_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Electric_Piano_2_tine_index chnexport "gk_GM_Electric_Piano_2_tine_index", 3 ; FM index of the tine; higher is brighter.
gk_GM_Electric_Piano_2_bark chnexport "gk_GM_Electric_Piano_2_bark", 3 ; Level of the high-velocity attack 'bark'.
gk_GM_Electric_Piano_2_level init 0
gk_GM_Electric_Piano_2_midi_dynamic_range init 20
gk_GM_Electric_Piano_2_space_left_to_right init 0.5
gk_GM_Electric_Piano_2_tine_index init 2.2
gk_GM_Electric_Piano_2_bark init 1.0
gi_GM_Electric_Piano_2_sine ftgen 0, 0, 65537, 10, 1
instr GM_Electric_Piano_2
; General MIDI program 6: Electric Piano 2.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Electric_Piano_2_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Electric_Piano_2_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 66.7
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Electric_Piano_2_level)
; Two FM pairs: a tine (1:1) with a slowly closing index, and a short
; inharmonic 'bark' (1:14) that only appears at high velocities.
i_tine_index = i(gk_GM_Electric_Piano_2_tine_index) * (0.5 + i_velocity)
i_bark = i(gk_GM_Electric_Piano_2_bark) * limit((i_velocity - 0.45) * 2.5, 0, 1)
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = limit(9 * exp(-(i_midi_key - 28) / 40), 1.0, 9)
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 5
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.06
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_tine_index transeg i_tine_index, 0.5, -3, i_tine_index * 0.35, i_physical_decay, -1, i_tine_index * 0.1
a_tine foscili 1, i_frequency, 1, 1, k_tine_index, gi_GM_Electric_Piano_2_sine
k_bark_index transeg i_bark * 1.5, 0.06, -4, 0
a_bark foscili 0.5, i_frequency, 1, 14, k_bark_index, gi_GM_Electric_Piano_2_sine
; A sine an octave up fills in the bell-like tone of the tine bar.
a_bell_envelope transeg 0.25, 0.4, -3, 0.05, i_physical_decay, -1, 0
a_bell poscil a_bell_envelope, i_frequency * 2, gi_GM_Electric_Piano_2_sine
a_signal = a_tine + a_bark + a_bell
; Stereo-style chorus folded to mono: two modulated delays.
a_chorus_lfo_1 poscil 1.2, 0.8, gi_GM_Electric_Piano_2_sine
a_chorus_lfo_2 poscil 1.2, 1.1, gi_GM_Electric_Piano_2_sine
a_chorus_1 vdelay3 a_signal, 7 + a_chorus_lfo_1, 20
a_chorus_2 vdelay3 a_signal, 11 + a_chorus_lfo_2, 20
a_signal = a_signal * 0.6 + (a_chorus_1 + a_chorus_2) * 0.35
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;   7  Harpsichord
gk_GM_Harpsichord_level chnexport "gk_GM_Harpsichord_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Harpsichord_midi_dynamic_range chnexport "gk_GM_Harpsichord_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Harpsichord_space_left_to_right chnexport "gk_GM_Harpsichord_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Harpsichord_level init 0
gk_GM_Harpsichord_midi_dynamic_range init 20
gk_GM_Harpsichord_space_left_to_right init 0.5
gi_GM_Harpsichord_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Harpsichord_harptable ftgen 0, 0, 65537, 7, -1, 1024, 1, 1024, -1
instr GM_Harpsichord
; General MIDI program 7: Harpsichord.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Harpsichord_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Harpsichord_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 61.9
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Harpsichord_level)
; Plucked string plus a low-level triangle wave, after the Harpsichord
; patch by Michael Gogins. The jack release is quick and slightly noisy.
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = limit(7 * exp(-(i_midi_key - 36) / 36), 0.8, 7)
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0008
i_exponent = 7
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.02
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

a_pluck pluck 1, i_frequency, i_frequency, 0, 1
a_triangle poscil 1, i_frequency, gi_GM_Harpsichord_harptable
a_triangle_envelope transeg 1, i_physical_decay, -25, 0
a_triangle balance a_pluck, a_triangle * a_triangle_envelope
a_signal = a_pluck + a_triangle * 0.5
a_signal tonex a_signal, limit(i_frequency * 14, 3000, 16000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;   8  Clavi
gk_GM_Clavi_level chnexport "gk_GM_Clavi_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Clavi_midi_dynamic_range chnexport "gk_GM_Clavi_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Clavi_space_left_to_right chnexport "gk_GM_Clavi_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Clavi_tone chnexport "gk_GM_Clavi_tone", 3 ; Pickup brightness multiplier.
gk_GM_Clavi_level init 0
gk_GM_Clavi_midi_dynamic_range init 20
gk_GM_Clavi_space_left_to_right init 0.5
gk_GM_Clavi_tone init 1.0
instr GM_Clavi
; General MIDI program 8: Clavi.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Clavi_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Clavi_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 66.4
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Clavi_level)
; Hammered string with a sharp pickup filter sweep.
i_tone = i(gk_GM_Clavi_tone)
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = limit(3 * exp(-(i_midi_key - 36) / 40), 0.6, 3)
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0008
i_exponent = 7
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.015
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

a_pluck pluck 1, i_frequency, i_frequency, 0, 6
k_pickup transeg (3200 + 1800 * i_velocity) * i_tone, 0.12, -3, (1300 + 600 * i_velocity) * i_tone
k_pickup limit k_pickup, 300, 15000
a_filtered butterbp a_pluck, k_pickup, k_pickup * 0.7
a_signal = a_pluck * 0.5 + a_filtered * 1.5
a_signal butterhp a_signal, 90
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;   9  Celesta
gk_GM_Celesta_level chnexport "gk_GM_Celesta_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Celesta_midi_dynamic_range chnexport "gk_GM_Celesta_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Celesta_space_left_to_right chnexport "gk_GM_Celesta_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Celesta_decay_scale chnexport "gk_GM_Celesta_decay_scale", 3 ; Multiplies all partial decay times.
gk_GM_Celesta_mallet_hardness chnexport "gk_GM_Celesta_mallet_hardness", 3 ; Multiplies the strike noise cut-off.
gk_GM_Celesta_level init 0
gk_GM_Celesta_midi_dynamic_range init 20
gk_GM_Celesta_space_left_to_right init 0.5
gk_GM_Celesta_decay_scale init 1.0
gk_GM_Celesta_mallet_hardness init 1.0
gi_GM_Celesta_sine ftgen 0, 0, 65537, 10, 1
instr GM_Celesta
; General MIDI program 9: Celesta.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Celesta_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Celesta_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 66.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Celesta_level)
; Modal synthesis: each partial is an exponentially decaying sinusoid
; with its own decay, plus a short filtered noise strike.
i_decay_scale = i(gk_GM_Celesta_decay_scale)
i_mallet_hardness = i(gk_GM_Celesta_mallet_hardness)
i_decay = 1.8 * i_decay_scale * limit(1000 / i_frequency, 0.2, 5) ^ 0.6
i_decay limit i_decay, 0.08, 20.0
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.04
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

a_noise rand 1
a_strike_envelope transeg 1, 0.003, -4, 0
a_strike butterlp a_noise * a_strike_envelope, limit(5000 * i_mallet_hardness * (0.6 + 0.8 * i_velocity), 200, 18000)
a_signal = a_strike * 0.2
i_f1 = i_frequency * 1 * (1 + random:i(-0.0006, 0.0006))
i_a1 = (i_f1 < 16000 ? 1 : 0)
a_env1 transeg 1, i_decay * 1, -7, 0
a_p1 poscil i_a1 * a_env1, i_f1, gi_GM_Celesta_sine
a_signal = a_signal + a_p1
i_f2 = i_frequency * 4.05 * (1 + random:i(-0.0006, 0.0006))
i_a2 = (i_f2 < 16000 ? 0.35 : 0)
a_env2 transeg 1, i_decay * 0.5, -7, 0
a_p2 poscil i_a2 * a_env2, i_f2, gi_GM_Celesta_sine
a_signal = a_signal + a_p2
i_f3 = i_frequency * 9.2 * (1 + random:i(-0.0006, 0.0006))
i_a3 = (i_f3 < 16000 ? 0.1 : 0)
a_env3 transeg 1, i_decay * 0.3, -7, 0
a_p3 poscil i_a3 * a_env3, i_f3, gi_GM_Celesta_sine
a_signal = a_signal + a_p3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  10  Glockenspiel
gk_GM_Glockenspiel_level chnexport "gk_GM_Glockenspiel_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Glockenspiel_midi_dynamic_range chnexport "gk_GM_Glockenspiel_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Glockenspiel_space_left_to_right chnexport "gk_GM_Glockenspiel_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Glockenspiel_decay_scale chnexport "gk_GM_Glockenspiel_decay_scale", 3 ; Multiplies all partial decay times.
gk_GM_Glockenspiel_mallet_hardness chnexport "gk_GM_Glockenspiel_mallet_hardness", 3 ; Multiplies the strike noise cut-off.
gk_GM_Glockenspiel_level init 0
gk_GM_Glockenspiel_midi_dynamic_range init 20
gk_GM_Glockenspiel_space_left_to_right init 0.5
gk_GM_Glockenspiel_decay_scale init 1.0
gk_GM_Glockenspiel_mallet_hardness init 1.0
gi_GM_Glockenspiel_sine ftgen 0, 0, 65537, 10, 1
instr GM_Glockenspiel
; General MIDI program 10: Glockenspiel.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Glockenspiel_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Glockenspiel_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 68.4
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Glockenspiel_level)
; Modal synthesis: each partial is an exponentially decaying sinusoid
; with its own decay, plus a short filtered noise strike.
i_decay_scale = i(gk_GM_Glockenspiel_decay_scale)
i_mallet_hardness = i(gk_GM_Glockenspiel_mallet_hardness)
i_decay = 3.5 * i_decay_scale * limit(1500 / i_frequency, 0.2, 5) ^ 0.3
i_decay limit i_decay, 0.08, 20.0
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.04
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

a_noise rand 1
a_strike_envelope transeg 1, 0.003, -4, 0
a_strike butterlp a_noise * a_strike_envelope, limit(8000 * i_mallet_hardness * (0.6 + 0.8 * i_velocity), 200, 18000)
a_signal = a_strike * 0.25
i_f1 = i_frequency * 1 * (1 + random:i(-0.0006, 0.0006))
i_a1 = (i_f1 < 16000 ? 1 : 0)
a_env1 transeg 1, i_decay * 1, -7, 0
a_p1 poscil i_a1 * a_env1, i_f1, gi_GM_Glockenspiel_sine
a_signal = a_signal + a_p1
i_f2 = i_frequency * 2.76 * (1 + random:i(-0.0006, 0.0006))
i_a2 = (i_f2 < 16000 ? 0.5 : 0)
a_env2 transeg 1, i_decay * 0.7, -7, 0
a_p2 poscil i_a2 * a_env2, i_f2, gi_GM_Glockenspiel_sine
a_signal = a_signal + a_p2
i_f3 = i_frequency * 5.4 * (1 + random:i(-0.0006, 0.0006))
i_a3 = (i_f3 < 16000 ? 0.25 : 0)
a_env3 transeg 1, i_decay * 0.5, -7, 0
a_p3 poscil i_a3 * a_env3, i_f3, gi_GM_Glockenspiel_sine
a_signal = a_signal + a_p3
i_f4 = i_frequency * 8.93 * (1 + random:i(-0.0006, 0.0006))
i_a4 = (i_f4 < 16000 ? 0.1 : 0)
a_env4 transeg 1, i_decay * 0.3, -7, 0
a_p4 poscil i_a4 * a_env4, i_f4, gi_GM_Glockenspiel_sine
a_signal = a_signal + a_p4
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  11  Music Box
gk_GM_Music_Box_level chnexport "gk_GM_Music_Box_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Music_Box_midi_dynamic_range chnexport "gk_GM_Music_Box_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Music_Box_space_left_to_right chnexport "gk_GM_Music_Box_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Music_Box_decay_scale chnexport "gk_GM_Music_Box_decay_scale", 3 ; Multiplies all partial decay times.
gk_GM_Music_Box_mallet_hardness chnexport "gk_GM_Music_Box_mallet_hardness", 3 ; Multiplies the strike noise cut-off.
gk_GM_Music_Box_level init 0
gk_GM_Music_Box_midi_dynamic_range init 20
gk_GM_Music_Box_space_left_to_right init 0.5
gk_GM_Music_Box_decay_scale init 1.0
gk_GM_Music_Box_mallet_hardness init 1.0
gi_GM_Music_Box_sine ftgen 0, 0, 65537, 10, 1
instr GM_Music_Box
; General MIDI program 11: Music Box.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Music_Box_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Music_Box_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 66.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Music_Box_level)
; Modal synthesis: each partial is an exponentially decaying sinusoid
; with its own decay, plus a short filtered noise strike.
i_decay_scale = i(gk_GM_Music_Box_decay_scale)
i_mallet_hardness = i(gk_GM_Music_Box_mallet_hardness)
i_decay = 1.8 * i_decay_scale * limit(1500 / i_frequency, 0.2, 5) ^ 0.4
i_decay limit i_decay, 0.08, 20.0
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.04
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

a_noise rand 1
a_strike_envelope transeg 1, 0.002, -4, 0
a_strike butterlp a_noise * a_strike_envelope, limit(7000 * i_mallet_hardness * (0.6 + 0.8 * i_velocity), 200, 18000)
a_signal = a_strike * 0.3
i_f1 = i_frequency * 1 * (1 + random:i(-0.0006, 0.0006))
i_a1 = (i_f1 < 16000 ? 1 : 0)
a_env1 transeg 1, i_decay * 1, -7, 0
a_p1 poscil i_a1 * a_env1, i_f1, gi_GM_Music_Box_sine
a_signal = a_signal + a_p1
i_f2 = i_frequency * 2.76 * (1 + random:i(-0.0006, 0.0006))
i_a2 = (i_f2 < 16000 ? 0.3 : 0)
a_env2 transeg 1, i_decay * 0.5, -7, 0
a_p2 poscil i_a2 * a_env2, i_f2, gi_GM_Music_Box_sine
a_signal = a_signal + a_p2
i_f3 = i_frequency * 5.4 * (1 + random:i(-0.0006, 0.0006))
i_a3 = (i_f3 < 16000 ? 0.12 : 0)
a_env3 transeg 1, i_decay * 0.3, -7, 0
a_p3 poscil i_a3 * a_env3, i_f3, gi_GM_Music_Box_sine
a_signal = a_signal + a_p3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  12  Vibraphone
gk_GM_Vibraphone_level chnexport "gk_GM_Vibraphone_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Vibraphone_midi_dynamic_range chnexport "gk_GM_Vibraphone_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Vibraphone_space_left_to_right chnexport "gk_GM_Vibraphone_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Vibraphone_decay_scale chnexport "gk_GM_Vibraphone_decay_scale", 3 ; Multiplies all partial decay times.
gk_GM_Vibraphone_mallet_hardness chnexport "gk_GM_Vibraphone_mallet_hardness", 3 ; Multiplies the strike noise cut-off.
gk_GM_Vibraphone_tremolo_rate chnexport "gk_GM_Vibraphone_tremolo_rate", 3 ; Tremolo (motor) rate in Hz.
gk_GM_Vibraphone_tremolo_depth chnexport "gk_GM_Vibraphone_tremolo_depth", 3 ; Tremolo depth, 0 to 1.
gk_GM_Vibraphone_level init 0
gk_GM_Vibraphone_midi_dynamic_range init 20
gk_GM_Vibraphone_space_left_to_right init 0.5
gk_GM_Vibraphone_decay_scale init 1.0
gk_GM_Vibraphone_mallet_hardness init 1.0
gk_GM_Vibraphone_tremolo_rate init 4.5
gk_GM_Vibraphone_tremolo_depth init 0.5
gi_GM_Vibraphone_sine ftgen 0, 0, 65537, 10, 1
instr GM_Vibraphone
; General MIDI program 12: Vibraphone.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Vibraphone_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Vibraphone_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 64.7
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Vibraphone_level)
; Modal synthesis: each partial is an exponentially decaying sinusoid
; with its own decay, plus a short filtered noise strike.
i_decay_scale = i(gk_GM_Vibraphone_decay_scale)
i_mallet_hardness = i(gk_GM_Vibraphone_mallet_hardness)
i_decay = 5.0 * i_decay_scale * limit(440 / i_frequency, 0.2, 5) ^ 0.4
i_decay limit i_decay, 0.08, 20.0
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.04
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

a_noise rand 1
a_strike_envelope transeg 1, 0.003, -4, 0
a_strike butterlp a_noise * a_strike_envelope, limit(2500 * i_mallet_hardness * (0.6 + 0.8 * i_velocity), 200, 18000)
a_signal = a_strike * 0.2
i_f1 = i_frequency * 1 * (1 + random:i(-0.0006, 0.0006))
i_a1 = (i_f1 < 16000 ? 1 : 0)
a_env1 transeg 1, i_decay * 1, -7, 0
a_p1 poscil i_a1 * a_env1, i_f1, gi_GM_Vibraphone_sine
a_signal = a_signal + a_p1
i_f2 = i_frequency * 4.0 * (1 + random:i(-0.0006, 0.0006))
i_a2 = (i_f2 < 16000 ? 0.35 : 0)
a_env2 transeg 1, i_decay * 0.6, -7, 0
a_p2 poscil i_a2 * a_env2, i_f2, gi_GM_Vibraphone_sine
a_signal = a_signal + a_p2
i_f3 = i_frequency * 10.0 * (1 + random:i(-0.0006, 0.0006))
i_a3 = (i_f3 < 16000 ? 0.08 : 0)
a_env3 transeg 1, i_decay * 0.3, -7, 0
a_p3 poscil i_a3 * a_env3, i_f3, gi_GM_Vibraphone_sine
a_signal = a_signal + a_p3
k_tremolo lfo i(gk_GM_Vibraphone_tremolo_depth) / 2, gk_GM_Vibraphone_tremolo_rate, 0
a_signal = a_signal * (1 - i(gk_GM_Vibraphone_tremolo_depth) / 2 + k_tremolo)
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  13  Marimba
gk_GM_Marimba_level chnexport "gk_GM_Marimba_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Marimba_midi_dynamic_range chnexport "gk_GM_Marimba_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Marimba_space_left_to_right chnexport "gk_GM_Marimba_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Marimba_decay_scale chnexport "gk_GM_Marimba_decay_scale", 3 ; Multiplies all partial decay times.
gk_GM_Marimba_mallet_hardness chnexport "gk_GM_Marimba_mallet_hardness", 3 ; Multiplies the strike noise cut-off.
gk_GM_Marimba_level init 0
gk_GM_Marimba_midi_dynamic_range init 20
gk_GM_Marimba_space_left_to_right init 0.5
gk_GM_Marimba_decay_scale init 1.0
gk_GM_Marimba_mallet_hardness init 1.0
gi_GM_Marimba_sine ftgen 0, 0, 65537, 10, 1
instr GM_Marimba
; General MIDI program 13: Marimba.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Marimba_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Marimba_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 66.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Marimba_level)
; Modal synthesis: each partial is an exponentially decaying sinusoid
; with its own decay, plus a short filtered noise strike.
i_decay_scale = i(gk_GM_Marimba_decay_scale)
i_mallet_hardness = i(gk_GM_Marimba_mallet_hardness)
i_decay = 0.9 * i_decay_scale * limit(330 / i_frequency, 0.2, 5) ^ 0.8
i_decay limit i_decay, 0.08, 20.0
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.04
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

a_noise rand 1
a_strike_envelope transeg 1, 0.003, -4, 0
a_strike butterlp a_noise * a_strike_envelope, limit(2500 * i_mallet_hardness * (0.6 + 0.8 * i_velocity), 200, 18000)
a_signal = a_strike * 0.35
i_f1 = i_frequency * 1 * (1 + random:i(-0.0006, 0.0006))
i_a1 = (i_f1 < 16000 ? 1 : 0)
a_env1 transeg 1, i_decay * 1, -7, 0
a_p1 poscil i_a1 * a_env1, i_f1, gi_GM_Marimba_sine
a_signal = a_signal + a_p1
i_f2 = i_frequency * 4.0 * (1 + random:i(-0.0006, 0.0006))
i_a2 = (i_f2 < 16000 ? 0.45 : 0)
a_env2 transeg 1, i_decay * 0.35, -7, 0
a_p2 poscil i_a2 * a_env2, i_f2, gi_GM_Marimba_sine
a_signal = a_signal + a_p2
i_f3 = i_frequency * 10.0 * (1 + random:i(-0.0006, 0.0006))
i_a3 = (i_f3 < 16000 ? 0.15 : 0)
a_env3 transeg 1, i_decay * 0.2, -7, 0
a_p3 poscil i_a3 * a_env3, i_f3, gi_GM_Marimba_sine
a_signal = a_signal + a_p3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  14  Xylophone
gk_GM_Xylophone_level chnexport "gk_GM_Xylophone_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Xylophone_midi_dynamic_range chnexport "gk_GM_Xylophone_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Xylophone_space_left_to_right chnexport "gk_GM_Xylophone_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Xylophone_decay_scale chnexport "gk_GM_Xylophone_decay_scale", 3 ; Multiplies all partial decay times.
gk_GM_Xylophone_mallet_hardness chnexport "gk_GM_Xylophone_mallet_hardness", 3 ; Multiplies the strike noise cut-off.
gk_GM_Xylophone_level init 0
gk_GM_Xylophone_midi_dynamic_range init 20
gk_GM_Xylophone_space_left_to_right init 0.5
gk_GM_Xylophone_decay_scale init 1.0
gk_GM_Xylophone_mallet_hardness init 1.0
gi_GM_Xylophone_sine ftgen 0, 0, 65537, 10, 1
instr GM_Xylophone
; General MIDI program 14: Xylophone.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Xylophone_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Xylophone_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 65.0
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Xylophone_level)
; Modal synthesis: each partial is an exponentially decaying sinusoid
; with its own decay, plus a short filtered noise strike.
i_decay_scale = i(gk_GM_Xylophone_decay_scale)
i_mallet_hardness = i(gk_GM_Xylophone_mallet_hardness)
i_decay = 0.45 * i_decay_scale * limit(880 / i_frequency, 0.2, 5) ^ 0.6
i_decay limit i_decay, 0.08, 20.0
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.04
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

a_noise rand 1
a_strike_envelope transeg 1, 0.003, -4, 0
a_strike butterlp a_noise * a_strike_envelope, limit(6000 * i_mallet_hardness * (0.6 + 0.8 * i_velocity), 200, 18000)
a_signal = a_strike * 0.5
i_f1 = i_frequency * 1 * (1 + random:i(-0.0006, 0.0006))
i_a1 = (i_f1 < 16000 ? 1 : 0)
a_env1 transeg 1, i_decay * 1, -7, 0
a_p1 poscil i_a1 * a_env1, i_f1, gi_GM_Xylophone_sine
a_signal = a_signal + a_p1
i_f2 = i_frequency * 3.0 * (1 + random:i(-0.0006, 0.0006))
i_a2 = (i_f2 < 16000 ? 0.5 : 0)
a_env2 transeg 1, i_decay * 0.5, -7, 0
a_p2 poscil i_a2 * a_env2, i_f2, gi_GM_Xylophone_sine
a_signal = a_signal + a_p2
i_f3 = i_frequency * 6.0 * (1 + random:i(-0.0006, 0.0006))
i_a3 = (i_f3 < 16000 ? 0.2 : 0)
a_env3 transeg 1, i_decay * 0.3, -7, 0
a_p3 poscil i_a3 * a_env3, i_f3, gi_GM_Xylophone_sine
a_signal = a_signal + a_p3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  15  Tubular Bells
gk_GM_Tubular_Bells_level chnexport "gk_GM_Tubular_Bells_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Tubular_Bells_midi_dynamic_range chnexport "gk_GM_Tubular_Bells_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Tubular_Bells_space_left_to_right chnexport "gk_GM_Tubular_Bells_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Tubular_Bells_decay_scale chnexport "gk_GM_Tubular_Bells_decay_scale", 3 ; Multiplies all partial decay times.
gk_GM_Tubular_Bells_mallet_hardness chnexport "gk_GM_Tubular_Bells_mallet_hardness", 3 ; Multiplies the strike noise cut-off.
gk_GM_Tubular_Bells_level init 0
gk_GM_Tubular_Bells_midi_dynamic_range init 20
gk_GM_Tubular_Bells_space_left_to_right init 0.5
gk_GM_Tubular_Bells_decay_scale init 1.0
gk_GM_Tubular_Bells_mallet_hardness init 1.0
gi_GM_Tubular_Bells_sine ftgen 0, 0, 65537, 10, 1
instr GM_Tubular_Bells
; General MIDI program 15: Tubular Bells.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Tubular_Bells_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Tubular_Bells_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 64.0
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Tubular_Bells_level)
; Modal synthesis: each partial is an exponentially decaying sinusoid
; with its own decay, plus a short filtered noise strike.
i_decay_scale = i(gk_GM_Tubular_Bells_decay_scale)
i_mallet_hardness = i(gk_GM_Tubular_Bells_mallet_hardness)
i_decay = 6.0 * i_decay_scale * limit(440 / i_frequency, 0.2, 5) ^ 0.3
i_decay limit i_decay, 0.08, 20.0
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.04
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

a_noise rand 1
a_strike_envelope transeg 1, 0.006, -4, 0
a_strike butterlp a_noise * a_strike_envelope, limit(3000 * i_mallet_hardness * (0.6 + 0.8 * i_velocity), 200, 18000)
a_signal = a_strike * 0.4
i_f1 = i_frequency * 1.0 * (1 + random:i(-0.0006, 0.0006))
i_a1 = (i_f1 < 16000 ? 0.3 : 0)
a_env1 transeg 1, i_decay * 1.0, -7, 0
a_p1 poscil i_a1 * a_env1, i_f1, gi_GM_Tubular_Bells_sine
a_signal = a_signal + a_p1
i_f2 = i_frequency * 0.62 * (1 + random:i(-0.0006, 0.0006))
i_a2 = (i_f2 < 16000 ? 0.15 : 0)
a_env2 transeg 1, i_decay * 0.9, -7, 0
a_p2 poscil i_a2 * a_env2, i_f2, gi_GM_Tubular_Bells_sine
a_signal = a_signal + a_p2
i_f3 = i_frequency * 1.21 * (1 + random:i(-0.0006, 0.0006))
i_a3 = (i_f3 < 16000 ? 0.3 : 0)
a_env3 transeg 1, i_decay * 0.8, -7, 0
a_p3 poscil i_a3 * a_env3, i_f3, gi_GM_Tubular_Bells_sine
a_signal = a_signal + a_p3
i_f4 = i_frequency * 2.0 * (1 + random:i(-0.0006, 0.0006))
i_a4 = (i_f4 < 16000 ? 1.0 : 0)
a_env4 transeg 1, i_decay * 0.7, -7, 0
a_p4 poscil i_a4 * a_env4, i_f4, gi_GM_Tubular_Bells_sine
a_signal = a_signal + a_p4
i_f5 = i_frequency * 2.99 * (1 + random:i(-0.0006, 0.0006))
i_a5 = (i_f5 < 16000 ? 0.7 : 0)
a_env5 transeg 1, i_decay * 0.5, -7, 0
a_p5 poscil i_a5 * a_env5, i_f5, gi_GM_Tubular_Bells_sine
a_signal = a_signal + a_p5
i_f6 = i_frequency * 4.17 * (1 + random:i(-0.0006, 0.0006))
i_a6 = (i_f6 < 16000 ? 0.5 : 0)
a_env6 transeg 1, i_decay * 0.35, -7, 0
a_p6 poscil i_a6 * a_env6, i_f6, gi_GM_Tubular_Bells_sine
a_signal = a_signal + a_p6
i_f7 = i_frequency * 5.56 * (1 + random:i(-0.0006, 0.0006))
i_a7 = (i_f7 < 16000 ? 0.3 : 0)
a_env7 transeg 1, i_decay * 0.25, -7, 0
a_p7 poscil i_a7 * a_env7, i_f7, gi_GM_Tubular_Bells_sine
a_signal = a_signal + a_p7
i_f8 = i_frequency * 7.14 * (1 + random:i(-0.0006, 0.0006))
i_a8 = (i_f8 < 16000 ? 0.15 : 0)
a_env8 transeg 1, i_decay * 0.15, -7, 0
a_p8 poscil i_a8 * a_env8, i_f8, gi_GM_Tubular_Bells_sine
a_signal = a_signal + a_p8
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  16  Dulcimer
gk_GM_Dulcimer_level chnexport "gk_GM_Dulcimer_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Dulcimer_midi_dynamic_range chnexport "gk_GM_Dulcimer_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Dulcimer_space_left_to_right chnexport "gk_GM_Dulcimer_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Dulcimer_decay_scale chnexport "gk_GM_Dulcimer_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Dulcimer_pick_brightness chnexport "gk_GM_Dulcimer_pick_brightness", 3 ; Multiplies the pick low-pass cut-off.
gk_GM_Dulcimer_level init 0
gk_GM_Dulcimer_midi_dynamic_range init 20
gk_GM_Dulcimer_space_left_to_right init 0.5
gk_GM_Dulcimer_decay_scale init 1.0
gk_GM_Dulcimer_pick_brightness init 1.0
instr GM_Dulcimer
; General MIDI program 16: Dulcimer.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Dulcimer_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Dulcimer_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 56.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Dulcimer_level)
; Karplus-Strong string. Decay shortens with pitch, as on a real string,
; and the pick brightness follows velocity.
i_decay_scale = i(gk_GM_Dulcimer_decay_scale)
i_pick_brightness = i(gk_GM_Dulcimer_pick_brightness)
i_decay = 3.0 * i_decay_scale * limit(220.0 / i_frequency, 0.1, 6) ^ 0.5
i_decay limit i_decay, 0.15, 20
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 6
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.02
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
a_string_2 pluck 1, k_frequency * (1 + 0.003), i_frequency * (1 + 0.003), 0, 6
a_string = (a_string + a_string_2) * 0.6
; Pick brightness.
a_string tonex a_string, limit(6000 * i_pick_brightness * (0.5 + i_velocity), 300, 16000), 1
a_string tonex a_string, limit(i_frequency * 12, 500, 16000), 1
; Pick snap.
a_snap_noise rand 1
a_snap_envelope transeg 0.2 * (0.3 + i_velocity), 0.003, -4, 0
a_snap butterbp a_snap_noise * a_snap_envelope, 3000, 3000
a_string = a_string + a_snap
a_signal = a_string
a_body1 reson a_signal, 250, 90, 1
a_body2 reson a_signal, 500, 150, 1
a_signal = a_signal + 0.3 * a_body1 + 0.2 * a_body2
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  17  Drawbar Organ
gk_GM_Drawbar_Organ_level chnexport "gk_GM_Drawbar_Organ_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Drawbar_Organ_midi_dynamic_range chnexport "gk_GM_Drawbar_Organ_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Drawbar_Organ_space_left_to_right chnexport "gk_GM_Drawbar_Organ_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Drawbar_Organ_rotary_rate chnexport "gk_GM_Drawbar_Organ_rotary_rate", 3 ; Rotary speaker rate in Hz.
gk_GM_Drawbar_Organ_drive chnexport "gk_GM_Drawbar_Organ_drive", 3 ; Overdrive amount, 0 for clean.
gk_GM_Drawbar_Organ_level init 0
gk_GM_Drawbar_Organ_midi_dynamic_range init 20
gk_GM_Drawbar_Organ_space_left_to_right init 0.5
gk_GM_Drawbar_Organ_rotary_rate init 0.8
gk_GM_Drawbar_Organ_drive init 0.0
gi_GM_Drawbar_Organ_sine ftgen 0, 0, 65537, 10, 1
instr GM_Drawbar_Organ
; General MIDI program 17: Drawbar Organ.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Drawbar_Organ_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Drawbar_Organ_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 71.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Drawbar_Organ_level)
; Nine additive drawbars, a key click, and a rotary-speaker chorus.
i_drive = i(gk_GM_Drawbar_Organ_drive)
i_attack = 0.006
i_sustain = p3
i_release = 0.03
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

a_rotary_lfo poscil 0.9, gk_GM_Drawbar_Organ_rotary_rate, gi_GM_Drawbar_Organ_sine
a_signal = 0
a_h0_5 poscil 1.0000, i_frequency * 0.5, gi_GM_Drawbar_Organ_sine ; 16'
a_signal = a_signal + a_h0_5
a_h1_5 poscil 1.0000, i_frequency * 1.5, gi_GM_Drawbar_Organ_sine ; 5 1/3'
a_signal = a_signal + a_h1_5
a_h1 poscil 1.0000, i_frequency * 1, gi_GM_Drawbar_Organ_sine ; 8'
a_signal = a_signal + a_h1
; Key click.
a_click_noise rand 1
a_click_envelope transeg 0.3, 0.004, -4, 0
a_click butterbp a_click_noise * a_click_envelope, 2500, 2000
a_signal = a_signal + a_click
; Tone-wheel leakage keeps it from sounding sterile.
a_leak poscil 0.01, i_frequency * 0.5, gi_GM_Drawbar_Organ_sine
a_signal = a_signal + a_leak
if i_drive > 0 then
a_signal = tanh(a_signal * (1 + 4 * i_drive)) / (1 + i_drive)
endif
; Rotary speaker: a modulated delay mixed with the direct sound.
a_rotary vdelay3 a_signal, 4 + a_rotary_lfo, 20
a_signal = (a_signal + a_rotary) * 0.5
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  18  Percussive Organ
gk_GM_Percussive_Organ_level chnexport "gk_GM_Percussive_Organ_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Percussive_Organ_midi_dynamic_range chnexport "gk_GM_Percussive_Organ_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Percussive_Organ_space_left_to_right chnexport "gk_GM_Percussive_Organ_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Percussive_Organ_rotary_rate chnexport "gk_GM_Percussive_Organ_rotary_rate", 3 ; Rotary speaker rate in Hz.
gk_GM_Percussive_Organ_drive chnexport "gk_GM_Percussive_Organ_drive", 3 ; Overdrive amount, 0 for clean.
gk_GM_Percussive_Organ_level init 0
gk_GM_Percussive_Organ_midi_dynamic_range init 20
gk_GM_Percussive_Organ_space_left_to_right init 0.5
gk_GM_Percussive_Organ_rotary_rate init 0.8
gk_GM_Percussive_Organ_drive init 0.0
gi_GM_Percussive_Organ_sine ftgen 0, 0, 65537, 10, 1
instr GM_Percussive_Organ
; General MIDI program 18: Percussive Organ.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Percussive_Organ_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Percussive_Organ_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 70.9
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Percussive_Organ_level)
; Nine additive drawbars, a key click, and a rotary-speaker chorus.
i_drive = i(gk_GM_Percussive_Organ_drive)
i_attack = 0.006
i_sustain = p3
i_release = 0.03
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

a_rotary_lfo poscil 0.9, gk_GM_Percussive_Organ_rotary_rate, gi_GM_Percussive_Organ_sine
a_signal = 0
a_h0_5 poscil 1.0000, i_frequency * 0.5, gi_GM_Percussive_Organ_sine ; 16'
a_signal = a_signal + a_h0_5
a_h1 poscil 1.0000, i_frequency * 1, gi_GM_Percussive_Organ_sine ; 8'
a_signal = a_signal + a_h1
a_h2 poscil 1.0000, i_frequency * 2, gi_GM_Percussive_Organ_sine ; 4'
a_signal = a_signal + a_h2
; Second/third harmonic percussion with its own fast decay.
a_percussion_envelope transeg 0.5, 0.35, -5, 0
a_percussion poscil a_percussion_envelope, i_frequency * 3, gi_GM_Percussive_Organ_sine
a_signal = a_signal + a_percussion
; Key click.
a_click_noise rand 1
a_click_envelope transeg 0.3, 0.004, -4, 0
a_click butterbp a_click_noise * a_click_envelope, 2500, 2000
a_signal = a_signal + a_click
; Tone-wheel leakage keeps it from sounding sterile.
a_leak poscil 0.01, i_frequency * 0.5, gi_GM_Percussive_Organ_sine
a_signal = a_signal + a_leak
if i_drive > 0 then
a_signal = tanh(a_signal * (1 + 4 * i_drive)) / (1 + i_drive)
endif
; Rotary speaker: a modulated delay mixed with the direct sound.
a_rotary vdelay3 a_signal, 4 + a_rotary_lfo, 20
a_signal = (a_signal + a_rotary) * 0.5
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  19  Rock Organ
gk_GM_Rock_Organ_level chnexport "gk_GM_Rock_Organ_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Rock_Organ_midi_dynamic_range chnexport "gk_GM_Rock_Organ_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Rock_Organ_space_left_to_right chnexport "gk_GM_Rock_Organ_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Rock_Organ_rotary_rate chnexport "gk_GM_Rock_Organ_rotary_rate", 3 ; Rotary speaker rate in Hz.
gk_GM_Rock_Organ_drive chnexport "gk_GM_Rock_Organ_drive", 3 ; Overdrive amount, 0 for clean.
gk_GM_Rock_Organ_level init -4
gk_GM_Rock_Organ_midi_dynamic_range init 20
gk_GM_Rock_Organ_space_left_to_right init 0.5
gk_GM_Rock_Organ_rotary_rate init 5.5
gk_GM_Rock_Organ_drive init 0.4
gi_GM_Rock_Organ_sine ftgen 0, 0, 65537, 10, 1
instr GM_Rock_Organ
; General MIDI program 19: Rock Organ.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Rock_Organ_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Rock_Organ_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 53.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Rock_Organ_level)
; Nine additive drawbars, a key click, and a rotary-speaker chorus.
i_drive = i(gk_GM_Rock_Organ_drive)
i_attack = 0.006
i_sustain = p3
i_release = 0.03
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

a_rotary_lfo poscil 0.5, gk_GM_Rock_Organ_rotary_rate, gi_GM_Rock_Organ_sine
a_signal = 0
a_h0_5 poscil 1.0000, i_frequency * 0.5, gi_GM_Rock_Organ_sine ; 16'
a_signal = a_signal + a_h0_5
a_h1_5 poscil 1.0000, i_frequency * 1.5, gi_GM_Rock_Organ_sine ; 5 1/3'
a_signal = a_signal + a_h1_5
a_h1 poscil 1.0000, i_frequency * 1, gi_GM_Rock_Organ_sine ; 8'
a_signal = a_signal + a_h1
a_h2 poscil 0.7500, i_frequency * 2, gi_GM_Rock_Organ_sine ; 4'
a_signal = a_signal + a_h2
a_h4 poscil 0.5000, i_frequency * 4, gi_GM_Rock_Organ_sine ; 2'
a_signal = a_signal + a_h4
a_h8 poscil 0.3750, i_frequency * 8, gi_GM_Rock_Organ_sine ; 1'
a_signal = a_signal + a_h8
; Key click.
a_click_noise rand 1
a_click_envelope transeg 0.3, 0.004, -4, 0
a_click butterbp a_click_noise * a_click_envelope, 2500, 2000
a_signal = a_signal + a_click
; Tone-wheel leakage keeps it from sounding sterile.
a_leak poscil 0.01, i_frequency * 0.5, gi_GM_Rock_Organ_sine
a_signal = a_signal + a_leak
if i_drive > 0 then
a_signal = tanh(a_signal * (1 + 4 * i_drive)) / (1 + i_drive)
endif
; Speaker cabinet: rolls off the harmonics added by the overdrive.
a_signal tonex a_signal, 3600, 2
a_signal butterhp a_signal, 60
; Rotary speaker: a modulated delay mixed with the direct sound.
a_rotary vdelay3 a_signal, 4 + a_rotary_lfo, 20
a_signal = (a_signal + a_rotary) * 0.5
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  20  Church Organ
gk_GM_Church_Organ_level chnexport "gk_GM_Church_Organ_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Church_Organ_midi_dynamic_range chnexport "gk_GM_Church_Organ_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Church_Organ_space_left_to_right chnexport "gk_GM_Church_Organ_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Church_Organ_wind chnexport "gk_GM_Church_Organ_wind", 3 ; Random pitch unsteadiness of the wind supply.
gk_GM_Church_Organ_level init -3
gk_GM_Church_Organ_midi_dynamic_range init 20
gk_GM_Church_Organ_space_left_to_right init 0.5
gk_GM_Church_Organ_wind init 0.0015
gi_GM_Church_Organ_cosine ftgen 0, 0, 65537, 11, 1
instr GM_Church_Organ
; General MIDI program 20: Church Organ.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Church_Organ_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Church_Organ_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 54.9
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Church_Organ_level)
; Several pipe ranks, each a harmonic series with its own roll-off,
; a chiff at the attack, and a slightly unsteady wind supply.
i_attack = 0.05
i_sustain = p3
i_release = 0.12
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_wind jitter i(gk_GM_Church_Organ_wind), 1, 5
k_frequency = i_frequency * (1 + k_wind)
a_signal = 0
i_nh1 = int(limit(sr / 2.2 / (i_frequency * 1), 1, 20))
a_rank1 gbuzz 0.5, k_frequency * 1, i_nh1, 1, 0.6, gi_GM_Church_Organ_cosine
a_signal = a_signal + a_rank1
i_nh2 = int(limit(sr / 2.2 / (i_frequency * 2), 1, 20))
a_rank2 gbuzz 0.3, k_frequency * 2, i_nh2, 1, 0.55, gi_GM_Church_Organ_cosine
a_signal = a_signal + a_rank2
i_nh3 = int(limit(sr / 2.2 / (i_frequency * 0.5), 1, 20))
a_rank3 gbuzz 0.3, k_frequency * 0.5, i_nh3, 1, 0.5, gi_GM_Church_Organ_cosine
a_signal = a_signal + a_rank3
i_nh4 = int(limit(sr / 2.2 / (i_frequency * 4), 1, 20))
a_rank4 gbuzz 0.1, k_frequency * 4, i_nh4, 1, 0.45, gi_GM_Church_Organ_cosine
a_signal = a_signal + a_rank4
i_nh5 = int(limit(sr / 2.2 / (i_frequency * 3), 1, 20))
a_rank5 gbuzz 0.08, k_frequency * 3, i_nh5, 1, 0.4, gi_GM_Church_Organ_cosine
a_signal = a_signal + a_rank5
; Chiff: band-passed noise around the second harmonic at the attack.
a_chiff_noise rand 1
a_chiff_envelope transeg 0, 0.01, 2, 0.25, 0.06, -3, 0
a_chiff butterbp a_chiff_noise * a_chiff_envelope, limit(i_frequency * 2, 100, 12000), limit(i_frequency, 50, 4000)
a_signal = a_signal + a_chiff
a_signal tonex a_signal, limit(i_frequency * 8, 2000, 9000), 2
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  21  Reed Organ
gk_GM_Reed_Organ_level chnexport "gk_GM_Reed_Organ_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Reed_Organ_midi_dynamic_range chnexport "gk_GM_Reed_Organ_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Reed_Organ_space_left_to_right chnexport "gk_GM_Reed_Organ_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Reed_Organ_vibrato_depth chnexport "gk_GM_Reed_Organ_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Reed_Organ_vibrato_rate chnexport "gk_GM_Reed_Organ_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Reed_Organ_breath chnexport "gk_GM_Reed_Organ_breath", 3 ; Breath noise level.
gk_GM_Reed_Organ_level init 0
gk_GM_Reed_Organ_midi_dynamic_range init 20
gk_GM_Reed_Organ_space_left_to_right init 0.5
gk_GM_Reed_Organ_vibrato_depth init 0.0
gk_GM_Reed_Organ_vibrato_rate init 5.5
gk_GM_Reed_Organ_breath init 0.0
gi_GM_Reed_Organ_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Reed_Organ_cosine ftgen 0, 0, 65537, 11, 1
instr GM_Reed_Organ
; General MIDI program 21: Reed Organ.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Reed_Organ_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Reed_Organ_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 52.9
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Reed_Organ_level)
; Band-limited reed source through fixed formant resonances, with
; breath noise and a delayed vibrato.
i_breath = i(gk_GM_Reed_Organ_breath)
i_attack = 0.08
i_sustain = p3
i_release = 0.1
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.3, 0, 0.4, 1, 1, 1
k_vibrato vibr gk_GM_Reed_Organ_vibrato_depth * k_vibrato_envelope, gk_GM_Reed_Organ_vibrato_rate, gi_GM_Reed_Organ_sine
k_scoop transeg 0.0, 0.08, -3, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_scoop) / 12)
a_source = 0
i_nh1 = int(limit(sr / 2.2 / (i_frequency * 1), 1, 80))
a_voice1 gbuzz 0.5, k_frequency * 1, i_nh1, 1, 0.8, gi_GM_Reed_Organ_cosine
a_source = a_source + a_voice1
i_nh2 = int(limit(sr / 2.2 / (i_frequency * 1.003), 1, 80))
a_voice2 gbuzz 0.5, k_frequency * 1.003, i_nh2, 1, 0.8, gi_GM_Reed_Organ_cosine
a_source = a_source + a_voice2
a_signal = a_source * 0.3
a_formant1 reson a_source, 500, 150, 1
a_signal = a_signal + a_formant1 * 0.3
a_formant2 reson a_source, 1400, 300, 1
a_signal = a_signal + a_formant2 * 0.4
a_signal tonex a_signal, limit(i_frequency * 8, 800, 14000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  22  Accordion
gk_GM_Accordion_level chnexport "gk_GM_Accordion_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Accordion_midi_dynamic_range chnexport "gk_GM_Accordion_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Accordion_space_left_to_right chnexport "gk_GM_Accordion_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Accordion_vibrato_depth chnexport "gk_GM_Accordion_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Accordion_vibrato_rate chnexport "gk_GM_Accordion_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Accordion_breath chnexport "gk_GM_Accordion_breath", 3 ; Breath noise level.
gk_GM_Accordion_level init 0
gk_GM_Accordion_midi_dynamic_range init 20
gk_GM_Accordion_space_left_to_right init 0.5
gk_GM_Accordion_vibrato_depth init 0.0
gk_GM_Accordion_vibrato_rate init 5.5
gk_GM_Accordion_breath init 0.0
gi_GM_Accordion_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Accordion_cosine ftgen 0, 0, 65537, 11, 1
instr GM_Accordion
; General MIDI program 22: Accordion.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Accordion_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Accordion_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 54.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Accordion_level)
; Band-limited reed source through fixed formant resonances, with
; breath noise and a delayed vibrato.
i_breath = i(gk_GM_Accordion_breath)
i_attack = 0.04
i_sustain = p3
i_release = 0.06
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.3, 0, 0.4, 1, 1, 1
k_vibrato vibr gk_GM_Accordion_vibrato_depth * k_vibrato_envelope, gk_GM_Accordion_vibrato_rate, gi_GM_Accordion_sine
k_scoop transeg 0.0, 0.08, -3, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_scoop) / 12)
a_source = 0
i_nh1 = int(limit(sr / 2.2 / (i_frequency * 1), 1, 80))
a_voice1 gbuzz 0.5, k_frequency * 1, i_nh1, 1, 0.85, gi_GM_Accordion_cosine
a_source = a_source + a_voice1
i_nh2 = int(limit(sr / 2.2 / (i_frequency * 1.0045), 1, 80))
a_voice2 gbuzz 0.5, k_frequency * 1.0045, i_nh2, 1, 0.85, gi_GM_Accordion_cosine
a_source = a_source + a_voice2
i_nh3 = int(limit(sr / 2.2 / (i_frequency * 0.9965), 1, 80))
a_voice3 gbuzz 0.3, k_frequency * 0.9965, i_nh3, 1, 0.85, gi_GM_Accordion_cosine
a_source = a_source + a_voice3
a_signal = a_source * 0.3
a_formant1 reson a_source, 600, 200, 1
a_signal = a_signal + a_formant1 * 0.4
a_formant2 reson a_source, 1600, 400, 1
a_signal = a_signal + a_formant2 * 0.4
a_formant3 reson a_source, 3000, 600, 1
a_signal = a_signal + a_formant3 * 0.2
a_signal tonex a_signal, limit(i_frequency * 10, 800, 14000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  23  Harmonica
gk_GM_Harmonica_level chnexport "gk_GM_Harmonica_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Harmonica_midi_dynamic_range chnexport "gk_GM_Harmonica_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Harmonica_space_left_to_right chnexport "gk_GM_Harmonica_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Harmonica_vibrato_depth chnexport "gk_GM_Harmonica_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Harmonica_vibrato_rate chnexport "gk_GM_Harmonica_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Harmonica_breath chnexport "gk_GM_Harmonica_breath", 3 ; Breath noise level.
gk_GM_Harmonica_level init 0
gk_GM_Harmonica_midi_dynamic_range init 20
gk_GM_Harmonica_space_left_to_right init 0.5
gk_GM_Harmonica_vibrato_depth init 0.2
gk_GM_Harmonica_vibrato_rate init 5.5
gk_GM_Harmonica_breath init 0.05
gi_GM_Harmonica_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Harmonica_cosine ftgen 0, 0, 65537, 11, 1
instr GM_Harmonica
; General MIDI program 23: Harmonica.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Harmonica_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Harmonica_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 50.7
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Harmonica_level)
; Band-limited reed source through fixed formant resonances, with
; breath noise and a delayed vibrato.
i_breath = i(gk_GM_Harmonica_breath)
i_attack = 0.03
i_sustain = p3
i_release = 0.06
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.3, 0, 0.4, 1, 1, 1
k_vibrato vibr gk_GM_Harmonica_vibrato_depth * k_vibrato_envelope, gk_GM_Harmonica_vibrato_rate, gi_GM_Harmonica_sine
k_scoop transeg 0.0, 0.08, -3, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_scoop) / 12)
a_source = 0
i_nh1 = int(limit(sr / 2.2 / (i_frequency * 1), 1, 80))
a_voice1 gbuzz 0.8, k_frequency * 1, i_nh1, 1, 0.9, gi_GM_Harmonica_cosine
a_source = a_source + a_voice1
a_signal = a_source * 0.3
a_formant1 reson a_source, 1000, 300, 1
a_signal = a_signal + a_formant1 * 0.5
a_formant2 reson a_source, 2200, 500, 1
a_signal = a_signal + a_formant2 * 0.5
a_breath_noise rand 1
a_breath butterbp a_breath_noise, limit(i_frequency * 2, 100, 10000), limit(i_frequency * 1.5, 100, 6000)
a_signal = a_signal + a_breath * i_breath
a_signal tonex a_signal, limit(i_frequency * 10, 800, 14000), 1
a_signal butterhp a_signal, 300
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  24  Tango Accordion
gk_GM_Tango_Accordion_level chnexport "gk_GM_Tango_Accordion_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Tango_Accordion_midi_dynamic_range chnexport "gk_GM_Tango_Accordion_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Tango_Accordion_space_left_to_right chnexport "gk_GM_Tango_Accordion_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Tango_Accordion_vibrato_depth chnexport "gk_GM_Tango_Accordion_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Tango_Accordion_vibrato_rate chnexport "gk_GM_Tango_Accordion_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Tango_Accordion_breath chnexport "gk_GM_Tango_Accordion_breath", 3 ; Breath noise level.
gk_GM_Tango_Accordion_level init 0
gk_GM_Tango_Accordion_midi_dynamic_range init 20
gk_GM_Tango_Accordion_space_left_to_right init 0.5
gk_GM_Tango_Accordion_vibrato_depth init 0.15
gk_GM_Tango_Accordion_vibrato_rate init 6
gk_GM_Tango_Accordion_breath init 0.0
gi_GM_Tango_Accordion_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Tango_Accordion_cosine ftgen 0, 0, 65537, 11, 1
instr GM_Tango_Accordion
; General MIDI program 24: Tango Accordion.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Tango_Accordion_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Tango_Accordion_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 54.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Tango_Accordion_level)
; Band-limited reed source through fixed formant resonances, with
; breath noise and a delayed vibrato.
i_breath = i(gk_GM_Tango_Accordion_breath)
i_attack = 0.03
i_sustain = p3
i_release = 0.06
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.2, 0, 0.4, 1, 1, 1
k_vibrato vibr gk_GM_Tango_Accordion_vibrato_depth * k_vibrato_envelope, gk_GM_Tango_Accordion_vibrato_rate, gi_GM_Tango_Accordion_sine
k_scoop transeg 0.0, 0.08, -3, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_scoop) / 12)
a_source = 0
i_nh1 = int(limit(sr / 2.2 / (i_frequency * 1), 1, 80))
a_voice1 gbuzz 0.5, k_frequency * 1, i_nh1, 1, 0.9, gi_GM_Tango_Accordion_cosine
a_source = a_source + a_voice1
i_nh2 = int(limit(sr / 2.2 / (i_frequency * 1.007), 1, 80))
a_voice2 gbuzz 0.5, k_frequency * 1.007, i_nh2, 1, 0.9, gi_GM_Tango_Accordion_cosine
a_source = a_source + a_voice2
a_signal = a_source * 0.3
a_formant1 reson a_source, 700, 200, 1
a_signal = a_signal + a_formant1 * 0.4
a_formant2 reson a_source, 1800, 400, 1
a_signal = a_signal + a_formant2 * 0.5
a_formant3 reson a_source, 3500, 800, 1
a_signal = a_signal + a_formant3 * 0.3
a_signal tonex a_signal, limit(i_frequency * 10, 800, 14000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  25  Acoustic Guitar (nylon)
gk_GM_Acoustic_Guitar_nylon_level chnexport "gk_GM_Acoustic_Guitar_nylon_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Acoustic_Guitar_nylon_midi_dynamic_range chnexport "gk_GM_Acoustic_Guitar_nylon_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Acoustic_Guitar_nylon_space_left_to_right chnexport "gk_GM_Acoustic_Guitar_nylon_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Acoustic_Guitar_nylon_decay_scale chnexport "gk_GM_Acoustic_Guitar_nylon_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Acoustic_Guitar_nylon_pick_brightness chnexport "gk_GM_Acoustic_Guitar_nylon_pick_brightness", 3 ; Multiplies the pick low-pass cut-off.
gk_GM_Acoustic_Guitar_nylon_level init 0
gk_GM_Acoustic_Guitar_nylon_midi_dynamic_range init 20
gk_GM_Acoustic_Guitar_nylon_space_left_to_right init 0.5
gk_GM_Acoustic_Guitar_nylon_decay_scale init 1.0
gk_GM_Acoustic_Guitar_nylon_pick_brightness init 1.0
instr GM_Acoustic_Guitar_nylon
; General MIDI program 25: Acoustic Guitar (nylon).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Acoustic_Guitar_nylon_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Acoustic_Guitar_nylon_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 58.3
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Acoustic_Guitar_nylon_level)
; Karplus-Strong string. Decay shortens with pitch, as on a real string,
; and the pick brightness follows velocity.
i_decay_scale = i(gk_GM_Acoustic_Guitar_nylon_decay_scale)
i_pick_brightness = i(gk_GM_Acoustic_Guitar_nylon_pick_brightness)
i_decay = 3.0 * i_decay_scale * limit(220.0 / i_frequency, 0.1, 6) ^ 0.5
i_decay limit i_decay, 0.15, 20
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 6
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.02
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
; Pick brightness.
a_string tonex a_string, limit(2600 * i_pick_brightness * (0.5 + i_velocity), 300, 16000), 1
a_string tonex a_string, limit(i_frequency * 10, 500, 16000), 1
; Pick position comb filter.
a_comb delay a_string, 0.25 / i_frequency
a_string = a_string - a_comb * 0.6
a_signal = a_string
a_body1 reson a_signal, 100, 30, 1
a_body2 reson a_signal, 210, 60, 1
a_body3 reson a_signal, 400, 120, 1
a_signal = a_signal + 0.4 * a_body1 + 0.3 * a_body2 + 0.2 * a_body3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  26  Acoustic Guitar (steel)
gk_GM_Acoustic_Guitar_steel_level chnexport "gk_GM_Acoustic_Guitar_steel_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Acoustic_Guitar_steel_midi_dynamic_range chnexport "gk_GM_Acoustic_Guitar_steel_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Acoustic_Guitar_steel_space_left_to_right chnexport "gk_GM_Acoustic_Guitar_steel_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Acoustic_Guitar_steel_decay_scale chnexport "gk_GM_Acoustic_Guitar_steel_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Acoustic_Guitar_steel_pick_brightness chnexport "gk_GM_Acoustic_Guitar_steel_pick_brightness", 3 ; Multiplies the pick low-pass cut-off.
gk_GM_Acoustic_Guitar_steel_level init 0
gk_GM_Acoustic_Guitar_steel_midi_dynamic_range init 20
gk_GM_Acoustic_Guitar_steel_space_left_to_right init 0.5
gk_GM_Acoustic_Guitar_steel_decay_scale init 1.0
gk_GM_Acoustic_Guitar_steel_pick_brightness init 1.0
instr GM_Acoustic_Guitar_steel
; General MIDI program 26: Acoustic Guitar (steel).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Acoustic_Guitar_steel_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Acoustic_Guitar_steel_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 59.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Acoustic_Guitar_steel_level)
; Karplus-Strong string. Decay shortens with pitch, as on a real string,
; and the pick brightness follows velocity.
i_decay_scale = i(gk_GM_Acoustic_Guitar_steel_decay_scale)
i_pick_brightness = i(gk_GM_Acoustic_Guitar_steel_pick_brightness)
i_decay = 3.5 * i_decay_scale * limit(220.0 / i_frequency, 0.1, 6) ^ 0.5
i_decay limit i_decay, 0.15, 20
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 6
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.02
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
a_string_2 pluck 1, k_frequency * (1 + 0.0015), i_frequency * (1 + 0.0015), 0, 6
a_string = (a_string + a_string_2) * 0.6
; Pick brightness.
a_string tonex a_string, limit(6000 * i_pick_brightness * (0.5 + i_velocity), 300, 16000), 1
a_string tonex a_string, limit(i_frequency * 12, 500, 16000), 1
; Pick snap.
a_snap_noise rand 1
a_snap_envelope transeg 0.4 * (0.3 + i_velocity), 0.003, -4, 0
a_snap butterbp a_snap_noise * a_snap_envelope, 3000, 3000
a_string = a_string + a_snap
a_signal = a_string
a_body1 reson a_signal, 100, 30, 1
a_body2 reson a_signal, 210, 60, 1
a_body3 reson a_signal, 400, 120, 1
a_signal = a_signal + 0.4 * a_body1 + 0.3 * a_body2 + 0.2 * a_body3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  27  Electric Guitar (jazz)
gk_GM_Electric_Guitar_jazz_level chnexport "gk_GM_Electric_Guitar_jazz_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Electric_Guitar_jazz_midi_dynamic_range chnexport "gk_GM_Electric_Guitar_jazz_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Electric_Guitar_jazz_space_left_to_right chnexport "gk_GM_Electric_Guitar_jazz_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Electric_Guitar_jazz_decay_scale chnexport "gk_GM_Electric_Guitar_jazz_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Electric_Guitar_jazz_pick_brightness chnexport "gk_GM_Electric_Guitar_jazz_pick_brightness", 3 ; Multiplies the pick low-pass cut-off.
gk_GM_Electric_Guitar_jazz_level init 0
gk_GM_Electric_Guitar_jazz_midi_dynamic_range init 20
gk_GM_Electric_Guitar_jazz_space_left_to_right init 0.5
gk_GM_Electric_Guitar_jazz_decay_scale init 1.0
gk_GM_Electric_Guitar_jazz_pick_brightness init 1.0
instr GM_Electric_Guitar_jazz
; General MIDI program 27: Electric Guitar (jazz).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Electric_Guitar_jazz_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Electric_Guitar_jazz_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 55.8
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Electric_Guitar_jazz_level)
; Karplus-Strong string. Decay shortens with pitch, as on a real string,
; and the pick brightness follows velocity.
i_decay_scale = i(gk_GM_Electric_Guitar_jazz_decay_scale)
i_pick_brightness = i(gk_GM_Electric_Guitar_jazz_pick_brightness)
i_decay = 2.5 * i_decay_scale * limit(220.0 / i_frequency, 0.1, 6) ^ 0.5
i_decay limit i_decay, 0.15, 20
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 6
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.02
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
; Pick brightness.
a_string tonex a_string, limit(1800 * i_pick_brightness * (0.5 + i_velocity), 300, 5000), 1
a_string tonex a_string, limit(i_frequency * 12, 500, 5000), 1
a_signal = a_string
a_body1 reson a_signal, 180, 70, 1
a_signal = a_signal + 0.3 * a_body1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  28  Electric Guitar (clean)
gk_GM_Electric_Guitar_clean_level chnexport "gk_GM_Electric_Guitar_clean_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Electric_Guitar_clean_midi_dynamic_range chnexport "gk_GM_Electric_Guitar_clean_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Electric_Guitar_clean_space_left_to_right chnexport "gk_GM_Electric_Guitar_clean_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Electric_Guitar_clean_decay_scale chnexport "gk_GM_Electric_Guitar_clean_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Electric_Guitar_clean_pick_brightness chnexport "gk_GM_Electric_Guitar_clean_pick_brightness", 3 ; Multiplies the pick low-pass cut-off.
gk_GM_Electric_Guitar_clean_level init 0
gk_GM_Electric_Guitar_clean_midi_dynamic_range init 20
gk_GM_Electric_Guitar_clean_space_left_to_right init 0.5
gk_GM_Electric_Guitar_clean_decay_scale init 1.0
gk_GM_Electric_Guitar_clean_pick_brightness init 1.0
instr GM_Electric_Guitar_clean
; General MIDI program 28: Electric Guitar (clean).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Electric_Guitar_clean_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Electric_Guitar_clean_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 56.7
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Electric_Guitar_clean_level)
; Karplus-Strong string. Decay shortens with pitch, as on a real string,
; and the pick brightness follows velocity.
i_decay_scale = i(gk_GM_Electric_Guitar_clean_decay_scale)
i_pick_brightness = i(gk_GM_Electric_Guitar_clean_pick_brightness)
i_decay = 4.0 * i_decay_scale * limit(220.0 / i_frequency, 0.1, 6) ^ 0.5
i_decay limit i_decay, 0.15, 20
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 6
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.02
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
a_string_2 pluck 1, k_frequency * (1 + 0.0012), i_frequency * (1 + 0.0012), 0, 6
a_string = (a_string + a_string_2) * 0.6
; Pick brightness.
a_string tonex a_string, limit(4500 * i_pick_brightness * (0.5 + i_velocity), 300, 8000), 1
a_string tonex a_string, limit(i_frequency * 12, 500, 8000), 1
a_signal = a_string
a_body1 reson a_signal, 120, 60, 1
a_signal = a_signal + 0.2 * a_body1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  29  Electric Guitar (muted)
gk_GM_Electric_Guitar_muted_level chnexport "gk_GM_Electric_Guitar_muted_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Electric_Guitar_muted_midi_dynamic_range chnexport "gk_GM_Electric_Guitar_muted_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Electric_Guitar_muted_space_left_to_right chnexport "gk_GM_Electric_Guitar_muted_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Electric_Guitar_muted_decay_scale chnexport "gk_GM_Electric_Guitar_muted_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Electric_Guitar_muted_pick_brightness chnexport "gk_GM_Electric_Guitar_muted_pick_brightness", 3 ; Multiplies the pick low-pass cut-off.
gk_GM_Electric_Guitar_muted_level init 0
gk_GM_Electric_Guitar_muted_midi_dynamic_range init 20
gk_GM_Electric_Guitar_muted_space_left_to_right init 0.5
gk_GM_Electric_Guitar_muted_decay_scale init 1.0
gk_GM_Electric_Guitar_muted_pick_brightness init 1.0
instr GM_Electric_Guitar_muted
; General MIDI program 29: Electric Guitar (muted).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Electric_Guitar_muted_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Electric_Guitar_muted_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 55.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Electric_Guitar_muted_level)
; Karplus-Strong string. Decay shortens with pitch, as on a real string,
; and the pick brightness follows velocity.
i_decay_scale = i(gk_GM_Electric_Guitar_muted_decay_scale)
i_pick_brightness = i(gk_GM_Electric_Guitar_muted_pick_brightness)
i_decay = 0.25 * i_decay_scale * limit(220.0 / i_frequency, 0.1, 6) ^ 0.5
i_decay limit i_decay, 0.12, 20
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 6
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.02
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
; Pick brightness.
a_string tonex a_string, limit(2500 * i_pick_brightness * (0.5 + i_velocity), 300, 6000), 1
a_string tonex a_string, limit(i_frequency * 12, 500, 6000), 1
; Pick snap.
a_snap_noise rand 1
a_snap_envelope transeg 0.5 * (0.3 + i_velocity), 0.003, -4, 0
a_snap butterbp a_snap_noise * a_snap_envelope, 3000, 3000
a_string = a_string + a_snap
a_signal = a_string
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  30  Overdriven Guitar
gk_GM_Overdriven_Guitar_level chnexport "gk_GM_Overdriven_Guitar_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Overdriven_Guitar_midi_dynamic_range chnexport "gk_GM_Overdriven_Guitar_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Overdriven_Guitar_space_left_to_right chnexport "gk_GM_Overdriven_Guitar_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Overdriven_Guitar_decay_scale chnexport "gk_GM_Overdriven_Guitar_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Overdriven_Guitar_pick_brightness chnexport "gk_GM_Overdriven_Guitar_pick_brightness", 3 ; Multiplies the pick low-pass cut-off.
gk_GM_Overdriven_Guitar_level init 0
gk_GM_Overdriven_Guitar_midi_dynamic_range init 20
gk_GM_Overdriven_Guitar_space_left_to_right init 0.5
gk_GM_Overdriven_Guitar_decay_scale init 1.0
gk_GM_Overdriven_Guitar_pick_brightness init 1.0
instr GM_Overdriven_Guitar
; General MIDI program 30: Overdriven Guitar.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Overdriven_Guitar_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Overdriven_Guitar_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 64.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Overdriven_Guitar_level)
; Karplus-Strong string. Decay shortens with pitch, as on a real string,
; and the pick brightness follows velocity.
i_decay_scale = i(gk_GM_Overdriven_Guitar_decay_scale)
i_pick_brightness = i(gk_GM_Overdriven_Guitar_pick_brightness)
i_decay = 5.0 * i_decay_scale * limit(220.0 / i_frequency, 0.1, 6) ^ 0.5
i_decay limit i_decay, 0.15, 20
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 6
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.02
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
; Pick brightness.
a_string tonex a_string, limit(5000 * i_pick_brightness * (0.5 + i_velocity), 300, 6000), 1
a_string tonex a_string, limit(i_frequency * 12, 500, 6000), 1
; Amplifier overdrive and cabinet.
a_string = tanh(a_string * 4 * (0.6 + i_velocity))
a_string butterlp a_string, 4200
a_string butterhp a_string, 90
a_signal = a_string
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  31  Distortion Guitar
gk_GM_Distortion_Guitar_level chnexport "gk_GM_Distortion_Guitar_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Distortion_Guitar_midi_dynamic_range chnexport "gk_GM_Distortion_Guitar_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Distortion_Guitar_space_left_to_right chnexport "gk_GM_Distortion_Guitar_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Distortion_Guitar_decay_scale chnexport "gk_GM_Distortion_Guitar_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Distortion_Guitar_pick_brightness chnexport "gk_GM_Distortion_Guitar_pick_brightness", 3 ; Multiplies the pick low-pass cut-off.
gk_GM_Distortion_Guitar_level init 0
gk_GM_Distortion_Guitar_midi_dynamic_range init 20
gk_GM_Distortion_Guitar_space_left_to_right init 0.5
gk_GM_Distortion_Guitar_decay_scale init 1.0
gk_GM_Distortion_Guitar_pick_brightness init 1.0
instr GM_Distortion_Guitar
; General MIDI program 31: Distortion Guitar.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Distortion_Guitar_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Distortion_Guitar_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 66.3
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Distortion_Guitar_level)
; Karplus-Strong string. Decay shortens with pitch, as on a real string,
; and the pick brightness follows velocity.
i_decay_scale = i(gk_GM_Distortion_Guitar_decay_scale)
i_pick_brightness = i(gk_GM_Distortion_Guitar_pick_brightness)
i_decay = 6.0 * i_decay_scale * limit(220.0 / i_frequency, 0.1, 6) ^ 0.5
i_decay limit i_decay, 0.15, 20
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 6
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.02
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
a_octave pluck 0.5, k_frequency * 2, i_frequency * 2, 0, 6
a_string = a_string + a_octave
; Pick brightness.
a_string tonex a_string, limit(6000 * i_pick_brightness * (0.5 + i_velocity), 300, 6000), 1
a_string tonex a_string, limit(i_frequency * 12, 500, 6000), 1
; Amplifier overdrive and cabinet.
a_string = tanh(a_string * 12 * (0.6 + i_velocity))
a_string butterlp a_string, 4200
a_string butterhp a_string, 90
a_signal = a_string
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  32  Guitar harmonics
gk_GM_Guitar_harmonics_level chnexport "gk_GM_Guitar_harmonics_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Guitar_harmonics_midi_dynamic_range chnexport "gk_GM_Guitar_harmonics_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Guitar_harmonics_space_left_to_right chnexport "gk_GM_Guitar_harmonics_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Guitar_harmonics_level init 0
gk_GM_Guitar_harmonics_midi_dynamic_range init 20
gk_GM_Guitar_harmonics_space_left_to_right init 0.5
gi_GM_Guitar_harmonics_sine ftgen 0, 0, 65537, 10, 1
instr GM_Guitar_harmonics
; General MIDI program 32: Guitar harmonics.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Guitar_harmonics_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Guitar_harmonics_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 54.6
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Guitar_harmonics_level)
; Natural harmonics: the string is plucked but only the partials at the
; node survive, so the result is a soft octave-up tone with a little
; pick noise.
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = limit(2.5 * (440 / i_frequency) ^ 0.4, 0.4, 4)
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.002
i_exponent = 5
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.03
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

a_string pluck 1, i_frequency * 2, i_frequency * 2, 0, 6
a_string tonex a_string, limit(i_frequency * 5, 800, 8000), 2
a_fundamental_envelope transeg 0.15, 0.3, -4, 0
a_fundamental poscil a_fundamental_envelope, i_frequency, gi_GM_Guitar_harmonics_sine
a_noise rand 1
a_pick_envelope transeg 0.2, 0.004, -4, 0
a_pick butterbp a_noise * a_pick_envelope, 3500, 3000
a_signal = a_string + a_fundamental + a_pick
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  33  Acoustic Bass
gk_GM_Acoustic_Bass_level chnexport "gk_GM_Acoustic_Bass_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Acoustic_Bass_midi_dynamic_range chnexport "gk_GM_Acoustic_Bass_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Acoustic_Bass_space_left_to_right chnexport "gk_GM_Acoustic_Bass_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Acoustic_Bass_decay_scale chnexport "gk_GM_Acoustic_Bass_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Acoustic_Bass_tone chnexport "gk_GM_Acoustic_Bass_tone", 3 ; Multiplies the low-pass cut-off.
gk_GM_Acoustic_Bass_level init 0
gk_GM_Acoustic_Bass_midi_dynamic_range init 20
gk_GM_Acoustic_Bass_space_left_to_right init 0.5
gk_GM_Acoustic_Bass_decay_scale init 1.0
gk_GM_Acoustic_Bass_tone init 1.0
instr GM_Acoustic_Bass
; General MIDI program 33: Acoustic Bass.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Acoustic_Bass_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Acoustic_Bass_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 51.9
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Acoustic_Bass_level)
; Plucked bass string with thump, pitch-dependent decay, and a body.
i_decay_scale = i(gk_GM_Acoustic_Bass_decay_scale)
i_tone = i(gk_GM_Acoustic_Bass_tone)
i_decay = 3.0 * i_decay_scale * limit(55 / i_frequency, 0.15, 3) ^ 0.6
i_decay limit i_decay, 0.3, 12
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.002
i_exponent = 5
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.03
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
a_string_2 pluck 0.6, k_frequency * 1.0015, i_frequency * 1.0015, 0, 6
a_string = a_string + a_string_2
; Low strings lose more energy in the fixed filters below; compensate.
a_string = a_string * limit((55 / i_frequency) ^ 0.4, 0.5, 2)
; Finger / pick brightness closing after the attack.
k_cutoff transeg 1200 * (0.6 + 0.8 * i_velocity) * i_tone, 0.25, -3, 1200 * 0.4 * i_tone
k_cutoff limit k_cutoff, 150, 10000
a_string tonex a_string, k_cutoff, 2
a_string tonex a_string, limit(i_frequency * 8, 300, 8000), 1
; Pick / finger noise at the attack.
a_snap_noise rand 1
a_snap_envelope transeg 0.3 * (0.3 + i_velocity), 0.004, -4, 0
a_snap butterbp a_snap_noise * a_snap_envelope, 2200, 2500
a_string = a_string + a_snap
a_signal = a_string
a_body1 reson a_signal, 90, 30, 1
a_body2 reson a_signal, 180, 60, 1
a_signal = a_signal + 0.5 * a_body1 + 0.3 * a_body2
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  34  Electric Bass (finger)
gk_GM_Electric_Bass_finger_level chnexport "gk_GM_Electric_Bass_finger_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Electric_Bass_finger_midi_dynamic_range chnexport "gk_GM_Electric_Bass_finger_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Electric_Bass_finger_space_left_to_right chnexport "gk_GM_Electric_Bass_finger_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Electric_Bass_finger_decay_scale chnexport "gk_GM_Electric_Bass_finger_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Electric_Bass_finger_tone chnexport "gk_GM_Electric_Bass_finger_tone", 3 ; Multiplies the low-pass cut-off.
gk_GM_Electric_Bass_finger_level init 0
gk_GM_Electric_Bass_finger_midi_dynamic_range init 20
gk_GM_Electric_Bass_finger_space_left_to_right init 0.5
gk_GM_Electric_Bass_finger_decay_scale init 1.0
gk_GM_Electric_Bass_finger_tone init 1.0
instr GM_Electric_Bass_finger
; General MIDI program 34: Electric Bass (finger).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Electric_Bass_finger_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Electric_Bass_finger_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 50.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Electric_Bass_finger_level)
; Plucked bass string with thump, pitch-dependent decay, and a body.
i_decay_scale = i(gk_GM_Electric_Bass_finger_decay_scale)
i_tone = i(gk_GM_Electric_Bass_finger_tone)
i_decay = 5.0 * i_decay_scale * limit(55 / i_frequency, 0.15, 3) ^ 0.6
i_decay limit i_decay, 0.3, 12
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.002
i_exponent = 5
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.03
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
a_string_2 pluck 0.6, k_frequency * 1.0015, i_frequency * 1.0015, 0, 6
a_string = a_string + a_string_2
; Low strings lose more energy in the fixed filters below; compensate.
a_string = a_string * limit((55 / i_frequency) ^ 0.4, 0.5, 2)
; Finger / pick brightness closing after the attack.
k_cutoff transeg 1600 * (0.6 + 0.8 * i_velocity) * i_tone, 0.25, -3, 1600 * 0.4 * i_tone
k_cutoff limit k_cutoff, 150, 10000
a_string tonex a_string, k_cutoff, 2
a_string tonex a_string, limit(i_frequency * 8, 300, 8000), 1
; Pick / finger noise at the attack.
a_snap_noise rand 1
a_snap_envelope transeg 0.15 * (0.3 + i_velocity), 0.004, -4, 0
a_snap butterbp a_snap_noise * a_snap_envelope, 2200, 2500
a_string = a_string + a_snap
a_signal = a_string
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  35  Electric Bass (pick)
gk_GM_Electric_Bass_pick_level chnexport "gk_GM_Electric_Bass_pick_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Electric_Bass_pick_midi_dynamic_range chnexport "gk_GM_Electric_Bass_pick_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Electric_Bass_pick_space_left_to_right chnexport "gk_GM_Electric_Bass_pick_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Electric_Bass_pick_decay_scale chnexport "gk_GM_Electric_Bass_pick_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Electric_Bass_pick_tone chnexport "gk_GM_Electric_Bass_pick_tone", 3 ; Multiplies the low-pass cut-off.
gk_GM_Electric_Bass_pick_level init 0
gk_GM_Electric_Bass_pick_midi_dynamic_range init 20
gk_GM_Electric_Bass_pick_space_left_to_right init 0.5
gk_GM_Electric_Bass_pick_decay_scale init 1.0
gk_GM_Electric_Bass_pick_tone init 1.0
instr GM_Electric_Bass_pick
; General MIDI program 35: Electric Bass (pick).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Electric_Bass_pick_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Electric_Bass_pick_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 53.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Electric_Bass_pick_level)
; Plucked bass string with thump, pitch-dependent decay, and a body.
i_decay_scale = i(gk_GM_Electric_Bass_pick_decay_scale)
i_tone = i(gk_GM_Electric_Bass_pick_tone)
i_decay = 5.0 * i_decay_scale * limit(55 / i_frequency, 0.15, 3) ^ 0.6
i_decay limit i_decay, 0.3, 12
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.002
i_exponent = 5
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.03
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
a_string_2 pluck 0.6, k_frequency * 1.0015, i_frequency * 1.0015, 0, 6
a_string = a_string + a_string_2
; Low strings lose more energy in the fixed filters below; compensate.
a_string = a_string * limit((55 / i_frequency) ^ 0.4, 0.5, 2)
; Finger / pick brightness closing after the attack.
k_cutoff transeg 3200 * (0.6 + 0.8 * i_velocity) * i_tone, 0.25, -3, 3200 * 0.4 * i_tone
k_cutoff limit k_cutoff, 150, 10000
a_string tonex a_string, k_cutoff, 2
a_string tonex a_string, limit(i_frequency * 8, 300, 8000), 1
; Pick / finger noise at the attack.
a_snap_noise rand 1
a_snap_envelope transeg 0.6 * (0.3 + i_velocity), 0.004, -4, 0
a_snap butterbp a_snap_noise * a_snap_envelope, 2200, 2500
a_string = a_string + a_snap
a_signal = a_string
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  36  Fretless Bass
gk_GM_Fretless_Bass_level chnexport "gk_GM_Fretless_Bass_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Fretless_Bass_midi_dynamic_range chnexport "gk_GM_Fretless_Bass_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Fretless_Bass_space_left_to_right chnexport "gk_GM_Fretless_Bass_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Fretless_Bass_decay_scale chnexport "gk_GM_Fretless_Bass_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Fretless_Bass_tone chnexport "gk_GM_Fretless_Bass_tone", 3 ; Multiplies the low-pass cut-off.
gk_GM_Fretless_Bass_level init 0
gk_GM_Fretless_Bass_midi_dynamic_range init 20
gk_GM_Fretless_Bass_space_left_to_right init 0.5
gk_GM_Fretless_Bass_decay_scale init 1.0
gk_GM_Fretless_Bass_tone init 1.0
instr GM_Fretless_Bass
; General MIDI program 36: Fretless Bass.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Fretless_Bass_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Fretless_Bass_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 47.0
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Fretless_Bass_level)
; Plucked bass string with thump, pitch-dependent decay, and a body.
i_decay_scale = i(gk_GM_Fretless_Bass_decay_scale)
i_tone = i(gk_GM_Fretless_Bass_tone)
i_decay = 5.0 * i_decay_scale * limit(55 / i_frequency, 0.15, 3) ^ 0.6
i_decay limit i_decay, 0.3, 12
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.002
i_exponent = 5
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.03
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_slide transeg -0.6, 0.12, -2, 0
k_frequency = i_frequency * 2 ^ (k_slide / 12)
a_string pluck 1, k_frequency, i_frequency, 0, 6
a_string_2 pluck 0.6, k_frequency * 1.0015, i_frequency * 1.0015, 0, 6
a_string = a_string + a_string_2
; Low strings lose more energy in the fixed filters below; compensate.
a_string = a_string * limit((55 / i_frequency) ^ 0.4, 0.5, 2)
; Finger / pick brightness closing after the attack.
k_cutoff transeg 1800 * (0.6 + 0.8 * i_velocity) * i_tone, 0.25, -3, 1800 * 0.4 * i_tone
k_cutoff limit k_cutoff, 150, 10000
a_string tonex a_string, k_cutoff, 2
a_string tonex a_string, limit(i_frequency * 8, 300, 8000), 1
; 'Mwah': a gentle resonant sweep upward after the attack.
k_mwah transeg 300, 0.25, 2, 1400, 0.4, -2, 700
a_mwah moogladder a_string, k_mwah + i_frequency, 0.3
a_string = a_string * 0.5 + a_mwah * 0.8
a_signal = a_string
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  37  Slap Bass 1
gk_GM_Slap_Bass_1_level chnexport "gk_GM_Slap_Bass_1_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Slap_Bass_1_midi_dynamic_range chnexport "gk_GM_Slap_Bass_1_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Slap_Bass_1_space_left_to_right chnexport "gk_GM_Slap_Bass_1_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Slap_Bass_1_decay_scale chnexport "gk_GM_Slap_Bass_1_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Slap_Bass_1_tone chnexport "gk_GM_Slap_Bass_1_tone", 3 ; Multiplies the low-pass cut-off.
gk_GM_Slap_Bass_1_level init 0
gk_GM_Slap_Bass_1_midi_dynamic_range init 20
gk_GM_Slap_Bass_1_space_left_to_right init 0.5
gk_GM_Slap_Bass_1_decay_scale init 1.0
gk_GM_Slap_Bass_1_tone init 1.0
instr GM_Slap_Bass_1
; General MIDI program 37: Slap Bass 1.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Slap_Bass_1_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Slap_Bass_1_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 52.3
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Slap_Bass_1_level)
; Plucked bass string with thump, pitch-dependent decay, and a body.
i_decay_scale = i(gk_GM_Slap_Bass_1_decay_scale)
i_tone = i(gk_GM_Slap_Bass_1_tone)
i_decay = 4.0 * i_decay_scale * limit(55 / i_frequency, 0.15, 3) ^ 0.6
i_decay limit i_decay, 0.3, 12
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.002
i_exponent = 5
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.03
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
a_string_2 pluck 0.6, k_frequency * 1.0015, i_frequency * 1.0015, 0, 6
a_string = a_string + a_string_2
; Low strings lose more energy in the fixed filters below; compensate.
a_string = a_string * limit((55 / i_frequency) ^ 0.4, 0.5, 2)
; Finger / pick brightness closing after the attack.
k_cutoff transeg 4000 * (0.6 + 0.8 * i_velocity) * i_tone, 0.25, -3, 4000 * 0.4 * i_tone
k_cutoff limit k_cutoff, 150, 10000
a_string tonex a_string, k_cutoff, 2
a_string tonex a_string, limit(i_frequency * 8, 300, 8000), 1
; Slap: a bright, fast-closing resonant sweep plus a thump.
k_slap_cutoff transeg 5000 * (0.5 + i_velocity), 0.08, -5, 500
a_slap moogladder a_string, k_slap_cutoff, 0.35
a_thump_noise rand 1
a_thump_envelope transeg 0.8, 0.012, -3, 0
a_thump butterlp a_thump_noise * a_thump_envelope, 400
a_string = a_string * 0.4 + a_slap * 0.9 + a_thump
a_signal = a_string
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  38  Slap Bass 2
gk_GM_Slap_Bass_2_level chnexport "gk_GM_Slap_Bass_2_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Slap_Bass_2_midi_dynamic_range chnexport "gk_GM_Slap_Bass_2_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Slap_Bass_2_space_left_to_right chnexport "gk_GM_Slap_Bass_2_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Slap_Bass_2_decay_scale chnexport "gk_GM_Slap_Bass_2_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Slap_Bass_2_tone chnexport "gk_GM_Slap_Bass_2_tone", 3 ; Multiplies the low-pass cut-off.
gk_GM_Slap_Bass_2_level init 0
gk_GM_Slap_Bass_2_midi_dynamic_range init 20
gk_GM_Slap_Bass_2_space_left_to_right init 0.5
gk_GM_Slap_Bass_2_decay_scale init 1.0
gk_GM_Slap_Bass_2_tone init 1.0
instr GM_Slap_Bass_2
; General MIDI program 38: Slap Bass 2.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Slap_Bass_2_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Slap_Bass_2_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 48.7
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Slap_Bass_2_level)
; Plucked bass string with thump, pitch-dependent decay, and a body.
i_decay_scale = i(gk_GM_Slap_Bass_2_decay_scale)
i_tone = i(gk_GM_Slap_Bass_2_tone)
i_decay = 3.0 * i_decay_scale * limit(55 / i_frequency, 0.15, 3) ^ 0.6
i_decay limit i_decay, 0.3, 12
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.002
i_exponent = 5
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.03
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
a_string_2 pluck 0.6, k_frequency * 1.0015, i_frequency * 1.0015, 0, 6
a_string = a_string + a_string_2
; Low strings lose more energy in the fixed filters below; compensate.
a_string = a_string * limit((55 / i_frequency) ^ 0.4, 0.5, 2)
; Finger / pick brightness closing after the attack.
k_cutoff transeg 5000 * (0.6 + 0.8 * i_velocity) * i_tone, 0.25, -3, 5000 * 0.4 * i_tone
k_cutoff limit k_cutoff, 150, 10000
a_string tonex a_string, k_cutoff, 2
a_string tonex a_string, limit(i_frequency * 8, 300, 8000), 1
; Pick / finger noise at the attack.
a_snap_noise rand 1
a_snap_envelope transeg 0.3 * (0.3 + i_velocity), 0.004, -4, 0
a_snap butterbp a_snap_noise * a_snap_envelope, 2200, 2500
a_string = a_string + a_snap
; Slap: a bright, fast-closing resonant sweep plus a thump.
k_slap_cutoff transeg 5000 * (0.5 + i_velocity), 0.08, -5, 500
a_slap moogladder a_string, k_slap_cutoff, 0.35
a_thump_noise rand 1
a_thump_envelope transeg 1.2, 0.012, -3, 0
a_thump butterlp a_thump_noise * a_thump_envelope, 400
a_string = a_string * 0.4 + a_slap * 0.9 + a_thump
a_signal = a_string
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  39  Synth Bass 1
gk_GM_Synth_Bass_1_level chnexport "gk_GM_Synth_Bass_1_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Synth_Bass_1_midi_dynamic_range chnexport "gk_GM_Synth_Bass_1_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Synth_Bass_1_space_left_to_right chnexport "gk_GM_Synth_Bass_1_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Synth_Bass_1_decay_scale chnexport "gk_GM_Synth_Bass_1_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Synth_Bass_1_tone chnexport "gk_GM_Synth_Bass_1_tone", 3 ; Multiplies the low-pass cut-off.
gk_GM_Synth_Bass_1_level init 0
gk_GM_Synth_Bass_1_midi_dynamic_range init 20
gk_GM_Synth_Bass_1_space_left_to_right init 0.5
gk_GM_Synth_Bass_1_decay_scale init 1.0
gk_GM_Synth_Bass_1_tone init 1.0
instr GM_Synth_Bass_1
; General MIDI program 39: Synth Bass 1.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Synth_Bass_1_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Synth_Bass_1_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 60.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Synth_Bass_1_level)
; Analogue synth bass: detuned oscillators into a resonant low-pass
; with an envelope on the cut-off, plus a sub-octave.
i_tone = i(gk_GM_Synth_Bass_1_tone)
i_attack = 0.005
i_decay = 0.3
i_sustain_level = 0.6
i_release = 0.06
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

a_osc_1 vco2 0.5, i_frequency, 0
a_osc_2 vco2 0.5, i_frequency * (1 + 0.004), 0
a_sub vco2 0.3, i_frequency * 0.5, 10
k_filter_envelope transeg 1, 0.25, -4, 0.15
k_cutoff = limit(i_frequency * 5 * i_tone * (0.5 + 0.5 * i_velocity) * (1 + 1.5 * k_filter_envelope), 80, 12000)
a_signal moogladder a_osc_1 + a_osc_2 + a_sub, k_cutoff, 0.3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  40  Synth Bass 2
gk_GM_Synth_Bass_2_level chnexport "gk_GM_Synth_Bass_2_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Synth_Bass_2_midi_dynamic_range chnexport "gk_GM_Synth_Bass_2_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Synth_Bass_2_space_left_to_right chnexport "gk_GM_Synth_Bass_2_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Synth_Bass_2_decay_scale chnexport "gk_GM_Synth_Bass_2_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Synth_Bass_2_tone chnexport "gk_GM_Synth_Bass_2_tone", 3 ; Multiplies the low-pass cut-off.
gk_GM_Synth_Bass_2_level init 0
gk_GM_Synth_Bass_2_midi_dynamic_range init 20
gk_GM_Synth_Bass_2_space_left_to_right init 0.5
gk_GM_Synth_Bass_2_decay_scale init 1.0
gk_GM_Synth_Bass_2_tone init 1.0
instr GM_Synth_Bass_2
; General MIDI program 40: Synth Bass 2.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Synth_Bass_2_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Synth_Bass_2_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 60.7
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Synth_Bass_2_level)
; Analogue synth bass: detuned oscillators into a resonant low-pass
; with an envelope on the cut-off, plus a sub-octave.
i_tone = i(gk_GM_Synth_Bass_2_tone)
i_attack = 0.005
i_decay = 0.3
i_sustain_level = 0.6
i_release = 0.06
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

a_osc_1 vco2 0.5, i_frequency, 10
a_osc_2 vco2 0.5, i_frequency * (1 + 0.006), 10
a_sub vco2 0.5, i_frequency * 0.5, 10
k_filter_envelope transeg 1, 0.25, -4, 0.15
k_cutoff = limit(i_frequency * 3.5 * i_tone * (0.5 + 0.5 * i_velocity) * (1 + 2.0 * k_filter_envelope), 80, 12000)
a_signal moogladder a_osc_1 + a_osc_2 + a_sub, k_cutoff, 0.45
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  41  Violin
gk_GM_Violin_level chnexport "gk_GM_Violin_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Violin_midi_dynamic_range chnexport "gk_GM_Violin_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Violin_space_left_to_right chnexport "gk_GM_Violin_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Violin_vibrato_depth chnexport "gk_GM_Violin_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Violin_vibrato_rate chnexport "gk_GM_Violin_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Violin_pressure chnexport "gk_GM_Violin_pressure", 3 ; Bow pressure, 1 to 5.
gk_GM_Violin_position chnexport "gk_GM_Violin_position", 3 ; Bow position, 0.025 to 0.23.
gk_GM_Violin_level init 0
gk_GM_Violin_midi_dynamic_range init 20
gk_GM_Violin_space_left_to_right init 0.5
gk_GM_Violin_vibrato_depth init 0.35
gk_GM_Violin_vibrato_rate init 5.5
gk_GM_Violin_pressure init 2.0
gk_GM_Violin_position init 0.127
gi_GM_Violin_sine ftgen 0, 0, 65537, 10, 1
instr GM_Violin
; General MIDI program 41: Violin.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Violin_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Violin_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 69.4
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Violin_level)
; Waveguide bowed string. The bow is ramped on, which keeps the model
; stable at every pitch, and a delayed vibrato is applied to the pitch.
; Reflect pitch into the usable range for this instrument.
while i_midi_key < 55 do
    i_midi_key = i_midi_key + 12
od
while i_midi_key > 100 do
    i_midi_key = i_midi_key - 12
od
i_frequency = cpsmidinn(i_midi_key)
i_attack = 0.09
i_release = 0.12
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_bow cossegr 0, i_attack * 0.7, 1, p3, 1, i_release, 0
k_vibrato_envelope linseg 0, 0.25, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Violin_vibrato_depth * k_vibrato_envelope, gk_GM_Violin_vibrato_rate, gi_GM_Violin_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_string wgbow k_bow, k_frequency, gk_GM_Violin_pressure, gk_GM_Violin_position, 0.1, 0, gi_GM_Violin_sine, 20
a_string tonex a_string, limit(i_frequency * 8, 1500, 14000), 1
a_signal = a_string
a_body1 reson a_signal, 280, 80, 1
a_body2 reson a_signal, 460, 120, 1
a_body3 reson a_signal, 1000, 300, 1
a_signal = a_signal + 0.4 * a_body1 + 0.3 * a_body2 + 0.2 * a_body3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  42  Viola
gk_GM_Viola_level chnexport "gk_GM_Viola_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Viola_midi_dynamic_range chnexport "gk_GM_Viola_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Viola_space_left_to_right chnexport "gk_GM_Viola_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Viola_vibrato_depth chnexport "gk_GM_Viola_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Viola_vibrato_rate chnexport "gk_GM_Viola_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Viola_pressure chnexport "gk_GM_Viola_pressure", 3 ; Bow pressure, 1 to 5.
gk_GM_Viola_position chnexport "gk_GM_Viola_position", 3 ; Bow position, 0.025 to 0.23.
gk_GM_Viola_level init 0
gk_GM_Viola_midi_dynamic_range init 20
gk_GM_Viola_space_left_to_right init 0.5
gk_GM_Viola_vibrato_depth init 0.35
gk_GM_Viola_vibrato_rate init 5.5
gk_GM_Viola_pressure init 2.5
gk_GM_Viola_position init 0.11
gi_GM_Viola_sine ftgen 0, 0, 65537, 10, 1
instr GM_Viola
; General MIDI program 42: Viola.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Viola_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Viola_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 64.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Viola_level)
; Waveguide bowed string. The bow is ramped on, which keeps the model
; stable at every pitch, and a delayed vibrato is applied to the pitch.
; Reflect pitch into the usable range for this instrument.
while i_midi_key < 48 do
    i_midi_key = i_midi_key + 12
od
while i_midi_key > 88 do
    i_midi_key = i_midi_key - 12
od
i_frequency = cpsmidinn(i_midi_key)
i_attack = 0.09
i_release = 0.12
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_bow cossegr 0, i_attack * 0.7, 1, p3, 1, i_release, 0
k_vibrato_envelope linseg 0, 0.25, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Viola_vibrato_depth * k_vibrato_envelope, gk_GM_Viola_vibrato_rate, gi_GM_Viola_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_string wgbow k_bow, k_frequency, gk_GM_Viola_pressure, gk_GM_Viola_position, 0.1, 0, gi_GM_Viola_sine, 20
a_string tonex a_string, limit(i_frequency * 7, 1500, 14000), 1
a_signal = a_string
a_body1 reson a_signal, 220, 70, 1
a_body2 reson a_signal, 400, 110, 1
a_signal = a_signal + 0.4 * a_body1 + 0.3 * a_body2
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  43  Cello
gk_GM_Cello_level chnexport "gk_GM_Cello_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Cello_midi_dynamic_range chnexport "gk_GM_Cello_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Cello_space_left_to_right chnexport "gk_GM_Cello_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Cello_vibrato_depth chnexport "gk_GM_Cello_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Cello_vibrato_rate chnexport "gk_GM_Cello_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Cello_pressure chnexport "gk_GM_Cello_pressure", 3 ; Bow pressure, 1 to 5.
gk_GM_Cello_position chnexport "gk_GM_Cello_position", 3 ; Bow position, 0.025 to 0.23.
gk_GM_Cello_level init 0
gk_GM_Cello_midi_dynamic_range init 20
gk_GM_Cello_space_left_to_right init 0.5
gk_GM_Cello_vibrato_depth init 0.35
gk_GM_Cello_vibrato_rate init 5.5
gk_GM_Cello_pressure init 3.0
gk_GM_Cello_position init 0.1
gi_GM_Cello_sine ftgen 0, 0, 65537, 10, 1
instr GM_Cello
; General MIDI program 43: Cello.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Cello_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Cello_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 65.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Cello_level)
; Waveguide bowed string. The bow is ramped on, which keeps the model
; stable at every pitch, and a delayed vibrato is applied to the pitch.
; Reflect pitch into the usable range for this instrument.
while i_midi_key < 36 do
    i_midi_key = i_midi_key + 12
od
while i_midi_key > 76 do
    i_midi_key = i_midi_key - 12
od
i_frequency = cpsmidinn(i_midi_key)
i_attack = 0.09
i_release = 0.12
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_bow cossegr 0, i_attack * 0.7, 1, p3, 1, i_release, 0
k_vibrato_envelope linseg 0, 0.25, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Cello_vibrato_depth * k_vibrato_envelope, gk_GM_Cello_vibrato_rate, gi_GM_Cello_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_string wgbow k_bow, k_frequency, gk_GM_Cello_pressure, gk_GM_Cello_position, 0.1, 0, gi_GM_Cello_sine, 20
a_string tonex a_string, limit(i_frequency * 6, 1500, 14000), 1
a_signal = a_string
a_body1 reson a_signal, 120, 40, 1
a_body2 reson a_signal, 250, 80, 1
a_body3 reson a_signal, 500, 150, 1
a_signal = a_signal + 0.5 * a_body1 + 0.3 * a_body2 + 0.2 * a_body3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  44  Contrabass
gk_GM_Contrabass_level chnexport "gk_GM_Contrabass_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Contrabass_midi_dynamic_range chnexport "gk_GM_Contrabass_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Contrabass_space_left_to_right chnexport "gk_GM_Contrabass_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Contrabass_vibrato_depth chnexport "gk_GM_Contrabass_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Contrabass_vibrato_rate chnexport "gk_GM_Contrabass_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Contrabass_pressure chnexport "gk_GM_Contrabass_pressure", 3 ; Bow pressure, 1 to 5.
gk_GM_Contrabass_position chnexport "gk_GM_Contrabass_position", 3 ; Bow position, 0.025 to 0.23.
gk_GM_Contrabass_level init 0
gk_GM_Contrabass_midi_dynamic_range init 20
gk_GM_Contrabass_space_left_to_right init 0.5
gk_GM_Contrabass_vibrato_depth init 0.25
gk_GM_Contrabass_vibrato_rate init 4.5
gk_GM_Contrabass_pressure init 3.5
gk_GM_Contrabass_position init 0.09
gi_GM_Contrabass_sine ftgen 0, 0, 65537, 10, 1
instr GM_Contrabass
; General MIDI program 44: Contrabass.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Contrabass_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Contrabass_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 63.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Contrabass_level)
; Waveguide bowed string. The bow is ramped on, which keeps the model
; stable at every pitch, and a delayed vibrato is applied to the pitch.
; Reflect pitch into the usable range for this instrument.
while i_midi_key < 28 do
    i_midi_key = i_midi_key + 12
od
while i_midi_key > 64 do
    i_midi_key = i_midi_key - 12
od
i_frequency = cpsmidinn(i_midi_key)
i_attack = 0.09
i_release = 0.12
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_bow cossegr 0, i_attack * 0.7, 1, p3, 1, i_release, 0
k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Contrabass_vibrato_depth * k_vibrato_envelope, gk_GM_Contrabass_vibrato_rate, gi_GM_Contrabass_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_string wgbow k_bow, k_frequency, gk_GM_Contrabass_pressure, gk_GM_Contrabass_position, 0.1, 0, gi_GM_Contrabass_sine, 20
a_string tonex a_string, limit(i_frequency * 5, 1500, 14000), 1
a_signal = a_string
a_body1 reson a_signal, 70, 25, 1
a_body2 reson a_signal, 150, 50, 1
a_signal = a_signal + 0.5 * a_body1 + 0.3 * a_body2
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  45  Tremolo Strings
gk_GM_Tremolo_Strings_level chnexport "gk_GM_Tremolo_Strings_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Tremolo_Strings_midi_dynamic_range chnexport "gk_GM_Tremolo_Strings_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Tremolo_Strings_space_left_to_right chnexport "gk_GM_Tremolo_Strings_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Tremolo_Strings_vibrato_depth chnexport "gk_GM_Tremolo_Strings_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Tremolo_Strings_vibrato_rate chnexport "gk_GM_Tremolo_Strings_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Tremolo_Strings_pressure chnexport "gk_GM_Tremolo_Strings_pressure", 3 ; Bow pressure, 1 to 5.
gk_GM_Tremolo_Strings_position chnexport "gk_GM_Tremolo_Strings_position", 3 ; Bow position, 0.025 to 0.23.
gk_GM_Tremolo_Strings_level init 0
gk_GM_Tremolo_Strings_midi_dynamic_range init 20
gk_GM_Tremolo_Strings_space_left_to_right init 0.5
gk_GM_Tremolo_Strings_vibrato_depth init 0.35
gk_GM_Tremolo_Strings_vibrato_rate init 5.5
gk_GM_Tremolo_Strings_pressure init 2.0
gk_GM_Tremolo_Strings_position init 0.127
gi_GM_Tremolo_Strings_sine ftgen 0, 0, 65537, 10, 1
instr GM_Tremolo_Strings
; General MIDI program 45: Tremolo Strings.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Tremolo_Strings_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Tremolo_Strings_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 68.7
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Tremolo_Strings_level)
; Waveguide bowed string. The bow is ramped on, which keeps the model
; stable at every pitch, and a delayed vibrato is applied to the pitch.
; Reflect pitch into the usable range for this instrument.
while i_midi_key < 43 do
    i_midi_key = i_midi_key + 12
od
while i_midi_key > 96 do
    i_midi_key = i_midi_key - 12
od
i_frequency = cpsmidinn(i_midi_key)
i_attack = 0.09
i_release = 0.12
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_bow cossegr 0, i_attack * 0.7, 1, p3, 1, i_release, 0
k_vibrato_envelope linseg 0, 0.25, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Tremolo_Strings_vibrato_depth * k_vibrato_envelope, gk_GM_Tremolo_Strings_vibrato_rate, gi_GM_Tremolo_Strings_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_string wgbow k_bow, k_frequency, gk_GM_Tremolo_Strings_pressure, gk_GM_Tremolo_Strings_position, 0.1, 0, gi_GM_Tremolo_Strings_sine, 20
; Bow tremolo.
k_tremolo lfo 0.5, 9, 1
a_string = a_string * (0.5 + k_tremolo * 0.9)
a_string tonex a_string, limit(i_frequency * 8, 1500, 14000), 1
a_signal = a_string
a_body1 reson a_signal, 280, 80, 1
a_body2 reson a_signal, 460, 120, 1
a_body3 reson a_signal, 1000, 300, 1
a_signal = a_signal + 0.4 * a_body1 + 0.3 * a_body2 + 0.2 * a_body3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  46  Pizzicato Strings
gk_GM_Pizzicato_Strings_level chnexport "gk_GM_Pizzicato_Strings_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Pizzicato_Strings_midi_dynamic_range chnexport "gk_GM_Pizzicato_Strings_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Pizzicato_Strings_space_left_to_right chnexport "gk_GM_Pizzicato_Strings_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Pizzicato_Strings_decay_scale chnexport "gk_GM_Pizzicato_Strings_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Pizzicato_Strings_pick_brightness chnexport "gk_GM_Pizzicato_Strings_pick_brightness", 3 ; Multiplies the pick low-pass cut-off.
gk_GM_Pizzicato_Strings_level init 0
gk_GM_Pizzicato_Strings_midi_dynamic_range init 20
gk_GM_Pizzicato_Strings_space_left_to_right init 0.5
gk_GM_Pizzicato_Strings_decay_scale init 1.0
gk_GM_Pizzicato_Strings_pick_brightness init 1.0
instr GM_Pizzicato_Strings
; General MIDI program 46: Pizzicato Strings.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Pizzicato_Strings_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Pizzicato_Strings_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 56.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Pizzicato_Strings_level)
; Karplus-Strong string. Decay shortens with pitch, as on a real string,
; and the pick brightness follows velocity.
i_decay_scale = i(gk_GM_Pizzicato_Strings_decay_scale)
i_pick_brightness = i(gk_GM_Pizzicato_Strings_pick_brightness)
i_decay = 0.6 * i_decay_scale * limit(220.0 / i_frequency, 0.1, 6) ^ 0.5
i_decay limit i_decay, 0.25, 20
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 6
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.02
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
; Pick brightness.
a_string tonex a_string, limit(2000 * i_pick_brightness * (0.5 + i_velocity), 300, 16000), 1
a_string tonex a_string, limit(i_frequency * 8, 500, 16000), 1
a_signal = a_string
a_body1 reson a_signal, 280, 80, 1
a_body2 reson a_signal, 460, 120, 1
a_body3 reson a_signal, 1000, 300, 1
a_signal = a_signal + 0.4 * a_body1 + 0.3 * a_body2 + 0.2 * a_body3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  47  Orchestral Harp
gk_GM_Orchestral_Harp_level chnexport "gk_GM_Orchestral_Harp_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Orchestral_Harp_midi_dynamic_range chnexport "gk_GM_Orchestral_Harp_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Orchestral_Harp_space_left_to_right chnexport "gk_GM_Orchestral_Harp_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Orchestral_Harp_decay_scale chnexport "gk_GM_Orchestral_Harp_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Orchestral_Harp_pick_brightness chnexport "gk_GM_Orchestral_Harp_pick_brightness", 3 ; Multiplies the pick low-pass cut-off.
gk_GM_Orchestral_Harp_level init 0
gk_GM_Orchestral_Harp_midi_dynamic_range init 20
gk_GM_Orchestral_Harp_space_left_to_right init 0.5
gk_GM_Orchestral_Harp_decay_scale init 1.0
gk_GM_Orchestral_Harp_pick_brightness init 1.0
instr GM_Orchestral_Harp
; General MIDI program 47: Orchestral Harp.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Orchestral_Harp_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Orchestral_Harp_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 59.3
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Orchestral_Harp_level)
; Karplus-Strong string. Decay shortens with pitch, as on a real string,
; and the pick brightness follows velocity.
i_decay_scale = i(gk_GM_Orchestral_Harp_decay_scale)
i_pick_brightness = i(gk_GM_Orchestral_Harp_pick_brightness)
i_decay = 4.0 * i_decay_scale * limit(440 / i_frequency, 0.1, 6) ^ 0.4
i_decay limit i_decay, 0.15, 20
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 6
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.02
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
; Pick brightness.
a_string tonex a_string, limit(4000 * i_pick_brightness * (0.5 + i_velocity), 300, 16000), 1
a_string tonex a_string, limit(i_frequency * 12, 500, 16000), 1
a_signal = a_string
a_body1 reson a_signal, 150, 50, 1
a_body2 reson a_signal, 300, 100, 1
a_signal = a_signal + 0.3 * a_body1 + 0.2 * a_body2
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  48  Timpani
gk_GM_Timpani_level chnexport "gk_GM_Timpani_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Timpani_midi_dynamic_range chnexport "gk_GM_Timpani_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Timpani_space_left_to_right chnexport "gk_GM_Timpani_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Timpani_decay_scale chnexport "gk_GM_Timpani_decay_scale", 3 ; Multiplies the decay time.
gk_GM_Timpani_level init 0
gk_GM_Timpani_midi_dynamic_range init 20
gk_GM_Timpani_space_left_to_right init 0.5
gk_GM_Timpani_decay_scale init 1.0
gi_GM_Timpani_sine ftgen 0, 0, 65537, 10, 1
instr GM_Timpani
; General MIDI program 48: Timpani.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Timpani_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Timpani_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 69.0
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Timpani_level)
; Drum head: inharmonic partials whose pitch drops quickly after the
; strike, plus a noise burst for the stick or mallet.
i_decay_scale = i(gk_GM_Timpani_decay_scale)
i_decay = 2.5 * i_decay_scale * limit(80 / i_frequency, 0.3, 3) ^ 0.5
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.05
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_drop transeg 0.3, 0.08, -3, 0
k_frequency = i_frequency * 1.0 * 2 ^ (k_drop / 12)
a_noise rand 1
a_noise_envelope transeg 1, 0.08, -4, 0
a_strike butterbp a_noise * a_noise_envelope, 400, 400
a_click_envelope transeg 0.2, 0.002, -3, 0
a_signal = a_strike * 0.3 + a_noise * a_click_envelope
a_env1 transeg 1, i_decay * 1, -6, 0
a_p1 poscil 1 * a_env1, k_frequency * 1, gi_GM_Timpani_sine
a_signal = a_signal + a_p1
a_env2 transeg 1, i_decay * 0.6, -6, 0
a_p2 poscil 0.6 * a_env2, k_frequency * 1.5, gi_GM_Timpani_sine
a_signal = a_signal + a_p2
a_env3 transeg 1, i_decay * 0.4, -6, 0
a_p3 poscil 0.4 * a_env3, k_frequency * 1.98, gi_GM_Timpani_sine
a_signal = a_signal + a_p3
a_env4 transeg 1, i_decay * 0.3, -6, 0
a_p4 poscil 0.25 * a_env4, k_frequency * 2.44, gi_GM_Timpani_sine
a_signal = a_signal + a_p4
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  49  String Ensemble 1
gk_GM_String_Ensemble_1_level chnexport "gk_GM_String_Ensemble_1_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_String_Ensemble_1_midi_dynamic_range chnexport "gk_GM_String_Ensemble_1_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_String_Ensemble_1_space_left_to_right chnexport "gk_GM_String_Ensemble_1_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_String_Ensemble_1_cutoff chnexport "gk_GM_String_Ensemble_1_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_String_Ensemble_1_resonance chnexport "gk_GM_String_Ensemble_1_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_String_Ensemble_1_vibrato_depth chnexport "gk_GM_String_Ensemble_1_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_String_Ensemble_1_vibrato_rate chnexport "gk_GM_String_Ensemble_1_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_String_Ensemble_1_level init 0
gk_GM_String_Ensemble_1_midi_dynamic_range init 20
gk_GM_String_Ensemble_1_space_left_to_right init 0.5
gk_GM_String_Ensemble_1_cutoff init 5
gk_GM_String_Ensemble_1_resonance init 0.0
gk_GM_String_Ensemble_1_vibrato_depth init 0.2
gk_GM_String_Ensemble_1_vibrato_rate init 5
gi_GM_String_Ensemble_1_sine ftgen 0, 0, 65537, 10, 1
instr GM_String_Ensemble_1
; General MIDI program 49: String Ensemble 1.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_String_Ensemble_1_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_String_Ensemble_1_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 63.9
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_String_Ensemble_1_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 0.25
i_decay = 0.3
i_sustain_level = 1.0
i_release = 0.4
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 0.5, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_String_Ensemble_1_vibrato_depth * k_vibrato_envelope, gk_GM_String_Ensemble_1_vibrato_rate, gi_GM_String_Ensemble_1_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_oscillators = 0
a_osc1 vco2 0.4, k_frequency * 1.0 * 1.0, 0
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.4, k_frequency * 1.0045 * 1.0, 0
a_oscillators = a_oscillators + a_osc2
a_osc3 vco2 0.4, k_frequency * 0.9955 * 1.0, 0
a_oscillators = a_oscillators + a_osc3
a_osc4 vco2 0.25, k_frequency * 1.0 * 2.0, 0
a_oscillators = a_oscillators + a_osc4
a_osc5 vco2 0.25, k_frequency * 1.002 * 0.5, 0
a_oscillators = a_oscillators + a_osc5
k_filter_envelope transeg 1, 0.3, -3, 0.2
k_cutoff = i_frequency * gk_GM_String_Ensemble_1_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 0.5 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_String_Ensemble_1_resonance
; Chorus.
a_chorus_lfo_1 poscil 1.5, 0.6, gi_GM_String_Ensemble_1_sine
a_chorus_lfo_2 poscil 1.5, 0.9, gi_GM_String_Ensemble_1_sine
a_chorus_1 vdelay3 a_signal, 9 + a_chorus_lfo_1, 30
a_chorus_2 vdelay3 a_signal, 14 + a_chorus_lfo_2, 30
a_signal = a_signal * (1 - 0.6 * 0.5) + (a_chorus_1 + a_chorus_2) * 0.6 * 0.5
a_signal butterhp a_signal, 80
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  50  String Ensemble 2
gk_GM_String_Ensemble_2_level chnexport "gk_GM_String_Ensemble_2_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_String_Ensemble_2_midi_dynamic_range chnexport "gk_GM_String_Ensemble_2_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_String_Ensemble_2_space_left_to_right chnexport "gk_GM_String_Ensemble_2_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_String_Ensemble_2_cutoff chnexport "gk_GM_String_Ensemble_2_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_String_Ensemble_2_resonance chnexport "gk_GM_String_Ensemble_2_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_String_Ensemble_2_vibrato_depth chnexport "gk_GM_String_Ensemble_2_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_String_Ensemble_2_vibrato_rate chnexport "gk_GM_String_Ensemble_2_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_String_Ensemble_2_level init 0
gk_GM_String_Ensemble_2_midi_dynamic_range init 20
gk_GM_String_Ensemble_2_space_left_to_right init 0.5
gk_GM_String_Ensemble_2_cutoff init 3.5
gk_GM_String_Ensemble_2_resonance init 0.0
gk_GM_String_Ensemble_2_vibrato_depth init 0.15
gk_GM_String_Ensemble_2_vibrato_rate init 4.5
gi_GM_String_Ensemble_2_sine ftgen 0, 0, 65537, 10, 1
instr GM_String_Ensemble_2
; General MIDI program 50: String Ensemble 2.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_String_Ensemble_2_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_String_Ensemble_2_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 63.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_String_Ensemble_2_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 0.5
i_decay = 0.3
i_sustain_level = 1.0
i_release = 0.7
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 0.8, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_String_Ensemble_2_vibrato_depth * k_vibrato_envelope, gk_GM_String_Ensemble_2_vibrato_rate, gi_GM_String_Ensemble_2_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_oscillators = 0
a_osc1 vco2 0.4, k_frequency * 1.0 * 1.0, 0
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.4, k_frequency * 1.0045 * 1.0, 0
a_oscillators = a_oscillators + a_osc2
a_osc3 vco2 0.4, k_frequency * 0.9955 * 1.0, 0
a_oscillators = a_oscillators + a_osc3
a_osc4 vco2 0.25, k_frequency * 1.0 * 2.0, 0
a_oscillators = a_oscillators + a_osc4
a_osc5 vco2 0.25, k_frequency * 1.002 * 0.5, 0
a_oscillators = a_oscillators + a_osc5
k_filter_envelope transeg 1, 0.3, -3, 0.2
k_cutoff = i_frequency * gk_GM_String_Ensemble_2_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 0.5 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_String_Ensemble_2_resonance
; Chorus.
a_chorus_lfo_1 poscil 1.5, 0.6, gi_GM_String_Ensemble_2_sine
a_chorus_lfo_2 poscil 1.5, 0.9, gi_GM_String_Ensemble_2_sine
a_chorus_1 vdelay3 a_signal, 9 + a_chorus_lfo_1, 30
a_chorus_2 vdelay3 a_signal, 14 + a_chorus_lfo_2, 30
a_signal = a_signal * (1 - 0.7 * 0.5) + (a_chorus_1 + a_chorus_2) * 0.7 * 0.5
a_signal butterhp a_signal, 80
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  51  SynthStrings 1
gk_GM_SynthStrings_1_level chnexport "gk_GM_SynthStrings_1_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_SynthStrings_1_midi_dynamic_range chnexport "gk_GM_SynthStrings_1_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_SynthStrings_1_space_left_to_right chnexport "gk_GM_SynthStrings_1_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_SynthStrings_1_cutoff chnexport "gk_GM_SynthStrings_1_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_SynthStrings_1_resonance chnexport "gk_GM_SynthStrings_1_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_SynthStrings_1_vibrato_depth chnexport "gk_GM_SynthStrings_1_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_SynthStrings_1_vibrato_rate chnexport "gk_GM_SynthStrings_1_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_SynthStrings_1_level init 0
gk_GM_SynthStrings_1_midi_dynamic_range init 20
gk_GM_SynthStrings_1_space_left_to_right init 0.5
gk_GM_SynthStrings_1_cutoff init 6
gk_GM_SynthStrings_1_resonance init 0.1
gk_GM_SynthStrings_1_vibrato_depth init 0.1
gk_GM_SynthStrings_1_vibrato_rate init 5
gi_GM_SynthStrings_1_sine ftgen 0, 0, 65537, 10, 1
instr GM_SynthStrings_1
; General MIDI program 51: SynthStrings 1.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_SynthStrings_1_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_SynthStrings_1_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 64.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_SynthStrings_1_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 0.15
i_decay = 0.3
i_sustain_level = 1.0
i_release = 0.4
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 0.5, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_SynthStrings_1_vibrato_depth * k_vibrato_envelope, gk_GM_SynthStrings_1_vibrato_rate, gi_GM_SynthStrings_1_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
k_pw lfo 0.2, 0.3, 0
k_pw = 0.5 + k_pw
a_oscillators = 0
a_osc1 vco2 0.4, k_frequency * 1.0 * 1.0, 2, k_pw
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.4, k_frequency * 1.006 * 1.0, 0
a_oscillators = a_oscillators + a_osc2
a_osc3 vco2 0.4, k_frequency * 0.994 * 1.0, 0
a_oscillators = a_oscillators + a_osc3
k_filter_envelope transeg 1, 0.3, -3, 0.2
k_cutoff = i_frequency * gk_GM_SynthStrings_1_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 0.5 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_SynthStrings_1_resonance
; Chorus.
a_chorus_lfo_1 poscil 1.5, 0.6, gi_GM_SynthStrings_1_sine
a_chorus_lfo_2 poscil 1.5, 0.9, gi_GM_SynthStrings_1_sine
a_chorus_1 vdelay3 a_signal, 9 + a_chorus_lfo_1, 30
a_chorus_2 vdelay3 a_signal, 14 + a_chorus_lfo_2, 30
a_signal = a_signal * (1 - 0.8 * 0.5) + (a_chorus_1 + a_chorus_2) * 0.8 * 0.5
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  52  SynthStrings 2
gk_GM_SynthStrings_2_level chnexport "gk_GM_SynthStrings_2_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_SynthStrings_2_midi_dynamic_range chnexport "gk_GM_SynthStrings_2_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_SynthStrings_2_space_left_to_right chnexport "gk_GM_SynthStrings_2_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_SynthStrings_2_cutoff chnexport "gk_GM_SynthStrings_2_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_SynthStrings_2_resonance chnexport "gk_GM_SynthStrings_2_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_SynthStrings_2_vibrato_depth chnexport "gk_GM_SynthStrings_2_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_SynthStrings_2_vibrato_rate chnexport "gk_GM_SynthStrings_2_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_SynthStrings_2_level init 0
gk_GM_SynthStrings_2_midi_dynamic_range init 20
gk_GM_SynthStrings_2_space_left_to_right init 0.5
gk_GM_SynthStrings_2_cutoff init 4
gk_GM_SynthStrings_2_resonance init 0.25
gk_GM_SynthStrings_2_vibrato_depth init 0.0
gk_GM_SynthStrings_2_vibrato_rate init 5.0
gi_GM_SynthStrings_2_sine ftgen 0, 0, 65537, 10, 1
instr GM_SynthStrings_2
; General MIDI program 52: SynthStrings 2.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_SynthStrings_2_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_SynthStrings_2_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 62.3
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_SynthStrings_2_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 0.4
i_decay = 0.3
i_sustain_level = 1.0
i_release = 0.8
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_SynthStrings_2_vibrato_depth * k_vibrato_envelope, gk_GM_SynthStrings_2_vibrato_rate, gi_GM_SynthStrings_2_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
k_pw lfo 0.3, 0.2, 0
k_pw = 0.5 + k_pw
a_oscillators = 0
a_osc1 vco2 0.4, k_frequency * 1.0 * 1.0, 2, k_pw
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.4, k_frequency * 1.008 * 1.0, 2, k_pw
a_oscillators = a_oscillators + a_osc2
a_osc3 vco2 0.3, k_frequency * 0.5 * 1.0, 0
a_oscillators = a_oscillators + a_osc3
k_filter_envelope transeg 1, 0.3, -3, 0.2
k_cutoff = i_frequency * gk_GM_SynthStrings_2_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 0.5 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_SynthStrings_2_resonance
; Chorus.
a_chorus_lfo_1 poscil 1.5, 0.6, gi_GM_SynthStrings_2_sine
a_chorus_lfo_2 poscil 1.5, 0.9, gi_GM_SynthStrings_2_sine
a_chorus_1 vdelay3 a_signal, 9 + a_chorus_lfo_1, 30
a_chorus_2 vdelay3 a_signal, 14 + a_chorus_lfo_2, 30
a_signal = a_signal * (1 - 0.8 * 0.5) + (a_chorus_1 + a_chorus_2) * 0.8 * 0.5
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  53  Choir Aahs
gk_GM_Choir_Aahs_level chnexport "gk_GM_Choir_Aahs_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Choir_Aahs_midi_dynamic_range chnexport "gk_GM_Choir_Aahs_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Choir_Aahs_space_left_to_right chnexport "gk_GM_Choir_Aahs_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Choir_Aahs_vibrato_depth chnexport "gk_GM_Choir_Aahs_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Choir_Aahs_vibrato_rate chnexport "gk_GM_Choir_Aahs_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Choir_Aahs_level init -4
gk_GM_Choir_Aahs_midi_dynamic_range init 20
gk_GM_Choir_Aahs_space_left_to_right init 0.5
gk_GM_Choir_Aahs_vibrato_depth init 0.25
gk_GM_Choir_Aahs_vibrato_rate init 4.8
gi_GM_Choir_Aahs_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Choir_Aahs_sigmoid ftgen 0, 0, 1024, 19, 0.5, 0.5, 270, 0.5
instr GM_Choir_Aahs
; General MIDI program 53: Choir Aahs.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Choir_Aahs_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Choir_Aahs_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 56.7
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Choir_Aahs_level)
; Formant synthesis (FOF): several detuned voices, each with five vowel
; formants, plus a little breath noise.
i_attack = 0.35
i_release = 0.4
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
i_total_duration = (p3 > 0 ? p3 + i_release : 3600)
k_vibrato_envelope linseg 0, 0.5, 0, 0.6, 1, 1, 1
k_vibrato vibr gk_GM_Choir_Aahs_vibrato_depth * k_vibrato_envelope, gk_GM_Choir_Aahs_vibrato_rate, gi_GM_Choir_Aahs_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
; The vowel opens during the onset: formants glide up into place.
k_sweep linseg 0.8, 0.35 * 1.3, 1, 1, 1
a_signal = 0
; Voice 1: its own vibrato rate and a slow pitch drift, so the
; singers do not move in lock step.
k_vibrato_1 vibr gk_GM_Choir_Aahs_vibrato_depth * k_vibrato_envelope, gk_GM_Choir_Aahs_vibrato_rate * 1.0, gi_GM_Choir_Aahs_sine
k_drift_1 jitter 0.1, 0.2, 0.9
k_frequency_1 = i_frequency * 1.0 * 2 ^ ((k_vibrato_1 + k_drift_1) / 12)
a_v1_f1 fof 1.0000, k_frequency_1, 800 * k_sweep, 0, 80, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f1
a_v1_f2 fof 0.6310, k_frequency_1, 1150 * k_sweep, 0, 90, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f2
a_v1_f3 fof 0.1000, k_frequency_1, 2800 * k_sweep, 0, 120, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f3
a_v1_f4 fof 0.0158, k_frequency_1, 3500 * k_sweep, 0, 130, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f4
a_v1_f5 fof 0.0010, k_frequency_1, 4950 * k_sweep, 0, 140, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f5
; Voice 2: its own vibrato rate and a slow pitch drift, so the
; singers do not move in lock step.
k_vibrato_2 vibr gk_GM_Choir_Aahs_vibrato_depth * k_vibrato_envelope, gk_GM_Choir_Aahs_vibrato_rate * 0.93, gi_GM_Choir_Aahs_sine
k_drift_2 jitter 0.1, 0.2, 0.9
k_frequency_2 = i_frequency * 1.005 * 2 ^ ((k_vibrato_2 + k_drift_2) / 12)
a_v2_f1 fof 0.8000, k_frequency_2, 800 * k_sweep, 0, 80, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f1
a_v2_f2 fof 0.5048, k_frequency_2, 1150 * k_sweep, 0, 90, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f2
a_v2_f3 fof 0.0800, k_frequency_2, 2800 * k_sweep, 0, 120, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f3
a_v2_f4 fof 0.0127, k_frequency_2, 3500 * k_sweep, 0, 130, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f4
a_v2_f5 fof 0.0008, k_frequency_2, 4950 * k_sweep, 0, 140, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f5
; Voice 3: its own vibrato rate and a slow pitch drift, so the
; singers do not move in lock step.
k_vibrato_3 vibr gk_GM_Choir_Aahs_vibrato_depth * k_vibrato_envelope, gk_GM_Choir_Aahs_vibrato_rate * 1.09, gi_GM_Choir_Aahs_sine
k_drift_3 jitter 0.1, 0.2, 0.9
k_frequency_3 = i_frequency * 0.9955 * 2 ^ ((k_vibrato_3 + k_drift_3) / 12)
a_v3_f1 fof 0.8000, k_frequency_3, 800 * k_sweep, 0, 80, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f1
a_v3_f2 fof 0.5048, k_frequency_3, 1150 * k_sweep, 0, 90, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f2
a_v3_f3 fof 0.0800, k_frequency_3, 2800 * k_sweep, 0, 120, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f3
a_v3_f4 fof 0.0127, k_frequency_3, 3500 * k_sweep, 0, 130, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f4
a_v3_f5 fof 0.0008, k_frequency_3, 4950 * k_sweep, 0, 140, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f5
; Voice 4: its own vibrato rate and a slow pitch drift, so the
; singers do not move in lock step.
k_vibrato_4 vibr gk_GM_Choir_Aahs_vibrato_depth * k_vibrato_envelope, gk_GM_Choir_Aahs_vibrato_rate * 0.87, gi_GM_Choir_Aahs_sine
k_drift_4 jitter 0.1, 0.2, 0.9
k_frequency_4 = i_frequency * 2.004 * 2 ^ ((k_vibrato_4 + k_drift_4) / 12)
a_v4_f1 fof 0.2500, k_frequency_4, 800 * k_sweep, 0, 80, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v4_f1
a_v4_f2 fof 0.1577, k_frequency_4, 1150 * k_sweep, 0, 90, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v4_f2
a_v4_f3 fof 0.0250, k_frequency_4, 2800 * k_sweep, 0, 120, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v4_f3
a_v4_f4 fof 0.0040, k_frequency_4, 3500 * k_sweep, 0, 130, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v4_f4
a_v4_f5 fof 0.0003, k_frequency_4, 4950 * k_sweep, 0, 140, 0.008, 0.035, 0.012, 60, gi_GM_Choir_Aahs_sine, gi_GM_Choir_Aahs_sigmoid, i_total_duration
a_signal = a_signal + a_v4_f5
; The level of formant synthesis depends on how the harmonics line up
; with the formants, so hold the loudness steady against a reference.
a_reference poscil 0.6, 100, gi_GM_Choir_Aahs_sine
a_signal balance a_signal, a_reference, 4
; Breath through the mouth formants, and a gentle widening chorus.
a_breath_source rand 1
a_breath_1 reson a_breath_source, 800 * k_sweep, 800 * 0.3, 1
a_breath_2 reson a_breath_source, 1150 * k_sweep, 1150 * 0.3, 1
a_signal = a_signal + (a_breath_1 + a_breath_2 * 0.5) * 0.03
a_chorus_lfo_1 poscil 1.2, 0.31, gi_GM_Choir_Aahs_sine
a_chorus_lfo_2 poscil 1.2, 0.47, gi_GM_Choir_Aahs_sine
a_chorus_1 vdelay3 a_signal, 16 + a_chorus_lfo_1, 40
a_chorus_2 vdelay3 a_signal, 23 + a_chorus_lfo_2, 40
a_signal = a_signal * 0.6 + (a_chorus_1 + a_chorus_2) * 0.3
a_signal tonex a_signal, 4500, 2
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  54  Voice Oohs
gk_GM_Voice_Oohs_level chnexport "gk_GM_Voice_Oohs_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Voice_Oohs_midi_dynamic_range chnexport "gk_GM_Voice_Oohs_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Voice_Oohs_space_left_to_right chnexport "gk_GM_Voice_Oohs_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Voice_Oohs_vibrato_depth chnexport "gk_GM_Voice_Oohs_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Voice_Oohs_vibrato_rate chnexport "gk_GM_Voice_Oohs_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Voice_Oohs_level init -4
gk_GM_Voice_Oohs_midi_dynamic_range init 20
gk_GM_Voice_Oohs_space_left_to_right init 0.5
gk_GM_Voice_Oohs_vibrato_depth init 0.25
gk_GM_Voice_Oohs_vibrato_rate init 4.8
gi_GM_Voice_Oohs_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Voice_Oohs_sigmoid ftgen 0, 0, 1024, 19, 0.5, 0.5, 270, 0.5
instr GM_Voice_Oohs
; General MIDI program 54: Voice Oohs.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Voice_Oohs_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Voice_Oohs_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 57.0
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Voice_Oohs_level)
; Formant synthesis (FOF): several detuned voices, each with five vowel
; formants, plus a little breath noise.
i_attack = 0.35
i_release = 0.4
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
i_total_duration = (p3 > 0 ? p3 + i_release : 3600)
k_vibrato_envelope linseg 0, 0.5, 0, 0.6, 1, 1, 1
k_vibrato vibr gk_GM_Voice_Oohs_vibrato_depth * k_vibrato_envelope, gk_GM_Voice_Oohs_vibrato_rate, gi_GM_Voice_Oohs_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
; The vowel opens during the onset: formants glide up into place.
k_sweep linseg 0.8, 0.35 * 1.3, 1, 1, 1
a_signal = 0
; Voice 1: its own vibrato rate and a slow pitch drift, so the
; singers do not move in lock step.
k_vibrato_1 vibr gk_GM_Voice_Oohs_vibrato_depth * k_vibrato_envelope, gk_GM_Voice_Oohs_vibrato_rate * 1.0, gi_GM_Voice_Oohs_sine
k_drift_1 jitter 0.1, 0.2, 0.9
k_frequency_1 = i_frequency * 1.0 * 2 ^ ((k_vibrato_1 + k_drift_1) / 12)
a_v1_f1 fof 1.0000, k_frequency_1, 450 * k_sweep, 0, 70, 0.008, 0.035, 0.012, 60, gi_GM_Voice_Oohs_sine, gi_GM_Voice_Oohs_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f1
a_v1_f2 fof 0.3548, k_frequency_1, 800 * k_sweep, 0, 80, 0.008, 0.035, 0.012, 60, gi_GM_Voice_Oohs_sine, gi_GM_Voice_Oohs_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f2
a_v1_f3 fof 0.1585, k_frequency_1, 2830 * k_sweep, 0, 100, 0.008, 0.035, 0.012, 60, gi_GM_Voice_Oohs_sine, gi_GM_Voice_Oohs_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f3
a_v1_f4 fof 0.0398, k_frequency_1, 3500 * k_sweep, 0, 130, 0.008, 0.035, 0.012, 60, gi_GM_Voice_Oohs_sine, gi_GM_Voice_Oohs_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f4
a_v1_f5 fof 0.0018, k_frequency_1, 4950 * k_sweep, 0, 135, 0.008, 0.035, 0.012, 60, gi_GM_Voice_Oohs_sine, gi_GM_Voice_Oohs_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f5
; Voice 2: its own vibrato rate and a slow pitch drift, so the
; singers do not move in lock step.
k_vibrato_2 vibr gk_GM_Voice_Oohs_vibrato_depth * k_vibrato_envelope, gk_GM_Voice_Oohs_vibrato_rate * 0.93, gi_GM_Voice_Oohs_sine
k_drift_2 jitter 0.1, 0.2, 0.9
k_frequency_2 = i_frequency * 1.005 * 2 ^ ((k_vibrato_2 + k_drift_2) / 12)
a_v2_f1 fof 0.8000, k_frequency_2, 450 * k_sweep, 0, 70, 0.008, 0.035, 0.012, 60, gi_GM_Voice_Oohs_sine, gi_GM_Voice_Oohs_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f1
a_v2_f2 fof 0.2839, k_frequency_2, 800 * k_sweep, 0, 80, 0.008, 0.035, 0.012, 60, gi_GM_Voice_Oohs_sine, gi_GM_Voice_Oohs_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f2
a_v2_f3 fof 0.1268, k_frequency_2, 2830 * k_sweep, 0, 100, 0.008, 0.035, 0.012, 60, gi_GM_Voice_Oohs_sine, gi_GM_Voice_Oohs_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f3
a_v2_f4 fof 0.0318, k_frequency_2, 3500 * k_sweep, 0, 130, 0.008, 0.035, 0.012, 60, gi_GM_Voice_Oohs_sine, gi_GM_Voice_Oohs_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f4
a_v2_f5 fof 0.0014, k_frequency_2, 4950 * k_sweep, 0, 135, 0.008, 0.035, 0.012, 60, gi_GM_Voice_Oohs_sine, gi_GM_Voice_Oohs_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f5
; Voice 3: its own vibrato rate and a slow pitch drift, so the
; singers do not move in lock step.
k_vibrato_3 vibr gk_GM_Voice_Oohs_vibrato_depth * k_vibrato_envelope, gk_GM_Voice_Oohs_vibrato_rate * 1.09, gi_GM_Voice_Oohs_sine
k_drift_3 jitter 0.1, 0.2, 0.9
k_frequency_3 = i_frequency * 0.9955 * 2 ^ ((k_vibrato_3 + k_drift_3) / 12)
a_v3_f1 fof 0.8000, k_frequency_3, 450 * k_sweep, 0, 70, 0.008, 0.035, 0.012, 60, gi_GM_Voice_Oohs_sine, gi_GM_Voice_Oohs_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f1
a_v3_f2 fof 0.2839, k_frequency_3, 800 * k_sweep, 0, 80, 0.008, 0.035, 0.012, 60, gi_GM_Voice_Oohs_sine, gi_GM_Voice_Oohs_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f2
a_v3_f3 fof 0.1268, k_frequency_3, 2830 * k_sweep, 0, 100, 0.008, 0.035, 0.012, 60, gi_GM_Voice_Oohs_sine, gi_GM_Voice_Oohs_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f3
a_v3_f4 fof 0.0318, k_frequency_3, 3500 * k_sweep, 0, 130, 0.008, 0.035, 0.012, 60, gi_GM_Voice_Oohs_sine, gi_GM_Voice_Oohs_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f4
a_v3_f5 fof 0.0014, k_frequency_3, 4950 * k_sweep, 0, 135, 0.008, 0.035, 0.012, 60, gi_GM_Voice_Oohs_sine, gi_GM_Voice_Oohs_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f5
; The level of formant synthesis depends on how the harmonics line up
; with the formants, so hold the loudness steady against a reference.
a_reference poscil 0.6, 100, gi_GM_Voice_Oohs_sine
a_signal balance a_signal, a_reference, 4
; Breath through the mouth formants, and a gentle widening chorus.
a_breath_source rand 1
a_breath_1 reson a_breath_source, 450 * k_sweep, 450 * 0.3, 1
a_breath_2 reson a_breath_source, 800 * k_sweep, 800 * 0.3, 1
a_signal = a_signal + (a_breath_1 + a_breath_2 * 0.5) * 0.03
a_chorus_lfo_1 poscil 1.2, 0.31, gi_GM_Voice_Oohs_sine
a_chorus_lfo_2 poscil 1.2, 0.47, gi_GM_Voice_Oohs_sine
a_chorus_1 vdelay3 a_signal, 16 + a_chorus_lfo_1, 40
a_chorus_2 vdelay3 a_signal, 23 + a_chorus_lfo_2, 40
a_signal = a_signal * 0.6 + (a_chorus_1 + a_chorus_2) * 0.3
a_signal tonex a_signal, 4500, 2
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  55  Synth Voice
gk_GM_Synth_Voice_level chnexport "gk_GM_Synth_Voice_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Synth_Voice_midi_dynamic_range chnexport "gk_GM_Synth_Voice_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Synth_Voice_space_left_to_right chnexport "gk_GM_Synth_Voice_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Synth_Voice_vibrato_depth chnexport "gk_GM_Synth_Voice_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Synth_Voice_vibrato_rate chnexport "gk_GM_Synth_Voice_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Synth_Voice_level init 0
gk_GM_Synth_Voice_midi_dynamic_range init 20
gk_GM_Synth_Voice_space_left_to_right init 0.5
gk_GM_Synth_Voice_vibrato_depth init 0.2
gk_GM_Synth_Voice_vibrato_rate init 5
gi_GM_Synth_Voice_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Synth_Voice_sigmoid ftgen 0, 0, 1024, 19, 0.5, 0.5, 270, 0.5
instr GM_Synth_Voice
; General MIDI program 55: Synth Voice.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Synth_Voice_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Synth_Voice_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 63.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Synth_Voice_level)
; Formant synthesis (FOF): several detuned voices, each with five vowel
; formants, plus a little breath noise.
i_attack = 0.15
i_release = 0.25
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
i_total_duration = (p3 > 0 ? p3 + i_release : 3600)
k_vibrato_envelope linseg 0, 0.3, 0, 0.6, 1, 1, 1
k_vibrato vibr gk_GM_Synth_Voice_vibrato_depth * k_vibrato_envelope, gk_GM_Synth_Voice_vibrato_rate, gi_GM_Synth_Voice_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
k_sweep = 1
a_signal = 0
a_v1_f1 fof 1.0000, k_frequency * 1.0, 325 * k_sweep, 0, 50, 0.003, 0.02, 0.007, 60, gi_GM_Synth_Voice_sine, gi_GM_Synth_Voice_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f1
a_v1_f2 fof 0.2512, k_frequency * 1.0, 700 * k_sweep, 0, 60, 0.003, 0.02, 0.007, 60, gi_GM_Synth_Voice_sine, gi_GM_Synth_Voice_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f2
a_v1_f3 fof 0.0316, k_frequency * 1.0, 2530 * k_sweep, 0, 170, 0.003, 0.02, 0.007, 60, gi_GM_Synth_Voice_sine, gi_GM_Synth_Voice_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f3
a_v1_f4 fof 0.0100, k_frequency * 1.0, 3500 * k_sweep, 0, 180, 0.003, 0.02, 0.007, 60, gi_GM_Synth_Voice_sine, gi_GM_Synth_Voice_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f4
a_v1_f5 fof 0.0006, k_frequency * 1.0, 4950 * k_sweep, 0, 200, 0.003, 0.02, 0.007, 60, gi_GM_Synth_Voice_sine, gi_GM_Synth_Voice_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f5
a_v2_f1 fof 0.8000, k_frequency * 1.004, 325 * k_sweep, 0, 50, 0.003, 0.02, 0.007, 60, gi_GM_Synth_Voice_sine, gi_GM_Synth_Voice_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f1
a_v2_f2 fof 0.2010, k_frequency * 1.004, 700 * k_sweep, 0, 60, 0.003, 0.02, 0.007, 60, gi_GM_Synth_Voice_sine, gi_GM_Synth_Voice_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f2
a_v2_f3 fof 0.0253, k_frequency * 1.004, 2530 * k_sweep, 0, 170, 0.003, 0.02, 0.007, 60, gi_GM_Synth_Voice_sine, gi_GM_Synth_Voice_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f3
a_v2_f4 fof 0.0080, k_frequency * 1.004, 3500 * k_sweep, 0, 180, 0.003, 0.02, 0.007, 60, gi_GM_Synth_Voice_sine, gi_GM_Synth_Voice_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f4
a_v2_f5 fof 0.0005, k_frequency * 1.004, 4950 * k_sweep, 0, 200, 0.003, 0.02, 0.007, 60, gi_GM_Synth_Voice_sine, gi_GM_Synth_Voice_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f5
a_v3_f1 fof 0.8000, k_frequency * 0.9965, 325 * k_sweep, 0, 50, 0.003, 0.02, 0.007, 60, gi_GM_Synth_Voice_sine, gi_GM_Synth_Voice_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f1
a_v3_f2 fof 0.2010, k_frequency * 0.9965, 700 * k_sweep, 0, 60, 0.003, 0.02, 0.007, 60, gi_GM_Synth_Voice_sine, gi_GM_Synth_Voice_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f2
a_v3_f3 fof 0.0253, k_frequency * 0.9965, 2530 * k_sweep, 0, 170, 0.003, 0.02, 0.007, 60, gi_GM_Synth_Voice_sine, gi_GM_Synth_Voice_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f3
a_v3_f4 fof 0.0080, k_frequency * 0.9965, 3500 * k_sweep, 0, 180, 0.003, 0.02, 0.007, 60, gi_GM_Synth_Voice_sine, gi_GM_Synth_Voice_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f4
a_v3_f5 fof 0.0005, k_frequency * 0.9965, 4950 * k_sweep, 0, 200, 0.003, 0.02, 0.007, 60, gi_GM_Synth_Voice_sine, gi_GM_Synth_Voice_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f5
; The level of formant synthesis depends on how the harmonics line up
; with the formants, so hold the loudness steady against a reference.
a_reference poscil 0.6, 100, gi_GM_Synth_Voice_sine
a_signal balance a_signal, a_reference, 4
a_breath_noise rand 1
a_breath butterbp a_breath_noise, 2500, 2000
a_signal = a_signal + a_breath * 0.02
a_synth vco2 0.2, k_frequency, 0
a_synth moogladder a_synth, limit(i_frequency * 6, 500, 8000), 0.2
a_signal = a_signal + a_synth
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  56  Orchestra Hit
gk_GM_Orchestra_Hit_level chnexport "gk_GM_Orchestra_Hit_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Orchestra_Hit_midi_dynamic_range chnexport "gk_GM_Orchestra_Hit_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Orchestra_Hit_space_left_to_right chnexport "gk_GM_Orchestra_Hit_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Orchestra_Hit_level init 0
gk_GM_Orchestra_Hit_midi_dynamic_range init 20
gk_GM_Orchestra_Hit_space_left_to_right init 0.5
gi_GM_Orchestra_Hit_sine ftgen 0, 0, 65537, 10, 1
instr GM_Orchestra_Hit
; General MIDI program 56: Orchestra Hit.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Orchestra_Hit_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Orchestra_Hit_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 68.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Orchestra_Hit_level)
; Orchestra hit: a stab of brass, strings, and a timpani-like thump,
; all decaying together.
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = 0.9
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.008
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.05
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_index transeg 6, 0.15, -3, 1.5, 0.75, -2, 0.5
a_brass_1 foscili 0.5, i_frequency, 1, 1, k_index, gi_GM_Orchestra_Hit_sine
a_brass_2 foscili 0.5, i_frequency * 1.004, 1, 1, k_index, gi_GM_Orchestra_Hit_sine
a_strings_1 vco2 0.3, i_frequency * 2.003, 0
a_strings_2 vco2 0.3, i_frequency * 1.996, 0
a_strings_3 vco2 0.3, i_frequency * 0.5, 0
a_strings moogladder a_strings_1 + a_strings_2 + a_strings_3, limit(i_frequency * 6, 500, 8000), 0.1
k_thump transeg i_frequency * 0.25 * 1.5, 0.05, -3, i_frequency * 0.25
a_thump_envelope transeg 0.8, 0.4, -4, 0
a_thump poscil a_thump_envelope, k_thump, gi_GM_Orchestra_Hit_sine
a_noise rand 1
a_attack_envelope transeg 0.3, 0.01, -3, 0
a_attack butterbp a_noise * a_attack_envelope, 2000, 2000
a_signal = a_brass_1 + a_brass_2 + a_strings + a_thump + a_attack
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  57  Trumpet
gk_GM_Trumpet_level chnexport "gk_GM_Trumpet_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Trumpet_midi_dynamic_range chnexport "gk_GM_Trumpet_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Trumpet_space_left_to_right chnexport "gk_GM_Trumpet_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Trumpet_index chnexport "gk_GM_Trumpet_index", 3 ; Peak FM index; higher is brighter.
gk_GM_Trumpet_vibrato_depth chnexport "gk_GM_Trumpet_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Trumpet_vibrato_rate chnexport "gk_GM_Trumpet_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Trumpet_level init -4
gk_GM_Trumpet_midi_dynamic_range init 20
gk_GM_Trumpet_space_left_to_right init 0.5
gk_GM_Trumpet_index init 5.0
gk_GM_Trumpet_vibrato_depth init 0.2
gk_GM_Trumpet_vibrato_rate init 5.5
gi_GM_Trumpet_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Trumpet_cosine ftgen 0, 0, 65537, 11, 1
instr GM_Trumpet
; General MIDI program 57: Trumpet.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Trumpet_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Trumpet_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 51.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Trumpet_level)
; Chowning brass: the FM index follows the amplitude envelope, with an
; overshoot at the attack. Louder notes are brighter.
i_index = i(gk_GM_Trumpet_index) * (0.45 + 0.75 * i_velocity)
i_attack = 0.05
i_release = 0.1
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_index transeg 0, i_attack * 0.8, 2, i_index * 1.5, 0.12, -3, i_index, 1, 0, i_index
k_index_release linsegr 1, 1, 1, i_release, 0.3
k_index = k_index * k_index_release
k_vibrato_envelope linseg 0, 0.4, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Trumpet_vibrato_depth * k_vibrato_envelope, gk_GM_Trumpet_vibrato_rate, gi_GM_Trumpet_sine
; A slight lip-slur into the pitch.
k_slur transeg -0.5, i_attack * 1.2, -2, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_slur) / 12)
a_signal = 0
a_voice1 foscili 1.0, k_frequency * 1.0, 1, 1, k_index, gi_GM_Trumpet_sine
a_signal = a_signal + a_voice1
; The main body of the tone is a band-limited pulse whose harmonic
; roll-off follows the loudness (louder is brighter), coloured by the
; bell's formants. The FM voice above is kept only as a quiet edge.
k_envelope = k(a_envelope)
k_brightness transeg 0.3, i_attack, 2, 1.15, 0.15, -3, 1, 1, 0, 1
k_mul = limit((0.5 + 0.35 * i_velocity) * k_brightness * (0.6 + 0.4 * k_envelope), 0.2, 0.92)
i_nh = int(limit(sr / 2.2 / i_frequency, 1, 60))
a_pulse gbuzz 1, k_frequency, i_nh, 1, k_mul, gi_GM_Trumpet_cosine
a_formant_1 reson a_pulse, 1250, 1250 * 0.25, 1
a_formant_2 reson a_pulse, 2500, 2500 * 0.3, 1
a_body = a_pulse * 0.35 + a_formant_1 * 0.5 + a_formant_2 * 0.25
a_signal = a_body + a_signal * 0.25
a_breath_noise rand 1
a_breath butterbp a_breath_noise, limit(i_frequency * 4, 300, 8000), limit(i_frequency * 2, 200, 4000)
a_signal = a_signal + a_breath * 0.02
a_signal tonex a_signal, limit(i_frequency * 12, 1200, 15000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  58  Trombone
gk_GM_Trombone_level chnexport "gk_GM_Trombone_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Trombone_midi_dynamic_range chnexport "gk_GM_Trombone_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Trombone_space_left_to_right chnexport "gk_GM_Trombone_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Trombone_index chnexport "gk_GM_Trombone_index", 3 ; Peak FM index; higher is brighter.
gk_GM_Trombone_vibrato_depth chnexport "gk_GM_Trombone_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Trombone_vibrato_rate chnexport "gk_GM_Trombone_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Trombone_level init 0
gk_GM_Trombone_midi_dynamic_range init 20
gk_GM_Trombone_space_left_to_right init 0.5
gk_GM_Trombone_index init 4.0
gk_GM_Trombone_vibrato_depth init 0.2
gk_GM_Trombone_vibrato_rate init 5.5
gi_GM_Trombone_sine ftgen 0, 0, 65537, 10, 1
instr GM_Trombone
; General MIDI program 58: Trombone.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Trombone_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Trombone_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 63.7
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Trombone_level)
; Chowning brass: the FM index follows the amplitude envelope, with an
; overshoot at the attack. Louder notes are brighter.
i_index = i(gk_GM_Trombone_index) * (0.45 + 0.75 * i_velocity)
i_attack = 0.08
i_release = 0.1
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_index transeg 0, i_attack * 0.8, 2, i_index * 1.5, 0.12, -3, i_index, 1, 0, i_index
k_index_release linsegr 1, 1, 1, i_release, 0.3
k_index = k_index * k_index_release
k_vibrato_envelope linseg 0, 0.4, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Trombone_vibrato_depth * k_vibrato_envelope, gk_GM_Trombone_vibrato_rate, gi_GM_Trombone_sine
; A slight lip-slur into the pitch.
k_slur transeg -0.8, i_attack * 1.2, -2, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_slur) / 12)
a_signal = 0
a_voice1 foscili 1.0, k_frequency * 1.0, 1, 1, k_index, gi_GM_Trombone_sine
a_signal = a_signal + a_voice1
a_breath_noise rand 1
a_breath butterbp a_breath_noise, limit(i_frequency * 4, 300, 8000), limit(i_frequency * 2, 200, 4000)
a_signal = a_signal + a_breath * 0.02
a_signal tonex a_signal, limit(i_frequency * 9, 1200, 15000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  59  Tuba
gk_GM_Tuba_level chnexport "gk_GM_Tuba_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Tuba_midi_dynamic_range chnexport "gk_GM_Tuba_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Tuba_space_left_to_right chnexport "gk_GM_Tuba_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Tuba_index chnexport "gk_GM_Tuba_index", 3 ; Peak FM index; higher is brighter.
gk_GM_Tuba_vibrato_depth chnexport "gk_GM_Tuba_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Tuba_vibrato_rate chnexport "gk_GM_Tuba_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Tuba_level init 0
gk_GM_Tuba_midi_dynamic_range init 20
gk_GM_Tuba_space_left_to_right init 0.5
gk_GM_Tuba_index init 2.5
gk_GM_Tuba_vibrato_depth init 0.1
gk_GM_Tuba_vibrato_rate init 4.5
gi_GM_Tuba_sine ftgen 0, 0, 65537, 10, 1
instr GM_Tuba
; General MIDI program 59: Tuba.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Tuba_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Tuba_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 66.7
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Tuba_level)
; Chowning brass: the FM index follows the amplitude envelope, with an
; overshoot at the attack. Louder notes are brighter.
i_index = i(gk_GM_Tuba_index) * (0.45 + 0.75 * i_velocity)
i_attack = 0.1
i_release = 0.1
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_index transeg 0, i_attack * 0.8, 2, i_index * 1.5, 0.12, -3, i_index, 1, 0, i_index
k_index_release linsegr 1, 1, 1, i_release, 0.3
k_index = k_index * k_index_release
k_vibrato_envelope linseg 0, 0.5, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Tuba_vibrato_depth * k_vibrato_envelope, gk_GM_Tuba_vibrato_rate, gi_GM_Tuba_sine
; A slight lip-slur into the pitch.
k_slur transeg -0.5, i_attack * 1.2, -2, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_slur) / 12)
a_signal = 0
a_voice1 foscili 1.0, k_frequency * 1.0, 1, 1, k_index, gi_GM_Tuba_sine
a_signal = a_signal + a_voice1
a_breath_noise rand 1
a_breath butterbp a_breath_noise, limit(i_frequency * 4, 300, 8000), limit(i_frequency * 2, 200, 4000)
a_signal = a_signal + a_breath * 0.02
a_signal tonex a_signal, limit(i_frequency * 6, 1200, 15000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  60  Muted Trumpet
gk_GM_Muted_Trumpet_level chnexport "gk_GM_Muted_Trumpet_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Muted_Trumpet_midi_dynamic_range chnexport "gk_GM_Muted_Trumpet_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Muted_Trumpet_space_left_to_right chnexport "gk_GM_Muted_Trumpet_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Muted_Trumpet_index chnexport "gk_GM_Muted_Trumpet_index", 3 ; Peak FM index; higher is brighter.
gk_GM_Muted_Trumpet_vibrato_depth chnexport "gk_GM_Muted_Trumpet_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Muted_Trumpet_vibrato_rate chnexport "gk_GM_Muted_Trumpet_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Muted_Trumpet_level init 0
gk_GM_Muted_Trumpet_midi_dynamic_range init 20
gk_GM_Muted_Trumpet_space_left_to_right init 0.5
gk_GM_Muted_Trumpet_index init 5.0
gk_GM_Muted_Trumpet_vibrato_depth init 0.2
gk_GM_Muted_Trumpet_vibrato_rate init 5.5
gi_GM_Muted_Trumpet_sine ftgen 0, 0, 65537, 10, 1
instr GM_Muted_Trumpet
; General MIDI program 60: Muted Trumpet.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Muted_Trumpet_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Muted_Trumpet_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 64.6
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Muted_Trumpet_level)
; Chowning brass: the FM index follows the amplitude envelope, with an
; overshoot at the attack. Louder notes are brighter.
i_index = i(gk_GM_Muted_Trumpet_index) * (0.45 + 0.75 * i_velocity)
i_attack = 0.05
i_release = 0.1
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_index transeg 0, i_attack * 0.8, 2, i_index * 1.5, 0.12, -3, i_index, 1, 0, i_index
k_index_release linsegr 1, 1, 1, i_release, 0.3
k_index = k_index * k_index_release
k_vibrato_envelope linseg 0, 0.4, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Muted_Trumpet_vibrato_depth * k_vibrato_envelope, gk_GM_Muted_Trumpet_vibrato_rate, gi_GM_Muted_Trumpet_sine
; A slight lip-slur into the pitch.
k_slur transeg -0.5, i_attack * 1.2, -2, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_slur) / 12)
a_signal = 0
a_voice1 foscili 1.0, k_frequency * 1.0, 1, 1, k_index, gi_GM_Muted_Trumpet_sine
a_signal = a_signal + a_voice1
a_breath_noise rand 1
a_breath butterbp a_breath_noise, limit(i_frequency * 4, 300, 8000), limit(i_frequency * 2, 200, 4000)
a_signal = a_signal + a_breath * 0.02
; Mute: a strong fixed formant and a thinned low end.
a_muted reson a_signal, 1600, 400, 1
a_muted_2 reson a_signal, 3040.0, 600.0, 1
a_signal = a_muted * 1.2 + a_muted_2 * 0.5 + a_signal * 0.15
a_signal butterhp a_signal, 400
a_signal tonex a_signal, limit(i_frequency * 14, 1200, 15000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  61  French Horn
gk_GM_French_Horn_level chnexport "gk_GM_French_Horn_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_French_Horn_midi_dynamic_range chnexport "gk_GM_French_Horn_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_French_Horn_space_left_to_right chnexport "gk_GM_French_Horn_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_French_Horn_index chnexport "gk_GM_French_Horn_index", 3 ; Peak FM index; higher is brighter.
gk_GM_French_Horn_vibrato_depth chnexport "gk_GM_French_Horn_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_French_Horn_vibrato_rate chnexport "gk_GM_French_Horn_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_French_Horn_level init 0
gk_GM_French_Horn_midi_dynamic_range init 20
gk_GM_French_Horn_space_left_to_right init 0.5
gk_GM_French_Horn_index init 2.2
gk_GM_French_Horn_vibrato_depth init 0.0
gk_GM_French_Horn_vibrato_rate init 5
gi_GM_French_Horn_sine ftgen 0, 0, 65537, 10, 1
instr GM_French_Horn
; General MIDI program 61: French Horn.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_French_Horn_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_French_Horn_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 66.7
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_French_Horn_level)
; Chowning brass: the FM index follows the amplitude envelope, with an
; overshoot at the attack. Louder notes are brighter.
i_index = i(gk_GM_French_Horn_index) * (0.45 + 0.75 * i_velocity)
i_attack = 0.09
i_release = 0.1
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_index transeg 0, i_attack * 0.8, 2, i_index * 1.3, 0.12, -3, i_index, 1, 0, i_index
k_index_release linsegr 1, 1, 1, i_release, 0.3
k_index = k_index * k_index_release
k_vibrato_envelope linseg 0, 0.5, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_French_Horn_vibrato_depth * k_vibrato_envelope, gk_GM_French_Horn_vibrato_rate, gi_GM_French_Horn_sine
; A slight lip-slur into the pitch.
k_slur transeg -0.5, i_attack * 1.2, -2, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_slur) / 12)
a_signal = 0
a_voice1 foscili 1.0, k_frequency * 1.0, 1, 1, k_index, gi_GM_French_Horn_sine
a_signal = a_signal + a_voice1
a_breath_noise rand 1
a_breath butterbp a_breath_noise, limit(i_frequency * 4, 300, 8000), limit(i_frequency * 2, 200, 4000)
a_signal = a_signal + a_breath * 0.01
a_signal tonex a_signal, limit(i_frequency * 6, 1200, 15000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  62  Brass Section
gk_GM_Brass_Section_level chnexport "gk_GM_Brass_Section_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Brass_Section_midi_dynamic_range chnexport "gk_GM_Brass_Section_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Brass_Section_space_left_to_right chnexport "gk_GM_Brass_Section_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Brass_Section_index chnexport "gk_GM_Brass_Section_index", 3 ; Peak FM index; higher is brighter.
gk_GM_Brass_Section_vibrato_depth chnexport "gk_GM_Brass_Section_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Brass_Section_vibrato_rate chnexport "gk_GM_Brass_Section_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Brass_Section_level init 0
gk_GM_Brass_Section_midi_dynamic_range init 20
gk_GM_Brass_Section_space_left_to_right init 0.5
gk_GM_Brass_Section_index init 4.5
gk_GM_Brass_Section_vibrato_depth init 0.2
gk_GM_Brass_Section_vibrato_rate init 5.5
gi_GM_Brass_Section_sine ftgen 0, 0, 65537, 10, 1
instr GM_Brass_Section
; General MIDI program 62: Brass Section.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Brass_Section_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Brass_Section_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 66.9
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Brass_Section_level)
; Chowning brass: the FM index follows the amplitude envelope, with an
; overshoot at the attack. Louder notes are brighter.
i_index = i(gk_GM_Brass_Section_index) * (0.45 + 0.75 * i_velocity)
i_attack = 0.07
i_release = 0.1
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_index transeg 0, i_attack * 0.8, 2, i_index * 1.5, 0.12, -3, i_index, 1, 0, i_index
k_index_release linsegr 1, 1, 1, i_release, 0.3
k_index = k_index * k_index_release
k_vibrato_envelope linseg 0, 0.4, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Brass_Section_vibrato_depth * k_vibrato_envelope, gk_GM_Brass_Section_vibrato_rate, gi_GM_Brass_Section_sine
; A slight lip-slur into the pitch.
k_slur transeg -0.5, i_attack * 1.2, -2, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_slur) / 12)
a_signal = 0
a_voice1 foscili 0.5, k_frequency * 1.0, 1, 1, k_index, gi_GM_Brass_Section_sine
a_signal = a_signal + a_voice1
a_voice2 foscili 0.5, k_frequency * 1.004, 1, 1, k_index, gi_GM_Brass_Section_sine
a_signal = a_signal + a_voice2
a_voice3 foscili 0.4, k_frequency * 0.996, 1, 1, k_index, gi_GM_Brass_Section_sine
a_signal = a_signal + a_voice3
a_breath_noise rand 1
a_breath butterbp a_breath_noise, limit(i_frequency * 4, 300, 8000), limit(i_frequency * 2, 200, 4000)
a_signal = a_signal + a_breath * 0.02
a_signal tonex a_signal, limit(i_frequency * 12, 1200, 15000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  63  SynthBrass 1
gk_GM_SynthBrass_1_level chnexport "gk_GM_SynthBrass_1_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_SynthBrass_1_midi_dynamic_range chnexport "gk_GM_SynthBrass_1_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_SynthBrass_1_space_left_to_right chnexport "gk_GM_SynthBrass_1_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_SynthBrass_1_cutoff chnexport "gk_GM_SynthBrass_1_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_SynthBrass_1_resonance chnexport "gk_GM_SynthBrass_1_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_SynthBrass_1_vibrato_depth chnexport "gk_GM_SynthBrass_1_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_SynthBrass_1_vibrato_rate chnexport "gk_GM_SynthBrass_1_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_SynthBrass_1_level init 0
gk_GM_SynthBrass_1_midi_dynamic_range init 20
gk_GM_SynthBrass_1_space_left_to_right init 0.5
gk_GM_SynthBrass_1_cutoff init 4
gk_GM_SynthBrass_1_resonance init 0.1
gk_GM_SynthBrass_1_vibrato_depth init 0.0
gk_GM_SynthBrass_1_vibrato_rate init 5.0
gi_GM_SynthBrass_1_sine ftgen 0, 0, 65537, 10, 1
instr GM_SynthBrass_1
; General MIDI program 63: SynthBrass 1.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_SynthBrass_1_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_SynthBrass_1_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 59.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_SynthBrass_1_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 0.04
i_decay = 0.2
i_sustain_level = 0.85
i_release = 0.15
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_SynthBrass_1_vibrato_depth * k_vibrato_envelope, gk_GM_SynthBrass_1_vibrato_rate, gi_GM_SynthBrass_1_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_oscillators = 0
a_osc1 vco2 0.5, k_frequency * 1.0 * 1.0, 0
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.5, k_frequency * 1.006 * 1.0, 0
a_oscillators = a_oscillators + a_osc2
a_osc3 vco2 0.4, k_frequency * 0.994 * 1.0, 0
a_oscillators = a_oscillators + a_osc3
k_filter_envelope transeg 1, 0.25, -3, 0.3
k_cutoff = i_frequency * gk_GM_SynthBrass_1_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 1.5 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_SynthBrass_1_resonance
; Chorus.
a_chorus_lfo_1 poscil 1.5, 0.6, gi_GM_SynthBrass_1_sine
a_chorus_lfo_2 poscil 1.5, 0.9, gi_GM_SynthBrass_1_sine
a_chorus_1 vdelay3 a_signal, 9 + a_chorus_lfo_1, 30
a_chorus_2 vdelay3 a_signal, 14 + a_chorus_lfo_2, 30
a_signal = a_signal * (1 - 0.4 * 0.5) + (a_chorus_1 + a_chorus_2) * 0.4 * 0.5
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  64  SynthBrass 2
gk_GM_SynthBrass_2_level chnexport "gk_GM_SynthBrass_2_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_SynthBrass_2_midi_dynamic_range chnexport "gk_GM_SynthBrass_2_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_SynthBrass_2_space_left_to_right chnexport "gk_GM_SynthBrass_2_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_SynthBrass_2_cutoff chnexport "gk_GM_SynthBrass_2_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_SynthBrass_2_resonance chnexport "gk_GM_SynthBrass_2_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_SynthBrass_2_vibrato_depth chnexport "gk_GM_SynthBrass_2_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_SynthBrass_2_vibrato_rate chnexport "gk_GM_SynthBrass_2_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_SynthBrass_2_level init 0
gk_GM_SynthBrass_2_midi_dynamic_range init 20
gk_GM_SynthBrass_2_space_left_to_right init 0.5
gk_GM_SynthBrass_2_cutoff init 3.5
gk_GM_SynthBrass_2_resonance init 0.3
gk_GM_SynthBrass_2_vibrato_depth init 0.0
gk_GM_SynthBrass_2_vibrato_rate init 5.0
gi_GM_SynthBrass_2_sine ftgen 0, 0, 65537, 10, 1
instr GM_SynthBrass_2
; General MIDI program 64: SynthBrass 2.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_SynthBrass_2_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_SynthBrass_2_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 58.4
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_SynthBrass_2_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 0.08
i_decay = 0.3
i_sustain_level = 0.8
i_release = 0.25
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_SynthBrass_2_vibrato_depth * k_vibrato_envelope, gk_GM_SynthBrass_2_vibrato_rate, gi_GM_SynthBrass_2_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
k_pw lfo 0.15, 0.5, 0
k_pw = 0.5 + k_pw
a_oscillators = 0
a_osc1 vco2 0.5, k_frequency * 1.0 * 1.0, 2, k_pw
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.5, k_frequency * 1.004 * 1.0, 0
a_oscillators = a_oscillators + a_osc2
a_osc3 vco2 0.3, k_frequency * 0.5 * 1.0, 2, k_pw
a_oscillators = a_oscillators + a_osc3
k_filter_envelope transeg 1, 0.35, -3, 0.3
k_cutoff = i_frequency * gk_GM_SynthBrass_2_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 1.2 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_SynthBrass_2_resonance
; Chorus.
a_chorus_lfo_1 poscil 1.5, 0.6, gi_GM_SynthBrass_2_sine
a_chorus_lfo_2 poscil 1.5, 0.9, gi_GM_SynthBrass_2_sine
a_chorus_1 vdelay3 a_signal, 9 + a_chorus_lfo_1, 30
a_chorus_2 vdelay3 a_signal, 14 + a_chorus_lfo_2, 30
a_signal = a_signal * (1 - 0.3 * 0.5) + (a_chorus_1 + a_chorus_2) * 0.3 * 0.5
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  65  Soprano Sax
gk_GM_Soprano_Sax_level chnexport "gk_GM_Soprano_Sax_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Soprano_Sax_midi_dynamic_range chnexport "gk_GM_Soprano_Sax_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Soprano_Sax_space_left_to_right chnexport "gk_GM_Soprano_Sax_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Soprano_Sax_vibrato_depth chnexport "gk_GM_Soprano_Sax_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Soprano_Sax_vibrato_rate chnexport "gk_GM_Soprano_Sax_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Soprano_Sax_breath chnexport "gk_GM_Soprano_Sax_breath", 3 ; Breath noise level.
gk_GM_Soprano_Sax_brightness chnexport "gk_GM_Soprano_Sax_brightness", 3 ; Multiplies the dynamic low-pass cut-off.
gk_GM_Soprano_Sax_level init 0
gk_GM_Soprano_Sax_midi_dynamic_range init 20
gk_GM_Soprano_Sax_space_left_to_right init 0.5
gk_GM_Soprano_Sax_vibrato_depth init 0.25
gk_GM_Soprano_Sax_vibrato_rate init 5.3
gk_GM_Soprano_Sax_breath init 0.04
gk_GM_Soprano_Sax_brightness init 1.0
gi_GM_Soprano_Sax_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Soprano_Sax_cosine ftgen 0, 0, 65537, 11, 1
instr GM_Soprano_Sax
; General MIDI program 65: Soprano Sax.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Soprano_Sax_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Soprano_Sax_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 53.8
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Soprano_Sax_level)
; Reed source whose harmonic roll-off follows the envelope (louder is
; brighter), two body formants, breath noise, a pitch scoop at the
; attack, and delayed vibrato.
i_breath = i(gk_GM_Soprano_Sax_breath)
i_brightness = i(gk_GM_Soprano_Sax_brightness)
i_attack = 0.04
i_release = 0.08
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_envelope = k(a_envelope)
k_vibrato_envelope linseg 0, 0.35, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Soprano_Sax_vibrato_depth * k_vibrato_envelope, gk_GM_Soprano_Sax_vibrato_rate, gi_GM_Soprano_Sax_sine
k_scoop transeg -0.35, 0.1, -3, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_scoop) / 12)
i_nh = int(limit(sr / 2.2 / i_frequency, 1, 80))
k_mul = 0.55 + 0.3 * i_velocity * k_envelope
a_source gbuzz 1, k_frequency, i_nh, 1, k_mul, gi_GM_Soprano_Sax_cosine
; Slight asymmetry adds even harmonics typical of the conical bore.
a_source = a_source + 0.15 * a_source * a_source
a_signal = a_source * 0.3
a_formant1 reson a_source, 1400, 300, 1
a_signal = a_signal + a_formant1 * 0.5
a_formant2 reson a_source, 2500, 500, 1
a_signal = a_signal + a_formant2 * 0.3
a_breath_noise rand 1
a_breath butterbp a_breath_noise, limit(i_frequency * 3, 200, 8000), limit(i_frequency * 2, 100, 5000)
a_signal = a_signal + a_breath * i_breath * (0.5 + k_envelope)
k_cutoff = limit(i_frequency * 10 * (0.4 + 0.9 * i_velocity * k_envelope) * i_brightness, 600, 14000)
a_signal moogladder a_signal, k_cutoff, 0.1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  66  Alto Sax
gk_GM_Alto_Sax_level chnexport "gk_GM_Alto_Sax_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Alto_Sax_midi_dynamic_range chnexport "gk_GM_Alto_Sax_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Alto_Sax_space_left_to_right chnexport "gk_GM_Alto_Sax_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Alto_Sax_vibrato_depth chnexport "gk_GM_Alto_Sax_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Alto_Sax_vibrato_rate chnexport "gk_GM_Alto_Sax_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Alto_Sax_breath chnexport "gk_GM_Alto_Sax_breath", 3 ; Breath noise level.
gk_GM_Alto_Sax_brightness chnexport "gk_GM_Alto_Sax_brightness", 3 ; Multiplies the dynamic low-pass cut-off.
gk_GM_Alto_Sax_level init 0
gk_GM_Alto_Sax_midi_dynamic_range init 20
gk_GM_Alto_Sax_space_left_to_right init 0.5
gk_GM_Alto_Sax_vibrato_depth init 0.25
gk_GM_Alto_Sax_vibrato_rate init 5.3
gk_GM_Alto_Sax_breath init 0.04
gk_GM_Alto_Sax_brightness init 1.0
gi_GM_Alto_Sax_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Alto_Sax_cosine ftgen 0, 0, 65537, 11, 1
instr GM_Alto_Sax
; General MIDI program 66: Alto Sax.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Alto_Sax_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Alto_Sax_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 53.7
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Alto_Sax_level)
; Reed source whose harmonic roll-off follows the envelope (louder is
; brighter), two body formants, breath noise, a pitch scoop at the
; attack, and delayed vibrato.
i_breath = i(gk_GM_Alto_Sax_breath)
i_brightness = i(gk_GM_Alto_Sax_brightness)
i_attack = 0.04
i_release = 0.08
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_envelope = k(a_envelope)
k_vibrato_envelope linseg 0, 0.35, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Alto_Sax_vibrato_depth * k_vibrato_envelope, gk_GM_Alto_Sax_vibrato_rate, gi_GM_Alto_Sax_sine
k_scoop transeg -0.35, 0.1, -3, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_scoop) / 12)
i_nh = int(limit(sr / 2.2 / i_frequency, 1, 80))
k_mul = 0.55 + 0.3 * i_velocity * k_envelope
a_source gbuzz 1, k_frequency, i_nh, 1, k_mul, gi_GM_Alto_Sax_cosine
; Slight asymmetry adds even harmonics typical of the conical bore.
a_source = a_source + 0.15 * a_source * a_source
a_signal = a_source * 0.3
a_formant1 reson a_source, 1100, 250, 1
a_signal = a_signal + a_formant1 * 0.5
a_formant2 reson a_source, 2000, 400, 1
a_signal = a_signal + a_formant2 * 0.3
a_breath_noise rand 1
a_breath butterbp a_breath_noise, limit(i_frequency * 3, 200, 8000), limit(i_frequency * 2, 100, 5000)
a_signal = a_signal + a_breath * i_breath * (0.5 + k_envelope)
k_cutoff = limit(i_frequency * 9 * (0.4 + 0.9 * i_velocity * k_envelope) * i_brightness, 600, 14000)
a_signal moogladder a_signal, k_cutoff, 0.1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  67  Tenor Sax
gk_GM_Tenor_Sax_level chnexport "gk_GM_Tenor_Sax_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Tenor_Sax_midi_dynamic_range chnexport "gk_GM_Tenor_Sax_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Tenor_Sax_space_left_to_right chnexport "gk_GM_Tenor_Sax_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Tenor_Sax_vibrato_depth chnexport "gk_GM_Tenor_Sax_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Tenor_Sax_vibrato_rate chnexport "gk_GM_Tenor_Sax_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Tenor_Sax_breath chnexport "gk_GM_Tenor_Sax_breath", 3 ; Breath noise level.
gk_GM_Tenor_Sax_brightness chnexport "gk_GM_Tenor_Sax_brightness", 3 ; Multiplies the dynamic low-pass cut-off.
gk_GM_Tenor_Sax_level init 0
gk_GM_Tenor_Sax_midi_dynamic_range init 20
gk_GM_Tenor_Sax_space_left_to_right init 0.5
gk_GM_Tenor_Sax_vibrato_depth init 0.25
gk_GM_Tenor_Sax_vibrato_rate init 5.3
gk_GM_Tenor_Sax_breath init 0.04
gk_GM_Tenor_Sax_brightness init 1.0
gi_GM_Tenor_Sax_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Tenor_Sax_cosine ftgen 0, 0, 65537, 11, 1
instr GM_Tenor_Sax
; General MIDI program 67: Tenor Sax.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Tenor_Sax_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Tenor_Sax_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 57.0
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Tenor_Sax_level)
; Reed source whose harmonic roll-off follows the envelope (louder is
; brighter), two body formants, breath noise, a pitch scoop at the
; attack, and delayed vibrato.
i_breath = i(gk_GM_Tenor_Sax_breath)
i_brightness = i(gk_GM_Tenor_Sax_brightness)
i_attack = 0.04
i_release = 0.08
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_envelope = k(a_envelope)
k_vibrato_envelope linseg 0, 0.35, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Tenor_Sax_vibrato_depth * k_vibrato_envelope, gk_GM_Tenor_Sax_vibrato_rate, gi_GM_Tenor_Sax_sine
k_scoop transeg -0.35, 0.1, -3, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_scoop) / 12)
i_nh = int(limit(sr / 2.2 / i_frequency, 1, 80))
k_mul = 0.55 + 0.3 * i_velocity * k_envelope
a_source gbuzz 1, k_frequency, i_nh, 1, k_mul, gi_GM_Tenor_Sax_cosine
; Slight asymmetry adds even harmonics typical of the conical bore.
a_source = a_source + 0.15 * a_source * a_source
a_signal = a_source * 0.3
a_formant1 reson a_source, 800, 200, 1
a_signal = a_signal + a_formant1 * 0.5
a_formant2 reson a_source, 1500, 350, 1
a_signal = a_signal + a_formant2 * 0.35
a_breath_noise rand 1
a_breath butterbp a_breath_noise, limit(i_frequency * 3, 200, 8000), limit(i_frequency * 2, 100, 5000)
a_signal = a_signal + a_breath * i_breath * (0.5 + k_envelope)
k_cutoff = limit(i_frequency * 8 * (0.4 + 0.9 * i_velocity * k_envelope) * i_brightness, 600, 14000)
a_signal moogladder a_signal, k_cutoff, 0.1
a_signal = tanh(a_signal * (1 + 0.3 * i_velocity * 3))
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  68  Baritone Sax
gk_GM_Baritone_Sax_level chnexport "gk_GM_Baritone_Sax_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Baritone_Sax_midi_dynamic_range chnexport "gk_GM_Baritone_Sax_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Baritone_Sax_space_left_to_right chnexport "gk_GM_Baritone_Sax_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Baritone_Sax_vibrato_depth chnexport "gk_GM_Baritone_Sax_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Baritone_Sax_vibrato_rate chnexport "gk_GM_Baritone_Sax_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Baritone_Sax_breath chnexport "gk_GM_Baritone_Sax_breath", 3 ; Breath noise level.
gk_GM_Baritone_Sax_brightness chnexport "gk_GM_Baritone_Sax_brightness", 3 ; Multiplies the dynamic low-pass cut-off.
gk_GM_Baritone_Sax_level init 0
gk_GM_Baritone_Sax_midi_dynamic_range init 20
gk_GM_Baritone_Sax_space_left_to_right init 0.5
gk_GM_Baritone_Sax_vibrato_depth init 0.2
gk_GM_Baritone_Sax_vibrato_rate init 5
gk_GM_Baritone_Sax_breath init 0.04
gk_GM_Baritone_Sax_brightness init 1.0
gi_GM_Baritone_Sax_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Baritone_Sax_cosine ftgen 0, 0, 65537, 11, 1
instr GM_Baritone_Sax
; General MIDI program 68: Baritone Sax.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Baritone_Sax_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Baritone_Sax_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 57.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Baritone_Sax_level)
; Reed source whose harmonic roll-off follows the envelope (louder is
; brighter), two body formants, breath noise, a pitch scoop at the
; attack, and delayed vibrato.
i_breath = i(gk_GM_Baritone_Sax_breath)
i_brightness = i(gk_GM_Baritone_Sax_brightness)
i_attack = 0.04
i_release = 0.08
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_envelope = k(a_envelope)
k_vibrato_envelope linseg 0, 0.4, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Baritone_Sax_vibrato_depth * k_vibrato_envelope, gk_GM_Baritone_Sax_vibrato_rate, gi_GM_Baritone_Sax_sine
k_scoop transeg -0.35, 0.1, -3, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_scoop) / 12)
i_nh = int(limit(sr / 2.2 / i_frequency, 1, 80))
k_mul = 0.55 + 0.3 * i_velocity * k_envelope
a_source gbuzz 1, k_frequency, i_nh, 1, k_mul, gi_GM_Baritone_Sax_cosine
; Slight asymmetry adds even harmonics typical of the conical bore.
a_source = a_source + 0.15 * a_source * a_source
a_signal = a_source * 0.3
a_formant1 reson a_source, 600, 150, 1
a_signal = a_signal + a_formant1 * 0.5
a_formant2 reson a_source, 1200, 300, 1
a_signal = a_signal + a_formant2 * 0.35
a_breath_noise rand 1
a_breath butterbp a_breath_noise, limit(i_frequency * 3, 200, 8000), limit(i_frequency * 2, 100, 5000)
a_signal = a_signal + a_breath * i_breath * (0.5 + k_envelope)
k_cutoff = limit(i_frequency * 7 * (0.4 + 0.9 * i_velocity * k_envelope) * i_brightness, 600, 14000)
a_signal moogladder a_signal, k_cutoff, 0.1
a_signal = tanh(a_signal * (1 + 0.4 * i_velocity * 3))
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  69  Oboe
gk_GM_Oboe_level chnexport "gk_GM_Oboe_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Oboe_midi_dynamic_range chnexport "gk_GM_Oboe_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Oboe_space_left_to_right chnexport "gk_GM_Oboe_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Oboe_vibrato_depth chnexport "gk_GM_Oboe_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Oboe_vibrato_rate chnexport "gk_GM_Oboe_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Oboe_breath chnexport "gk_GM_Oboe_breath", 3 ; Breath noise level.
gk_GM_Oboe_level init 0
gk_GM_Oboe_midi_dynamic_range init 20
gk_GM_Oboe_space_left_to_right init 0.5
gk_GM_Oboe_vibrato_depth init 0.2
gk_GM_Oboe_vibrato_rate init 5.5
gk_GM_Oboe_breath init 0.02
gi_GM_Oboe_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Oboe_cosine ftgen 0, 0, 65537, 11, 1
instr GM_Oboe
; General MIDI program 69: Oboe.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Oboe_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Oboe_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 47.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Oboe_level)
; Band-limited reed source through fixed formant resonances, with
; breath noise and a delayed vibrato.
i_breath = i(gk_GM_Oboe_breath)
i_attack = 0.03
i_sustain = p3
i_release = 0.06
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.3, 0, 0.4, 1, 1, 1
k_vibrato vibr gk_GM_Oboe_vibrato_depth * k_vibrato_envelope, gk_GM_Oboe_vibrato_rate, gi_GM_Oboe_sine
k_scoop transeg 0.0, 0.08, -3, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_scoop) / 12)
a_source = 0
i_nh1 = int(limit(sr / 2.2 / (i_frequency * 1), 1, 80))
a_voice1 gbuzz 0.6, k_frequency * 1, i_nh1, 1, 0.92, gi_GM_Oboe_cosine
a_source = a_source + a_voice1
a_signal = a_source * 0.3
a_formant1 reson a_source, 1400, 250, 1
a_signal = a_signal + a_formant1 * 0.6
a_formant2 reson a_source, 3000, 500, 1
a_signal = a_signal + a_formant2 * 0.3
a_breath_noise rand 1
a_breath butterbp a_breath_noise, limit(i_frequency * 2, 100, 10000), limit(i_frequency * 1.5, 100, 6000)
a_signal = a_signal + a_breath * i_breath
a_signal tonex a_signal, limit(i_frequency * 14, 800, 14000), 1
a_signal butterhp a_signal, 300
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  70  English Horn
gk_GM_English_Horn_level chnexport "gk_GM_English_Horn_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_English_Horn_midi_dynamic_range chnexport "gk_GM_English_Horn_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_English_Horn_space_left_to_right chnexport "gk_GM_English_Horn_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_English_Horn_vibrato_depth chnexport "gk_GM_English_Horn_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_English_Horn_vibrato_rate chnexport "gk_GM_English_Horn_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_English_Horn_breath chnexport "gk_GM_English_Horn_breath", 3 ; Breath noise level.
gk_GM_English_Horn_level init 0
gk_GM_English_Horn_midi_dynamic_range init 20
gk_GM_English_Horn_space_left_to_right init 0.5
gk_GM_English_Horn_vibrato_depth init 0.2
gk_GM_English_Horn_vibrato_rate init 5
gk_GM_English_Horn_breath init 0.02
gi_GM_English_Horn_sine ftgen 0, 0, 65537, 10, 1
gi_GM_English_Horn_cosine ftgen 0, 0, 65537, 11, 1
instr GM_English_Horn
; General MIDI program 70: English Horn.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_English_Horn_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_English_Horn_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 48.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_English_Horn_level)
; Band-limited reed source through fixed formant resonances, with
; breath noise and a delayed vibrato.
i_breath = i(gk_GM_English_Horn_breath)
i_attack = 0.03
i_sustain = p3
i_release = 0.06
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.3, 0, 0.4, 1, 1, 1
k_vibrato vibr gk_GM_English_Horn_vibrato_depth * k_vibrato_envelope, gk_GM_English_Horn_vibrato_rate, gi_GM_English_Horn_sine
k_scoop transeg 0.0, 0.08, -3, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_scoop) / 12)
a_source = 0
i_nh1 = int(limit(sr / 2.2 / (i_frequency * 1), 1, 80))
a_voice1 gbuzz 0.6, k_frequency * 1, i_nh1, 1, 0.9, gi_GM_English_Horn_cosine
a_source = a_source + a_voice1
a_signal = a_source * 0.3
a_formant1 reson a_source, 900, 200, 1
a_signal = a_signal + a_formant1 * 0.6
a_formant2 reson a_source, 2300, 400, 1
a_signal = a_signal + a_formant2 * 0.3
a_breath_noise rand 1
a_breath butterbp a_breath_noise, limit(i_frequency * 2, 100, 10000), limit(i_frequency * 1.5, 100, 6000)
a_signal = a_signal + a_breath * i_breath
a_signal tonex a_signal, limit(i_frequency * 12, 800, 14000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  71  Bassoon
gk_GM_Bassoon_level chnexport "gk_GM_Bassoon_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Bassoon_midi_dynamic_range chnexport "gk_GM_Bassoon_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Bassoon_space_left_to_right chnexport "gk_GM_Bassoon_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Bassoon_vibrato_depth chnexport "gk_GM_Bassoon_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Bassoon_vibrato_rate chnexport "gk_GM_Bassoon_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Bassoon_breath chnexport "gk_GM_Bassoon_breath", 3 ; Breath noise level.
gk_GM_Bassoon_level init 0
gk_GM_Bassoon_midi_dynamic_range init 20
gk_GM_Bassoon_space_left_to_right init 0.5
gk_GM_Bassoon_vibrato_depth init 0.15
gk_GM_Bassoon_vibrato_rate init 5
gk_GM_Bassoon_breath init 0.02
gi_GM_Bassoon_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Bassoon_cosine ftgen 0, 0, 65537, 11, 1
instr GM_Bassoon
; General MIDI program 71: Bassoon.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Bassoon_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Bassoon_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 49.8
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Bassoon_level)
; Band-limited reed source through fixed formant resonances, with
; breath noise and a delayed vibrato.
i_breath = i(gk_GM_Bassoon_breath)
i_attack = 0.03
i_sustain = p3
i_release = 0.06
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.3, 0, 0.4, 1, 1, 1
k_vibrato vibr gk_GM_Bassoon_vibrato_depth * k_vibrato_envelope, gk_GM_Bassoon_vibrato_rate, gi_GM_Bassoon_sine
k_scoop transeg 0.0, 0.08, -3, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_scoop) / 12)
a_source = 0
i_nh1 = int(limit(sr / 2.2 / (i_frequency * 1), 1, 80))
a_voice1 gbuzz 0.6, k_frequency * 1, i_nh1, 1, 0.88, gi_GM_Bassoon_cosine
a_source = a_source + a_voice1
a_signal = a_source * 0.3
a_formant1 reson a_source, 500, 120, 1
a_signal = a_signal + a_formant1 * 0.7
a_formant2 reson a_source, 1200, 300, 1
a_signal = a_signal + a_formant2 * 0.3
a_breath_noise rand 1
a_breath butterbp a_breath_noise, limit(i_frequency * 2, 100, 10000), limit(i_frequency * 1.5, 100, 6000)
a_signal = a_signal + a_breath * i_breath
a_signal tonex a_signal, limit(i_frequency * 10, 800, 14000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  72  Clarinet
gk_GM_Clarinet_level chnexport "gk_GM_Clarinet_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Clarinet_midi_dynamic_range chnexport "gk_GM_Clarinet_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Clarinet_space_left_to_right chnexport "gk_GM_Clarinet_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Clarinet_vibrato_depth chnexport "gk_GM_Clarinet_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Clarinet_vibrato_rate chnexport "gk_GM_Clarinet_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Clarinet_breath chnexport "gk_GM_Clarinet_breath", 3 ; Breath noise level.
gk_GM_Clarinet_level init 0
gk_GM_Clarinet_midi_dynamic_range init 20
gk_GM_Clarinet_space_left_to_right init 0.5
gk_GM_Clarinet_vibrato_depth init 0.0
gk_GM_Clarinet_vibrato_rate init 5.0
gk_GM_Clarinet_breath init 0.02
gi_GM_Clarinet_sine ftgen 0, 0, 65537, 10, 1
instr GM_Clarinet
; General MIDI program 72: Clarinet.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Clarinet_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Clarinet_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 64.0
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Clarinet_level)
; Clarinet: odd harmonics from a band-limited square wave, with a
; register-dependent low-pass and a little breath noise.
i_breath = i(gk_GM_Clarinet_breath)
i_attack = 0.045
i_sustain = p3
i_release = 0.07
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato vibr gk_GM_Clarinet_vibrato_depth, gk_GM_Clarinet_vibrato_rate, gi_GM_Clarinet_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_square vco2 1, k_frequency, 10
; A touch of even harmonics from a quiet sawtooth.
a_saw vco2 0.08, k_frequency, 0
a_source = a_square + a_saw
k_cutoff = limit(i_frequency * (4 + 4 * i_velocity), 900, 9000)
a_source moogladder a_source, k_cutoff, 0.05
a_formant reson a_source, 1500, 500, 1
a_signal = a_source + a_formant * 0.4
a_breath_noise rand 1
a_breath butterbp a_breath_noise, limit(i_frequency * 3, 300, 8000), 1500
a_signal = a_signal + a_breath * i_breath
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  73  Piccolo
gk_GM_Piccolo_level chnexport "gk_GM_Piccolo_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Piccolo_midi_dynamic_range chnexport "gk_GM_Piccolo_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Piccolo_space_left_to_right chnexport "gk_GM_Piccolo_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Piccolo_vibrato_depth chnexport "gk_GM_Piccolo_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Piccolo_vibrato_rate chnexport "gk_GM_Piccolo_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Piccolo_breath chnexport "gk_GM_Piccolo_breath", 3 ; Breath noise level.
gk_GM_Piccolo_level init 0
gk_GM_Piccolo_midi_dynamic_range init 20
gk_GM_Piccolo_space_left_to_right init 0.5
gk_GM_Piccolo_vibrato_depth init 0.2
gk_GM_Piccolo_vibrato_rate init 5.5
gk_GM_Piccolo_breath init 0.12
gi_GM_Piccolo_sine ftgen 0, 0, 65537, 10, 1
instr GM_Piccolo
; General MIDI program 73: Piccolo.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Piccolo_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Piccolo_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 63.9
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Piccolo_level)
; Additive pipe: a few harmonics, breath noise resonated at the pitch,
; and a chiff at the attack. Vibrato begins after the onset.
i_breath = i(gk_GM_Piccolo_breath)
i_attack = 0.03
i_sustain = p3
i_release = 0.08
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Piccolo_vibrato_depth * k_vibrato_envelope, gk_GM_Piccolo_vibrato_rate, gi_GM_Piccolo_sine
k_wobble jitter 0.0, 0.5, 3
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_wobble) / 12)
a_signal = 0
i_a1 = (i_frequency * 1 < 18000 ? 1 : 0)
a_h1 poscil i_a1, k_frequency * 1, gi_GM_Piccolo_sine
a_signal = a_signal + a_h1
i_a2 = (i_frequency * 2 < 18000 ? 0.2 : 0)
a_h2 poscil i_a2, k_frequency * 2, gi_GM_Piccolo_sine
a_signal = a_signal + a_h2
i_a3 = (i_frequency * 3 < 18000 ? 0.05 : 0)
a_h3 poscil i_a3, k_frequency * 3, gi_GM_Piccolo_sine
a_signal = a_signal + a_h3
a_breath_noise rand 1
a_breath reson a_breath_noise, limit(k_frequency * 1.0, 50, 16000), limit(i_frequency * 0.25, 20, 4000), 1
a_breath_hiss butterbp a_breath_noise, 4000, 3000
a_signal = a_signal + (a_breath + a_breath_hiss * 0.3) * i_breath
; Chiff.
a_chiff_envelope transeg 0, 0.008, 2, 0.3, 0.05, -3, 0
a_chiff butterbp a_breath_noise * a_chiff_envelope, limit(i_frequency * 2, 100, 12000), limit(i_frequency * 1.5, 50, 6000)
a_signal = a_signal + a_chiff
a_signal tonex a_signal, limit(i_frequency * 10, 1500, 16000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  74  Flute
gk_GM_Flute_level chnexport "gk_GM_Flute_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Flute_midi_dynamic_range chnexport "gk_GM_Flute_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Flute_space_left_to_right chnexport "gk_GM_Flute_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Flute_vibrato_depth chnexport "gk_GM_Flute_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Flute_vibrato_rate chnexport "gk_GM_Flute_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Flute_breath chnexport "gk_GM_Flute_breath", 3 ; Breath noise level.
gk_GM_Flute_level init 0
gk_GM_Flute_midi_dynamic_range init 20
gk_GM_Flute_space_left_to_right init 0.5
gk_GM_Flute_vibrato_depth init 0.25
gk_GM_Flute_vibrato_rate init 5.2
gk_GM_Flute_breath init 0.1
gi_GM_Flute_sine ftgen 0, 0, 65537, 10, 1
instr GM_Flute
; General MIDI program 74: Flute.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Flute_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Flute_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 64.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Flute_level)
; Additive pipe: a few harmonics, breath noise resonated at the pitch,
; and a chiff at the attack. Vibrato begins after the onset.
i_breath = i(gk_GM_Flute_breath)
i_attack = 0.05
i_sustain = p3
i_release = 0.08
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Flute_vibrato_depth * k_vibrato_envelope, gk_GM_Flute_vibrato_rate, gi_GM_Flute_sine
k_wobble jitter 0.0, 0.5, 3
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_wobble) / 12)
a_signal = 0
i_a1 = (i_frequency * 1 < 18000 ? 1 : 0)
a_h1 poscil i_a1, k_frequency * 1, gi_GM_Flute_sine
a_signal = a_signal + a_h1
i_a2 = (i_frequency * 2 < 18000 ? 0.3 : 0)
a_h2 poscil i_a2, k_frequency * 2, gi_GM_Flute_sine
a_signal = a_signal + a_h2
i_a3 = (i_frequency * 3 < 18000 ? 0.1 : 0)
a_h3 poscil i_a3, k_frequency * 3, gi_GM_Flute_sine
a_signal = a_signal + a_h3
i_a4 = (i_frequency * 4 < 18000 ? 0.04 : 0)
a_h4 poscil i_a4, k_frequency * 4, gi_GM_Flute_sine
a_signal = a_signal + a_h4
a_breath_noise rand 1
a_breath reson a_breath_noise, limit(k_frequency * 1.0, 50, 16000), limit(i_frequency * 0.25, 20, 4000), 1
a_breath_hiss butterbp a_breath_noise, 4000, 3000
a_signal = a_signal + (a_breath + a_breath_hiss * 0.3) * i_breath
; Chiff.
a_chiff_envelope transeg 0, 0.008, 2, 0.3, 0.05, -3, 0
a_chiff butterbp a_breath_noise * a_chiff_envelope, limit(i_frequency * 2, 100, 12000), limit(i_frequency * 1.5, 50, 6000)
a_signal = a_signal + a_chiff
a_signal tonex a_signal, limit(i_frequency * 10, 1500, 16000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  75  Recorder
gk_GM_Recorder_level chnexport "gk_GM_Recorder_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Recorder_midi_dynamic_range chnexport "gk_GM_Recorder_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Recorder_space_left_to_right chnexport "gk_GM_Recorder_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Recorder_vibrato_depth chnexport "gk_GM_Recorder_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Recorder_vibrato_rate chnexport "gk_GM_Recorder_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Recorder_breath chnexport "gk_GM_Recorder_breath", 3 ; Breath noise level.
gk_GM_Recorder_level init 0
gk_GM_Recorder_midi_dynamic_range init 20
gk_GM_Recorder_space_left_to_right init 0.5
gk_GM_Recorder_vibrato_depth init 0.15
gk_GM_Recorder_vibrato_rate init 5.5
gk_GM_Recorder_breath init 0.06
gi_GM_Recorder_sine ftgen 0, 0, 65537, 10, 1
instr GM_Recorder
; General MIDI program 75: Recorder.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Recorder_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Recorder_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 62.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Recorder_level)
; Additive pipe: a few harmonics, breath noise resonated at the pitch,
; and a chiff at the attack. Vibrato begins after the onset.
i_breath = i(gk_GM_Recorder_breath)
i_attack = 0.05
i_sustain = p3
i_release = 0.08
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.4, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Recorder_vibrato_depth * k_vibrato_envelope, gk_GM_Recorder_vibrato_rate, gi_GM_Recorder_sine
k_wobble jitter 0.0, 0.5, 3
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_wobble) / 12)
a_signal = 0
i_a1 = (i_frequency * 1 < 18000 ? 1 : 0)
a_h1 poscil i_a1, k_frequency * 1, gi_GM_Recorder_sine
a_signal = a_signal + a_h1
i_a2 = (i_frequency * 2 < 18000 ? 0.08 : 0)
a_h2 poscil i_a2, k_frequency * 2, gi_GM_Recorder_sine
a_signal = a_signal + a_h2
i_a3 = (i_frequency * 3 < 18000 ? 0.15 : 0)
a_h3 poscil i_a3, k_frequency * 3, gi_GM_Recorder_sine
a_signal = a_signal + a_h3
i_a4 = (i_frequency * 4 < 18000 ? 0.03 : 0)
a_h4 poscil i_a4, k_frequency * 4, gi_GM_Recorder_sine
a_signal = a_signal + a_h4
a_breath_noise rand 1
a_breath reson a_breath_noise, limit(k_frequency * 1.0, 50, 16000), limit(i_frequency * 0.25, 20, 4000), 1
a_breath_hiss butterbp a_breath_noise, 4000, 3000
a_signal = a_signal + (a_breath + a_breath_hiss * 0.3) * i_breath
; Chiff.
a_chiff_envelope transeg 0, 0.008, 2, 0.5, 0.05, -3, 0
a_chiff butterbp a_breath_noise * a_chiff_envelope, limit(i_frequency * 2, 100, 12000), limit(i_frequency * 1.5, 50, 6000)
a_signal = a_signal + a_chiff
a_signal tonex a_signal, limit(i_frequency * 10, 1500, 16000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  76  Pan Flute
gk_GM_Pan_Flute_level chnexport "gk_GM_Pan_Flute_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Pan_Flute_midi_dynamic_range chnexport "gk_GM_Pan_Flute_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Pan_Flute_space_left_to_right chnexport "gk_GM_Pan_Flute_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Pan_Flute_vibrato_depth chnexport "gk_GM_Pan_Flute_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Pan_Flute_vibrato_rate chnexport "gk_GM_Pan_Flute_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Pan_Flute_breath chnexport "gk_GM_Pan_Flute_breath", 3 ; Breath noise level.
gk_GM_Pan_Flute_level init 0
gk_GM_Pan_Flute_midi_dynamic_range init 20
gk_GM_Pan_Flute_space_left_to_right init 0.5
gk_GM_Pan_Flute_vibrato_depth init 0.25
gk_GM_Pan_Flute_vibrato_rate init 5.2
gk_GM_Pan_Flute_breath init 0.3
gi_GM_Pan_Flute_sine ftgen 0, 0, 65537, 10, 1
instr GM_Pan_Flute
; General MIDI program 76: Pan Flute.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Pan_Flute_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Pan_Flute_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 64.0
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Pan_Flute_level)
; Additive pipe: a few harmonics, breath noise resonated at the pitch,
; and a chiff at the attack. Vibrato begins after the onset.
i_breath = i(gk_GM_Pan_Flute_breath)
i_attack = 0.03
i_sustain = p3
i_release = 0.08
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Pan_Flute_vibrato_depth * k_vibrato_envelope, gk_GM_Pan_Flute_vibrato_rate, gi_GM_Pan_Flute_sine
k_wobble jitter 0.0, 0.5, 3
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_wobble) / 12)
a_signal = 0
i_a1 = (i_frequency * 1 < 18000 ? 1 : 0)
a_h1 poscil i_a1, k_frequency * 1, gi_GM_Pan_Flute_sine
a_signal = a_signal + a_h1
i_a2 = (i_frequency * 2 < 18000 ? 0.15 : 0)
a_h2 poscil i_a2, k_frequency * 2, gi_GM_Pan_Flute_sine
a_signal = a_signal + a_h2
i_a3 = (i_frequency * 3 < 18000 ? 0.3 : 0)
a_h3 poscil i_a3, k_frequency * 3, gi_GM_Pan_Flute_sine
a_signal = a_signal + a_h3
i_a4 = (i_frequency * 5 < 18000 ? 0.08 : 0)
a_h4 poscil i_a4, k_frequency * 5, gi_GM_Pan_Flute_sine
a_signal = a_signal + a_h4
a_breath_noise rand 1
a_breath reson a_breath_noise, limit(k_frequency * 1.0, 50, 16000), limit(i_frequency * 0.4, 20, 4000), 1
a_breath_hiss butterbp a_breath_noise, 4000, 3000
a_signal = a_signal + (a_breath + a_breath_hiss * 0.3) * i_breath
; Chiff.
a_chiff_envelope transeg 0, 0.008, 2, 0.7, 0.05, -3, 0
a_chiff butterbp a_breath_noise * a_chiff_envelope, limit(i_frequency * 2, 100, 12000), limit(i_frequency * 1.5, 50, 6000)
a_signal = a_signal + a_chiff
a_signal tonex a_signal, limit(i_frequency * 10, 1500, 16000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  77  Blown Bottle
gk_GM_Blown_Bottle_level chnexport "gk_GM_Blown_Bottle_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Blown_Bottle_midi_dynamic_range chnexport "gk_GM_Blown_Bottle_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Blown_Bottle_space_left_to_right chnexport "gk_GM_Blown_Bottle_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Blown_Bottle_vibrato_depth chnexport "gk_GM_Blown_Bottle_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Blown_Bottle_vibrato_rate chnexport "gk_GM_Blown_Bottle_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Blown_Bottle_breath chnexport "gk_GM_Blown_Bottle_breath", 3 ; Breath noise level.
gk_GM_Blown_Bottle_level init 0
gk_GM_Blown_Bottle_midi_dynamic_range init 20
gk_GM_Blown_Bottle_space_left_to_right init 0.5
gk_GM_Blown_Bottle_vibrato_depth init 0.25
gk_GM_Blown_Bottle_vibrato_rate init 5.2
gk_GM_Blown_Bottle_breath init 0.5
gi_GM_Blown_Bottle_sine ftgen 0, 0, 65537, 10, 1
instr GM_Blown_Bottle
; General MIDI program 77: Blown Bottle.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Blown_Bottle_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Blown_Bottle_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 63.3
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Blown_Bottle_level)
; Additive pipe: a few harmonics, breath noise resonated at the pitch,
; and a chiff at the attack. Vibrato begins after the onset.
i_breath = i(gk_GM_Blown_Bottle_breath)
i_attack = 0.08
i_sustain = p3
i_release = 0.08
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Blown_Bottle_vibrato_depth * k_vibrato_envelope, gk_GM_Blown_Bottle_vibrato_rate, gi_GM_Blown_Bottle_sine
k_wobble jitter 0.0, 0.5, 3
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_wobble) / 12)
a_signal = 0
i_a1 = (i_frequency * 1 < 18000 ? 1 : 0)
a_h1 poscil i_a1, k_frequency * 1, gi_GM_Blown_Bottle_sine
a_signal = a_signal + a_h1
i_a2 = (i_frequency * 2 < 18000 ? 0.05 : 0)
a_h2 poscil i_a2, k_frequency * 2, gi_GM_Blown_Bottle_sine
a_signal = a_signal + a_h2
i_a3 = (i_frequency * 3 < 18000 ? 0.1 : 0)
a_h3 poscil i_a3, k_frequency * 3, gi_GM_Blown_Bottle_sine
a_signal = a_signal + a_h3
a_breath_noise rand 1
a_breath reson a_breath_noise, limit(k_frequency * 1.0, 50, 16000), limit(i_frequency * 0.15, 20, 4000), 1
a_breath_hiss butterbp a_breath_noise, 4000, 3000
a_signal = a_signal + (a_breath + a_breath_hiss * 0.3) * i_breath
; Chiff.
a_chiff_envelope transeg 0, 0.008, 2, 0.3, 0.05, -3, 0
a_chiff butterbp a_breath_noise * a_chiff_envelope, limit(i_frequency * 2, 100, 12000), limit(i_frequency * 1.5, 50, 6000)
a_signal = a_signal + a_chiff
a_signal tonex a_signal, limit(i_frequency * 6, 1500, 16000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  78  Shakuhachi
gk_GM_Shakuhachi_level chnexport "gk_GM_Shakuhachi_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Shakuhachi_midi_dynamic_range chnexport "gk_GM_Shakuhachi_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Shakuhachi_space_left_to_right chnexport "gk_GM_Shakuhachi_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Shakuhachi_vibrato_depth chnexport "gk_GM_Shakuhachi_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Shakuhachi_vibrato_rate chnexport "gk_GM_Shakuhachi_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Shakuhachi_breath chnexport "gk_GM_Shakuhachi_breath", 3 ; Breath noise level.
gk_GM_Shakuhachi_level init 0
gk_GM_Shakuhachi_midi_dynamic_range init 20
gk_GM_Shakuhachi_space_left_to_right init 0.5
gk_GM_Shakuhachi_vibrato_depth init 0.35
gk_GM_Shakuhachi_vibrato_rate init 4.5
gk_GM_Shakuhachi_breath init 0.4
gi_GM_Shakuhachi_sine ftgen 0, 0, 65537, 10, 1
instr GM_Shakuhachi
; General MIDI program 78: Shakuhachi.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Shakuhachi_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Shakuhachi_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 64.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Shakuhachi_level)
; Additive pipe: a few harmonics, breath noise resonated at the pitch,
; and a chiff at the attack. Vibrato begins after the onset.
i_breath = i(gk_GM_Shakuhachi_breath)
i_attack = 0.12
i_sustain = p3
i_release = 0.08
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.5, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Shakuhachi_vibrato_depth * k_vibrato_envelope, gk_GM_Shakuhachi_vibrato_rate, gi_GM_Shakuhachi_sine
k_wobble jitter 0.08, 0.5, 3
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_wobble) / 12)
a_signal = 0
i_a1 = (i_frequency * 1 < 18000 ? 1 : 0)
a_h1 poscil i_a1, k_frequency * 1, gi_GM_Shakuhachi_sine
a_signal = a_signal + a_h1
i_a2 = (i_frequency * 2 < 18000 ? 0.2 : 0)
a_h2 poscil i_a2, k_frequency * 2, gi_GM_Shakuhachi_sine
a_signal = a_signal + a_h2
i_a3 = (i_frequency * 3 < 18000 ? 0.25 : 0)
a_h3 poscil i_a3, k_frequency * 3, gi_GM_Shakuhachi_sine
a_signal = a_signal + a_h3
i_a4 = (i_frequency * 4 < 18000 ? 0.1 : 0)
a_h4 poscil i_a4, k_frequency * 4, gi_GM_Shakuhachi_sine
a_signal = a_signal + a_h4
a_breath_noise rand 1
a_breath reson a_breath_noise, limit(k_frequency * 1.0, 50, 16000), limit(i_frequency * 0.25, 20, 4000), 1
a_breath_hiss butterbp a_breath_noise, 4000, 3000
a_signal = a_signal + (a_breath + a_breath_hiss * 0.3) * i_breath
; Chiff.
a_chiff_envelope transeg 0, 0.008, 2, 0.4, 0.05, -3, 0
a_chiff butterbp a_breath_noise * a_chiff_envelope, limit(i_frequency * 2, 100, 12000), limit(i_frequency * 1.5, 50, 6000)
a_signal = a_signal + a_chiff
a_signal tonex a_signal, limit(i_frequency * 10, 1500, 16000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  79  Whistle
gk_GM_Whistle_level chnexport "gk_GM_Whistle_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Whistle_midi_dynamic_range chnexport "gk_GM_Whistle_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Whistle_space_left_to_right chnexport "gk_GM_Whistle_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Whistle_vibrato_depth chnexport "gk_GM_Whistle_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Whistle_vibrato_rate chnexport "gk_GM_Whistle_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Whistle_breath chnexport "gk_GM_Whistle_breath", 3 ; Breath noise level.
gk_GM_Whistle_level init 0
gk_GM_Whistle_midi_dynamic_range init 20
gk_GM_Whistle_space_left_to_right init 0.5
gk_GM_Whistle_vibrato_depth init 0.3
gk_GM_Whistle_vibrato_rate init 6
gk_GM_Whistle_breath init 0.05
gi_GM_Whistle_sine ftgen 0, 0, 65537, 10, 1
instr GM_Whistle
; General MIDI program 79: Whistle.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Whistle_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Whistle_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 63.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Whistle_level)
; Additive pipe: a few harmonics, breath noise resonated at the pitch,
; and a chiff at the attack. Vibrato begins after the onset.
i_breath = i(gk_GM_Whistle_breath)
i_attack = 0.02
i_sustain = p3
i_release = 0.08
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.2, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Whistle_vibrato_depth * k_vibrato_envelope, gk_GM_Whistle_vibrato_rate, gi_GM_Whistle_sine
k_wobble jitter 0.0, 0.5, 3
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_wobble) / 12)
a_signal = 0
i_a1 = (i_frequency * 1 < 18000 ? 1 : 0)
a_h1 poscil i_a1, k_frequency * 1, gi_GM_Whistle_sine
a_signal = a_signal + a_h1
i_a2 = (i_frequency * 2 < 18000 ? 0.03 : 0)
a_h2 poscil i_a2, k_frequency * 2, gi_GM_Whistle_sine
a_signal = a_signal + a_h2
a_breath_noise rand 1
a_breath reson a_breath_noise, limit(k_frequency * 1.0, 50, 16000), limit(i_frequency * 0.25, 20, 4000), 1
a_breath_hiss butterbp a_breath_noise, 4000, 3000
a_signal = a_signal + (a_breath + a_breath_hiss * 0.3) * i_breath
; Chiff.
a_chiff_envelope transeg 0, 0.008, 2, 0.3, 0.05, -3, 0
a_chiff butterbp a_breath_noise * a_chiff_envelope, limit(i_frequency * 2, 100, 12000), limit(i_frequency * 1.5, 50, 6000)
a_signal = a_signal + a_chiff
a_signal tonex a_signal, limit(i_frequency * 10, 1500, 16000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  80  Ocarina
gk_GM_Ocarina_level chnexport "gk_GM_Ocarina_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Ocarina_midi_dynamic_range chnexport "gk_GM_Ocarina_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Ocarina_space_left_to_right chnexport "gk_GM_Ocarina_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Ocarina_vibrato_depth chnexport "gk_GM_Ocarina_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Ocarina_vibrato_rate chnexport "gk_GM_Ocarina_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Ocarina_breath chnexport "gk_GM_Ocarina_breath", 3 ; Breath noise level.
gk_GM_Ocarina_level init 0
gk_GM_Ocarina_midi_dynamic_range init 20
gk_GM_Ocarina_space_left_to_right init 0.5
gk_GM_Ocarina_vibrato_depth init 0.2
gk_GM_Ocarina_vibrato_rate init 5
gk_GM_Ocarina_breath init 0.04
gi_GM_Ocarina_sine ftgen 0, 0, 65537, 10, 1
instr GM_Ocarina
; General MIDI program 80: Ocarina.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Ocarina_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Ocarina_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 63.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Ocarina_level)
; Additive pipe: a few harmonics, breath noise resonated at the pitch,
; and a chiff at the attack. Vibrato begins after the onset.
i_breath = i(gk_GM_Ocarina_breath)
i_attack = 0.03
i_sustain = p3
i_release = 0.08
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Ocarina_vibrato_depth * k_vibrato_envelope, gk_GM_Ocarina_vibrato_rate, gi_GM_Ocarina_sine
k_wobble jitter 0.0, 0.5, 3
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_wobble) / 12)
a_signal = 0
i_a1 = (i_frequency * 1 < 18000 ? 1 : 0)
a_h1 poscil i_a1, k_frequency * 1, gi_GM_Ocarina_sine
a_signal = a_signal + a_h1
i_a2 = (i_frequency * 2 < 18000 ? 0.04 : 0)
a_h2 poscil i_a2, k_frequency * 2, gi_GM_Ocarina_sine
a_signal = a_signal + a_h2
i_a3 = (i_frequency * 3 < 18000 ? 0.02 : 0)
a_h3 poscil i_a3, k_frequency * 3, gi_GM_Ocarina_sine
a_signal = a_signal + a_h3
a_breath_noise rand 1
a_breath reson a_breath_noise, limit(k_frequency * 1.0, 50, 16000), limit(i_frequency * 0.25, 20, 4000), 1
a_breath_hiss butterbp a_breath_noise, 4000, 3000
a_signal = a_signal + (a_breath + a_breath_hiss * 0.3) * i_breath
; Chiff.
a_chiff_envelope transeg 0, 0.008, 2, 0.1, 0.05, -3, 0
a_chiff butterbp a_breath_noise * a_chiff_envelope, limit(i_frequency * 2, 100, 12000), limit(i_frequency * 1.5, 50, 6000)
a_signal = a_signal + a_chiff
a_signal tonex a_signal, limit(i_frequency * 10, 1500, 16000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  81  Lead 1 (square)
gk_GM_Lead_1_square_level chnexport "gk_GM_Lead_1_square_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Lead_1_square_midi_dynamic_range chnexport "gk_GM_Lead_1_square_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Lead_1_square_space_left_to_right chnexport "gk_GM_Lead_1_square_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Lead_1_square_cutoff chnexport "gk_GM_Lead_1_square_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_Lead_1_square_resonance chnexport "gk_GM_Lead_1_square_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_Lead_1_square_vibrato_depth chnexport "gk_GM_Lead_1_square_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Lead_1_square_vibrato_rate chnexport "gk_GM_Lead_1_square_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Lead_1_square_level init 0
gk_GM_Lead_1_square_midi_dynamic_range init 20
gk_GM_Lead_1_square_space_left_to_right init 0.5
gk_GM_Lead_1_square_cutoff init 8
gk_GM_Lead_1_square_resonance init 0.1
gk_GM_Lead_1_square_vibrato_depth init 0.15
gk_GM_Lead_1_square_vibrato_rate init 5.5
gi_GM_Lead_1_square_sine ftgen 0, 0, 65537, 10, 1
instr GM_Lead_1_square
; General MIDI program 81: Lead 1 (square).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Lead_1_square_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Lead_1_square_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 61.0
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Lead_1_square_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 0.01
i_decay = 0.1
i_sustain_level = 0.9
i_release = 0.08
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Lead_1_square_vibrato_depth * k_vibrato_envelope, gk_GM_Lead_1_square_vibrato_rate, gi_GM_Lead_1_square_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
k_pw lfo 0.15, 0.7, 0
k_pw = 0.5 + k_pw
a_oscillators = 0
a_osc1 vco2 0.5, k_frequency * 1.0 * 1.0, 2, k_pw
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.4, k_frequency * 1.003 * 1.0, 2, k_pw
a_oscillators = a_oscillators + a_osc2
k_filter_envelope transeg 1, 0.3, -3, 0.2
k_cutoff = i_frequency * gk_GM_Lead_1_square_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 0.5 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_Lead_1_square_resonance
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  82  Lead 2 (sawtooth)
gk_GM_Lead_2_sawtooth_level chnexport "gk_GM_Lead_2_sawtooth_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Lead_2_sawtooth_midi_dynamic_range chnexport "gk_GM_Lead_2_sawtooth_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Lead_2_sawtooth_space_left_to_right chnexport "gk_GM_Lead_2_sawtooth_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Lead_2_sawtooth_cutoff chnexport "gk_GM_Lead_2_sawtooth_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_Lead_2_sawtooth_resonance chnexport "gk_GM_Lead_2_sawtooth_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_Lead_2_sawtooth_vibrato_depth chnexport "gk_GM_Lead_2_sawtooth_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Lead_2_sawtooth_vibrato_rate chnexport "gk_GM_Lead_2_sawtooth_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Lead_2_sawtooth_level init 0
gk_GM_Lead_2_sawtooth_midi_dynamic_range init 20
gk_GM_Lead_2_sawtooth_space_left_to_right init 0.5
gk_GM_Lead_2_sawtooth_cutoff init 6
gk_GM_Lead_2_sawtooth_resonance init 0.2
gk_GM_Lead_2_sawtooth_vibrato_depth init 0.15
gk_GM_Lead_2_sawtooth_vibrato_rate init 5.5
gi_GM_Lead_2_sawtooth_sine ftgen 0, 0, 65537, 10, 1
instr GM_Lead_2_sawtooth
; General MIDI program 82: Lead 2 (sawtooth).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Lead_2_sawtooth_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Lead_2_sawtooth_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 59.7
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Lead_2_sawtooth_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 0.01
i_decay = 0.15
i_sustain_level = 0.85
i_release = 0.1
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Lead_2_sawtooth_vibrato_depth * k_vibrato_envelope, gk_GM_Lead_2_sawtooth_vibrato_rate, gi_GM_Lead_2_sawtooth_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_oscillators = 0
a_osc1 vco2 0.5, k_frequency * 1.0 * 1.0, 0
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.4, k_frequency * 1.005 * 1.0, 0
a_oscillators = a_oscillators + a_osc2
a_osc3 vco2 0.3, k_frequency * 0.995 * 1.0, 0
a_oscillators = a_oscillators + a_osc3
k_filter_envelope transeg 1, 0.3, -3, 0.2
k_cutoff = i_frequency * gk_GM_Lead_2_sawtooth_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 0.5 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_Lead_2_sawtooth_resonance
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  83  Lead 3 (calliope)
gk_GM_Lead_3_calliope_level chnexport "gk_GM_Lead_3_calliope_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Lead_3_calliope_midi_dynamic_range chnexport "gk_GM_Lead_3_calliope_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Lead_3_calliope_space_left_to_right chnexport "gk_GM_Lead_3_calliope_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Lead_3_calliope_vibrato_depth chnexport "gk_GM_Lead_3_calliope_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Lead_3_calliope_vibrato_rate chnexport "gk_GM_Lead_3_calliope_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Lead_3_calliope_breath chnexport "gk_GM_Lead_3_calliope_breath", 3 ; Breath noise level.
gk_GM_Lead_3_calliope_level init 0
gk_GM_Lead_3_calliope_midi_dynamic_range init 20
gk_GM_Lead_3_calliope_space_left_to_right init 0.5
gk_GM_Lead_3_calliope_vibrato_depth init 0.0
gk_GM_Lead_3_calliope_vibrato_rate init 5
gk_GM_Lead_3_calliope_breath init 0.2
gi_GM_Lead_3_calliope_sine ftgen 0, 0, 65537, 10, 1
instr GM_Lead_3_calliope
; General MIDI program 83: Lead 3 (calliope).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Lead_3_calliope_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Lead_3_calliope_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 65.4
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Lead_3_calliope_level)
; Additive pipe: a few harmonics, breath noise resonated at the pitch,
; and a chiff at the attack. Vibrato begins after the onset.
i_breath = i(gk_GM_Lead_3_calliope_breath)
i_attack = 0.02
i_sustain = p3
i_release = 0.08
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Lead_3_calliope_vibrato_depth * k_vibrato_envelope, gk_GM_Lead_3_calliope_vibrato_rate, gi_GM_Lead_3_calliope_sine
k_wobble jitter 0.0, 0.5, 3
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_wobble) / 12)
a_signal = 0
i_a1 = (i_frequency * 1 < 18000 ? 1 : 0)
a_h1 poscil i_a1, k_frequency * 1, gi_GM_Lead_3_calliope_sine
a_signal = a_signal + a_h1
i_a2 = (i_frequency * 2 < 18000 ? 0.4 : 0)
a_h2 poscil i_a2, k_frequency * 2, gi_GM_Lead_3_calliope_sine
a_signal = a_signal + a_h2
i_a3 = (i_frequency * 3 < 18000 ? 0.2 : 0)
a_h3 poscil i_a3, k_frequency * 3, gi_GM_Lead_3_calliope_sine
a_signal = a_signal + a_h3
i_a4 = (i_frequency * 4 < 18000 ? 0.1 : 0)
a_h4 poscil i_a4, k_frequency * 4, gi_GM_Lead_3_calliope_sine
a_signal = a_signal + a_h4
a_breath_noise rand 1
a_breath reson a_breath_noise, limit(k_frequency * 1.0, 50, 16000), limit(i_frequency * 0.25, 20, 4000), 1
a_breath_hiss butterbp a_breath_noise, 4000, 3000
a_signal = a_signal + (a_breath + a_breath_hiss * 0.3) * i_breath
; Chiff.
a_chiff_envelope transeg 0, 0.008, 2, 0.5, 0.05, -3, 0
a_chiff butterbp a_breath_noise * a_chiff_envelope, limit(i_frequency * 2, 100, 12000), limit(i_frequency * 1.5, 50, 6000)
a_signal = a_signal + a_chiff
a_signal tonex a_signal, limit(i_frequency * 10, 1500, 16000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  84  Lead 4 (chiff)
gk_GM_Lead_4_chiff_level chnexport "gk_GM_Lead_4_chiff_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Lead_4_chiff_midi_dynamic_range chnexport "gk_GM_Lead_4_chiff_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Lead_4_chiff_space_left_to_right chnexport "gk_GM_Lead_4_chiff_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Lead_4_chiff_cutoff chnexport "gk_GM_Lead_4_chiff_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_Lead_4_chiff_resonance chnexport "gk_GM_Lead_4_chiff_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_Lead_4_chiff_vibrato_depth chnexport "gk_GM_Lead_4_chiff_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Lead_4_chiff_vibrato_rate chnexport "gk_GM_Lead_4_chiff_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Lead_4_chiff_level init 0
gk_GM_Lead_4_chiff_midi_dynamic_range init 20
gk_GM_Lead_4_chiff_space_left_to_right init 0.5
gk_GM_Lead_4_chiff_cutoff init 5
gk_GM_Lead_4_chiff_resonance init 0.1
gk_GM_Lead_4_chiff_vibrato_depth init 0.0
gk_GM_Lead_4_chiff_vibrato_rate init 5.0
gi_GM_Lead_4_chiff_sine ftgen 0, 0, 65537, 10, 1
instr GM_Lead_4_chiff
; General MIDI program 84: Lead 4 (chiff).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Lead_4_chiff_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Lead_4_chiff_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 58.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Lead_4_chiff_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 0.004
i_decay = 0.15
i_sustain_level = 0.8
i_release = 0.1
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Lead_4_chiff_vibrato_depth * k_vibrato_envelope, gk_GM_Lead_4_chiff_vibrato_rate, gi_GM_Lead_4_chiff_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_oscillators = 0
a_osc1 vco2 0.4, k_frequency * 1.0 * 1.0, 0
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.5, k_frequency * 1.0 * 2.0, 12
a_oscillators = a_oscillators + a_osc2
a_noise rand 0.25
a_oscillators = a_oscillators + a_noise
k_filter_envelope transeg 1, 0.08, -3, 0.2
k_cutoff = i_frequency * gk_GM_Lead_4_chiff_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 2.0 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_Lead_4_chiff_resonance
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  85  Lead 5 (charang)
gk_GM_Lead_5_charang_level chnexport "gk_GM_Lead_5_charang_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Lead_5_charang_midi_dynamic_range chnexport "gk_GM_Lead_5_charang_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Lead_5_charang_space_left_to_right chnexport "gk_GM_Lead_5_charang_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Lead_5_charang_cutoff chnexport "gk_GM_Lead_5_charang_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_Lead_5_charang_resonance chnexport "gk_GM_Lead_5_charang_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_Lead_5_charang_vibrato_depth chnexport "gk_GM_Lead_5_charang_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Lead_5_charang_vibrato_rate chnexport "gk_GM_Lead_5_charang_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Lead_5_charang_level init 0
gk_GM_Lead_5_charang_midi_dynamic_range init 20
gk_GM_Lead_5_charang_space_left_to_right init 0.5
gk_GM_Lead_5_charang_cutoff init 5
gk_GM_Lead_5_charang_resonance init 0.3
gk_GM_Lead_5_charang_vibrato_depth init 0.2
gk_GM_Lead_5_charang_vibrato_rate init 5.5
gi_GM_Lead_5_charang_sine ftgen 0, 0, 65537, 10, 1
instr GM_Lead_5_charang
; General MIDI program 85: Lead 5 (charang).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Lead_5_charang_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Lead_5_charang_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 62.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Lead_5_charang_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 0.005
i_decay = 0.2
i_sustain_level = 0.8
i_release = 0.12
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 0.4, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Lead_5_charang_vibrato_depth * k_vibrato_envelope, gk_GM_Lead_5_charang_vibrato_rate, gi_GM_Lead_5_charang_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_oscillators = 0
a_osc1 vco2 0.5, k_frequency * 1.0 * 1.0, 0
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.5, k_frequency * 1.007 * 1.0, 0
a_oscillators = a_oscillators + a_osc2
k_filter_envelope transeg 1, 0.3, -3, 0.2
k_cutoff = i_frequency * gk_GM_Lead_5_charang_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 0.5 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_Lead_5_charang_resonance
a_signal = tanh(a_signal * 3)
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  86  Lead 6 (voice)
gk_GM_Lead_6_voice_level chnexport "gk_GM_Lead_6_voice_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Lead_6_voice_midi_dynamic_range chnexport "gk_GM_Lead_6_voice_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Lead_6_voice_space_left_to_right chnexport "gk_GM_Lead_6_voice_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Lead_6_voice_vibrato_depth chnexport "gk_GM_Lead_6_voice_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Lead_6_voice_vibrato_rate chnexport "gk_GM_Lead_6_voice_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Lead_6_voice_level init 0
gk_GM_Lead_6_voice_midi_dynamic_range init 20
gk_GM_Lead_6_voice_space_left_to_right init 0.5
gk_GM_Lead_6_voice_vibrato_depth init 0.25
gk_GM_Lead_6_voice_vibrato_rate init 5.5
gi_GM_Lead_6_voice_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Lead_6_voice_sigmoid ftgen 0, 0, 1024, 19, 0.5, 0.5, 270, 0.5
instr GM_Lead_6_voice
; General MIDI program 86: Lead 6 (voice).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Lead_6_voice_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Lead_6_voice_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 61.4
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Lead_6_voice_level)
; Formant synthesis (FOF): several detuned voices, each with five vowel
; formants, plus a little breath noise.
i_attack = 0.05
i_release = 0.1
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
i_total_duration = (p3 > 0 ? p3 + i_release : 3600)
k_vibrato_envelope linseg 0, 0.3, 0, 0.6, 1, 1, 1
k_vibrato vibr gk_GM_Lead_6_voice_vibrato_depth * k_vibrato_envelope, gk_GM_Lead_6_voice_vibrato_rate, gi_GM_Lead_6_voice_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
k_sweep = 1
a_signal = 0
a_v1_f1 fof 1.0000, k_frequency * 1.0, 400 * k_sweep, 0, 60, 0.003, 0.02, 0.007, 60, gi_GM_Lead_6_voice_sine, gi_GM_Lead_6_voice_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f1
a_v1_f2 fof 0.0631, k_frequency * 1.0, 1600 * k_sweep, 0, 80, 0.003, 0.02, 0.007, 60, gi_GM_Lead_6_voice_sine, gi_GM_Lead_6_voice_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f2
a_v1_f3 fof 0.0316, k_frequency * 1.0, 2700 * k_sweep, 0, 120, 0.003, 0.02, 0.007, 60, gi_GM_Lead_6_voice_sine, gi_GM_Lead_6_voice_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f3
a_v1_f4 fof 0.0178, k_frequency * 1.0, 3300 * k_sweep, 0, 150, 0.003, 0.02, 0.007, 60, gi_GM_Lead_6_voice_sine, gi_GM_Lead_6_voice_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f4
a_v1_f5 fof 0.0010, k_frequency * 1.0, 4950 * k_sweep, 0, 200, 0.003, 0.02, 0.007, 60, gi_GM_Lead_6_voice_sine, gi_GM_Lead_6_voice_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f5
; The level of formant synthesis depends on how the harmonics line up
; with the formants, so hold the loudness steady against a reference.
a_reference poscil 0.6, 100, gi_GM_Lead_6_voice_sine
a_signal balance a_signal, a_reference, 4
a_breath_noise rand 1
a_breath butterbp a_breath_noise, 2500, 2000
a_signal = a_signal + a_breath * 0.02
a_synth vco2 0.3, k_frequency, 0
a_synth moogladder a_synth, limit(i_frequency * 6, 500, 8000), 0.2
a_signal = a_signal + a_synth
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  87  Lead 7 (fifths)
gk_GM_Lead_7_fifths_level chnexport "gk_GM_Lead_7_fifths_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Lead_7_fifths_midi_dynamic_range chnexport "gk_GM_Lead_7_fifths_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Lead_7_fifths_space_left_to_right chnexport "gk_GM_Lead_7_fifths_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Lead_7_fifths_cutoff chnexport "gk_GM_Lead_7_fifths_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_Lead_7_fifths_resonance chnexport "gk_GM_Lead_7_fifths_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_Lead_7_fifths_vibrato_depth chnexport "gk_GM_Lead_7_fifths_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Lead_7_fifths_vibrato_rate chnexport "gk_GM_Lead_7_fifths_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Lead_7_fifths_level init 0
gk_GM_Lead_7_fifths_midi_dynamic_range init 20
gk_GM_Lead_7_fifths_space_left_to_right init 0.5
gk_GM_Lead_7_fifths_cutoff init 6
gk_GM_Lead_7_fifths_resonance init 0.1
gk_GM_Lead_7_fifths_vibrato_depth init 0.0
gk_GM_Lead_7_fifths_vibrato_rate init 5.0
gi_GM_Lead_7_fifths_sine ftgen 0, 0, 65537, 10, 1
instr GM_Lead_7_fifths
; General MIDI program 87: Lead 7 (fifths).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Lead_7_fifths_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Lead_7_fifths_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 60.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Lead_7_fifths_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 0.01
i_decay = 0.2
i_sustain_level = 0.85
i_release = 0.1
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Lead_7_fifths_vibrato_depth * k_vibrato_envelope, gk_GM_Lead_7_fifths_vibrato_rate, gi_GM_Lead_7_fifths_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_oscillators = 0
a_osc1 vco2 0.5, k_frequency * 1.0 * 1.0, 0
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.4, k_frequency * 1.004 * 1.0, 0
a_oscillators = a_oscillators + a_osc2
a_fifth vco2 0.5, k_frequency * 1.4983, 0
a_oscillators = a_oscillators + a_fifth
k_filter_envelope transeg 1, 0.3, -3, 0.2
k_cutoff = i_frequency * gk_GM_Lead_7_fifths_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 0.5 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_Lead_7_fifths_resonance
; Chorus.
a_chorus_lfo_1 poscil 1.5, 0.6, gi_GM_Lead_7_fifths_sine
a_chorus_lfo_2 poscil 1.5, 0.9, gi_GM_Lead_7_fifths_sine
a_chorus_1 vdelay3 a_signal, 9 + a_chorus_lfo_1, 30
a_chorus_2 vdelay3 a_signal, 14 + a_chorus_lfo_2, 30
a_signal = a_signal * (1 - 0.3 * 0.5) + (a_chorus_1 + a_chorus_2) * 0.3 * 0.5
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  88  Lead 8 (bass + lead)
gk_GM_Lead_8_bass_lead_level chnexport "gk_GM_Lead_8_bass_lead_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Lead_8_bass_lead_midi_dynamic_range chnexport "gk_GM_Lead_8_bass_lead_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Lead_8_bass_lead_space_left_to_right chnexport "gk_GM_Lead_8_bass_lead_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Lead_8_bass_lead_cutoff chnexport "gk_GM_Lead_8_bass_lead_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_Lead_8_bass_lead_resonance chnexport "gk_GM_Lead_8_bass_lead_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_Lead_8_bass_lead_vibrato_depth chnexport "gk_GM_Lead_8_bass_lead_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Lead_8_bass_lead_vibrato_rate chnexport "gk_GM_Lead_8_bass_lead_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Lead_8_bass_lead_level init 0
gk_GM_Lead_8_bass_lead_midi_dynamic_range init 20
gk_GM_Lead_8_bass_lead_space_left_to_right init 0.5
gk_GM_Lead_8_bass_lead_cutoff init 5
gk_GM_Lead_8_bass_lead_resonance init 0.25
gk_GM_Lead_8_bass_lead_vibrato_depth init 0.0
gk_GM_Lead_8_bass_lead_vibrato_rate init 5.0
gi_GM_Lead_8_bass_lead_sine ftgen 0, 0, 65537, 10, 1
instr GM_Lead_8_bass_lead
; General MIDI program 88: Lead 8 (bass + lead).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Lead_8_bass_lead_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Lead_8_bass_lead_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 61.9
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Lead_8_bass_lead_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 0.005
i_decay = 0.25
i_sustain_level = 0.75
i_release = 0.1
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Lead_8_bass_lead_vibrato_depth * k_vibrato_envelope, gk_GM_Lead_8_bass_lead_vibrato_rate, gi_GM_Lead_8_bass_lead_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_oscillators = 0
a_osc1 vco2 0.5, k_frequency * 1.0 * 1.0, 0
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.4, k_frequency * 1.003 * 1.0, 2, 0.5
a_oscillators = a_oscillators + a_osc2
a_sub vco2 0.6, k_frequency * 0.5, 10
a_oscillators = a_oscillators + a_sub
k_filter_envelope transeg 1, 0.2, -3, 0.3
k_cutoff = i_frequency * gk_GM_Lead_8_bass_lead_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 1.5 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_Lead_8_bass_lead_resonance
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  89  Pad 1 (new age)
gk_GM_Pad_1_new_age_level chnexport "gk_GM_Pad_1_new_age_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Pad_1_new_age_midi_dynamic_range chnexport "gk_GM_Pad_1_new_age_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Pad_1_new_age_space_left_to_right chnexport "gk_GM_Pad_1_new_age_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Pad_1_new_age_level init 0
gk_GM_Pad_1_new_age_midi_dynamic_range init 20
gk_GM_Pad_1_new_age_space_left_to_right init 0.5
gi_GM_Pad_1_new_age_sine ftgen 0, 0, 65537, 10, 1
instr GM_Pad_1_new_age
; General MIDI program 89: Pad 1 (new age).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Pad_1_new_age_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Pad_1_new_age_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 66.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Pad_1_new_age_level)
; New-age pad: a soft FM bell with a slow swell and chorus.
i_attack = 0.3
i_release = 0.9
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_index transeg 2.2, 1.2, -3, 0.6
a_bell_1 foscili 0.5, i_frequency, 1, 2, k_index, gi_GM_Pad_1_new_age_sine
a_bell_2 foscili 0.5, i_frequency * 1.003, 1, 3, k_index * 0.5, gi_GM_Pad_1_new_age_sine
a_sine poscil 0.4, i_frequency, gi_GM_Pad_1_new_age_sine
a_signal = a_bell_1 + a_bell_2 + a_sine
a_chorus_lfo_1 poscil 1.5, 0.4, gi_GM_Pad_1_new_age_sine
a_chorus_lfo_2 poscil 1.5, 0.6, gi_GM_Pad_1_new_age_sine
a_chorus_1 vdelay3 a_signal, 12 + a_chorus_lfo_1, 30
a_chorus_2 vdelay3 a_signal, 17 + a_chorus_lfo_2, 30
a_signal = (a_signal + a_chorus_1 + a_chorus_2) * 0.5
a_signal tonex a_signal, limit(i_frequency * 8, 1000, 10000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  90  Pad 2 (warm)
gk_GM_Pad_2_warm_level chnexport "gk_GM_Pad_2_warm_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Pad_2_warm_midi_dynamic_range chnexport "gk_GM_Pad_2_warm_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Pad_2_warm_space_left_to_right chnexport "gk_GM_Pad_2_warm_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Pad_2_warm_cutoff chnexport "gk_GM_Pad_2_warm_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_Pad_2_warm_resonance chnexport "gk_GM_Pad_2_warm_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_Pad_2_warm_vibrato_depth chnexport "gk_GM_Pad_2_warm_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Pad_2_warm_vibrato_rate chnexport "gk_GM_Pad_2_warm_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Pad_2_warm_level init 0
gk_GM_Pad_2_warm_midi_dynamic_range init 20
gk_GM_Pad_2_warm_space_left_to_right init 0.5
gk_GM_Pad_2_warm_cutoff init 2.5
gk_GM_Pad_2_warm_resonance init 0.0
gk_GM_Pad_2_warm_vibrato_depth init 0.0
gk_GM_Pad_2_warm_vibrato_rate init 5.0
gi_GM_Pad_2_warm_sine ftgen 0, 0, 65537, 10, 1
instr GM_Pad_2_warm
; General MIDI program 90: Pad 2 (warm).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Pad_2_warm_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Pad_2_warm_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 60.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Pad_2_warm_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 0.5
i_decay = 0.3
i_sustain_level = 1.0
i_release = 0.8
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Pad_2_warm_vibrato_depth * k_vibrato_envelope, gk_GM_Pad_2_warm_vibrato_rate, gi_GM_Pad_2_warm_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_oscillators = 0
a_osc1 vco2 0.4, k_frequency * 1.0 * 1.0, 0
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.4, k_frequency * 1.0045 * 1.0, 0
a_oscillators = a_oscillators + a_osc2
a_osc3 vco2 0.4, k_frequency * 0.9955 * 1.0, 0
a_oscillators = a_oscillators + a_osc3
a_osc4 vco2 0.25, k_frequency * 1.0 * 2.0, 0
a_oscillators = a_oscillators + a_osc4
a_osc5 vco2 0.25, k_frequency * 1.002 * 0.5, 0
a_oscillators = a_oscillators + a_osc5
k_filter_envelope transeg 1, 0.3, -3, 0.2
k_cutoff = i_frequency * gk_GM_Pad_2_warm_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 0.5 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_Pad_2_warm_resonance
; Chorus.
a_chorus_lfo_1 poscil 1.5, 0.6, gi_GM_Pad_2_warm_sine
a_chorus_lfo_2 poscil 1.5, 0.9, gi_GM_Pad_2_warm_sine
a_chorus_1 vdelay3 a_signal, 9 + a_chorus_lfo_1, 30
a_chorus_2 vdelay3 a_signal, 14 + a_chorus_lfo_2, 30
a_signal = a_signal * (1 - 0.6 * 0.5) + (a_chorus_1 + a_chorus_2) * 0.6 * 0.5
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  91  Pad 3 (polysynth)
gk_GM_Pad_3_polysynth_level chnexport "gk_GM_Pad_3_polysynth_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Pad_3_polysynth_midi_dynamic_range chnexport "gk_GM_Pad_3_polysynth_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Pad_3_polysynth_space_left_to_right chnexport "gk_GM_Pad_3_polysynth_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Pad_3_polysynth_cutoff chnexport "gk_GM_Pad_3_polysynth_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_Pad_3_polysynth_resonance chnexport "gk_GM_Pad_3_polysynth_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_Pad_3_polysynth_vibrato_depth chnexport "gk_GM_Pad_3_polysynth_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Pad_3_polysynth_vibrato_rate chnexport "gk_GM_Pad_3_polysynth_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Pad_3_polysynth_level init 0
gk_GM_Pad_3_polysynth_midi_dynamic_range init 20
gk_GM_Pad_3_polysynth_space_left_to_right init 0.5
gk_GM_Pad_3_polysynth_cutoff init 5
gk_GM_Pad_3_polysynth_resonance init 0.1
gk_GM_Pad_3_polysynth_vibrato_depth init 0.0
gk_GM_Pad_3_polysynth_vibrato_rate init 5.0
gi_GM_Pad_3_polysynth_sine ftgen 0, 0, 65537, 10, 1
instr GM_Pad_3_polysynth
; General MIDI program 91: Pad 3 (polysynth).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Pad_3_polysynth_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Pad_3_polysynth_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 61.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Pad_3_polysynth_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 0.05
i_decay = 0.3
i_sustain_level = 0.9
i_release = 0.3
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Pad_3_polysynth_vibrato_depth * k_vibrato_envelope, gk_GM_Pad_3_polysynth_vibrato_rate, gi_GM_Pad_3_polysynth_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
k_pw lfo 0.2, 0.4, 0
k_pw = 0.5 + k_pw
a_oscillators = 0
a_osc1 vco2 0.4, k_frequency * 1.0 * 1.0, 2, k_pw
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.4, k_frequency * 1.006 * 1.0, 0
a_oscillators = a_oscillators + a_osc2
a_osc3 vco2 0.4, k_frequency * 0.994 * 1.0, 0
a_oscillators = a_oscillators + a_osc3
k_filter_envelope transeg 1, 0.4, -3, 0.3
k_cutoff = i_frequency * gk_GM_Pad_3_polysynth_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 1.0 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_Pad_3_polysynth_resonance
; Chorus.
a_chorus_lfo_1 poscil 1.5, 0.6, gi_GM_Pad_3_polysynth_sine
a_chorus_lfo_2 poscil 1.5, 0.9, gi_GM_Pad_3_polysynth_sine
a_chorus_1 vdelay3 a_signal, 9 + a_chorus_lfo_1, 30
a_chorus_2 vdelay3 a_signal, 14 + a_chorus_lfo_2, 30
a_signal = a_signal * (1 - 0.5 * 0.5) + (a_chorus_1 + a_chorus_2) * 0.5 * 0.5
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  92  Pad 4 (choir)
gk_GM_Pad_4_choir_level chnexport "gk_GM_Pad_4_choir_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Pad_4_choir_midi_dynamic_range chnexport "gk_GM_Pad_4_choir_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Pad_4_choir_space_left_to_right chnexport "gk_GM_Pad_4_choir_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Pad_4_choir_vibrato_depth chnexport "gk_GM_Pad_4_choir_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Pad_4_choir_vibrato_rate chnexport "gk_GM_Pad_4_choir_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Pad_4_choir_level init 0
gk_GM_Pad_4_choir_midi_dynamic_range init 20
gk_GM_Pad_4_choir_space_left_to_right init 0.5
gk_GM_Pad_4_choir_vibrato_depth init 0.3
gk_GM_Pad_4_choir_vibrato_rate init 5.0
gi_GM_Pad_4_choir_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Pad_4_choir_sigmoid ftgen 0, 0, 1024, 19, 0.5, 0.5, 270, 0.5
instr GM_Pad_4_choir
; General MIDI program 92: Pad 4 (choir).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Pad_4_choir_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Pad_4_choir_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 67.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Pad_4_choir_level)
; Formant synthesis (FOF): several detuned voices, each with five vowel
; formants, plus a little breath noise.
i_attack = 0.6
i_release = 0.8
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
i_total_duration = (p3 > 0 ? p3 + i_release : 3600)
k_vibrato_envelope linseg 0, 0.4, 0, 0.6, 1, 1, 1
k_vibrato vibr gk_GM_Pad_4_choir_vibrato_depth * k_vibrato_envelope, gk_GM_Pad_4_choir_vibrato_rate, gi_GM_Pad_4_choir_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
k_sweep = 1
a_signal = 0
a_v1_f1 fof 1.0000, k_frequency * 1.0, 800 * k_sweep, 0, 80, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f1
a_v1_f2 fof 0.6310, k_frequency * 1.0, 1150 * k_sweep, 0, 90, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f2
a_v1_f3 fof 0.1000, k_frequency * 1.0, 2800 * k_sweep, 0, 120, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f3
a_v1_f4 fof 0.0158, k_frequency * 1.0, 3500 * k_sweep, 0, 130, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f4
a_v1_f5 fof 0.0010, k_frequency * 1.0, 4950 * k_sweep, 0, 140, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f5
a_v2_f1 fof 0.8000, k_frequency * 1.006, 800 * k_sweep, 0, 80, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f1
a_v2_f2 fof 0.5048, k_frequency * 1.006, 1150 * k_sweep, 0, 90, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f2
a_v2_f3 fof 0.0800, k_frequency * 1.006, 2800 * k_sweep, 0, 120, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f3
a_v2_f4 fof 0.0127, k_frequency * 1.006, 3500 * k_sweep, 0, 130, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f4
a_v2_f5 fof 0.0008, k_frequency * 1.006, 4950 * k_sweep, 0, 140, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f5
a_v3_f1 fof 0.8000, k_frequency * 0.994, 800 * k_sweep, 0, 80, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f1
a_v3_f2 fof 0.5048, k_frequency * 0.994, 1150 * k_sweep, 0, 90, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f2
a_v3_f3 fof 0.0800, k_frequency * 0.994, 2800 * k_sweep, 0, 120, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f3
a_v3_f4 fof 0.0127, k_frequency * 0.994, 3500 * k_sweep, 0, 130, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f4
a_v3_f5 fof 0.0008, k_frequency * 0.994, 4950 * k_sweep, 0, 140, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f5
a_v4_f1 fof 0.3000, k_frequency * 2.003, 800 * k_sweep, 0, 80, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v4_f1
a_v4_f2 fof 0.1893, k_frequency * 2.003, 1150 * k_sweep, 0, 90, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v4_f2
a_v4_f3 fof 0.0300, k_frequency * 2.003, 2800 * k_sweep, 0, 120, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v4_f3
a_v4_f4 fof 0.0048, k_frequency * 2.003, 3500 * k_sweep, 0, 130, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v4_f4
a_v4_f5 fof 0.0003, k_frequency * 2.003, 4950 * k_sweep, 0, 140, 0.003, 0.02, 0.007, 60, gi_GM_Pad_4_choir_sine, gi_GM_Pad_4_choir_sigmoid, i_total_duration
a_signal = a_signal + a_v4_f5
; The level of formant synthesis depends on how the harmonics line up
; with the formants, so hold the loudness steady against a reference.
a_reference poscil 0.6, 100, gi_GM_Pad_4_choir_sine
a_signal balance a_signal, a_reference, 4
a_breath_noise rand 1
a_breath butterbp a_breath_noise, 2500, 2000
a_signal = a_signal + a_breath * 0.03
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  93  Pad 5 (bowed)
gk_GM_Pad_5_bowed_level chnexport "gk_GM_Pad_5_bowed_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Pad_5_bowed_midi_dynamic_range chnexport "gk_GM_Pad_5_bowed_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Pad_5_bowed_space_left_to_right chnexport "gk_GM_Pad_5_bowed_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Pad_5_bowed_cutoff chnexport "gk_GM_Pad_5_bowed_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_Pad_5_bowed_resonance chnexport "gk_GM_Pad_5_bowed_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_Pad_5_bowed_vibrato_depth chnexport "gk_GM_Pad_5_bowed_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Pad_5_bowed_vibrato_rate chnexport "gk_GM_Pad_5_bowed_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Pad_5_bowed_level init 0
gk_GM_Pad_5_bowed_midi_dynamic_range init 20
gk_GM_Pad_5_bowed_space_left_to_right init 0.5
gk_GM_Pad_5_bowed_cutoff init 3
gk_GM_Pad_5_bowed_resonance init 0.0
gk_GM_Pad_5_bowed_vibrato_depth init 0.15
gk_GM_Pad_5_bowed_vibrato_rate init 4.5
gi_GM_Pad_5_bowed_sine ftgen 0, 0, 65537, 10, 1
instr GM_Pad_5_bowed
; General MIDI program 93: Pad 5 (bowed).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Pad_5_bowed_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Pad_5_bowed_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 62.0
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Pad_5_bowed_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 0.8
i_decay = 0.3
i_sustain_level = 1.0
i_release = 1.0
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 1.0, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Pad_5_bowed_vibrato_depth * k_vibrato_envelope, gk_GM_Pad_5_bowed_vibrato_rate, gi_GM_Pad_5_bowed_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_oscillators = 0
a_osc1 vco2 0.5, k_frequency * 1.0 * 1.0, 12
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.3, k_frequency * 1.003 * 1.0, 0
a_oscillators = a_oscillators + a_osc2
a_osc3 vco2 0.5, k_frequency * 0.997 * 1.0, 12
a_oscillators = a_oscillators + a_osc3
k_filter_envelope transeg 1, 0.3, -3, 0.2
k_cutoff = i_frequency * gk_GM_Pad_5_bowed_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 0.5 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_Pad_5_bowed_resonance
; Chorus.
a_chorus_lfo_1 poscil 1.5, 0.6, gi_GM_Pad_5_bowed_sine
a_chorus_lfo_2 poscil 1.5, 0.9, gi_GM_Pad_5_bowed_sine
a_chorus_1 vdelay3 a_signal, 9 + a_chorus_lfo_1, 30
a_chorus_2 vdelay3 a_signal, 14 + a_chorus_lfo_2, 30
a_signal = a_signal * (1 - 0.5 * 0.5) + (a_chorus_1 + a_chorus_2) * 0.5 * 0.5
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  94  Pad 6 (metallic)
gk_GM_Pad_6_metallic_level chnexport "gk_GM_Pad_6_metallic_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Pad_6_metallic_midi_dynamic_range chnexport "gk_GM_Pad_6_metallic_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Pad_6_metallic_space_left_to_right chnexport "gk_GM_Pad_6_metallic_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Pad_6_metallic_level init 0
gk_GM_Pad_6_metallic_midi_dynamic_range init 20
gk_GM_Pad_6_metallic_space_left_to_right init 0.5
gi_GM_Pad_6_metallic_sine ftgen 0, 0, 65537, 10, 1
instr GM_Pad_6_metallic
; General MIDI program 94: Pad 6 (metallic).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Pad_6_metallic_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Pad_6_metallic_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 66.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Pad_6_metallic_level)
; Metallic pad: inharmonic FM at a slowly wandering index.
i_attack = 0.35
i_release = 1.0
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_index jspline 0.6, 0.1, 0.4
k_index = 1.8 + k_index
a_metal_1 foscili 0.5, i_frequency, 1, 1.414, k_index, gi_GM_Pad_6_metallic_sine
a_metal_2 foscili 0.5, i_frequency * 1.002, 1, 2.236, k_index * 0.7, gi_GM_Pad_6_metallic_sine
a_metal_3 foscili 0.3, i_frequency * 0.5, 1, 3.17, k_index * 0.5, gi_GM_Pad_6_metallic_sine
a_signal = a_metal_1 + a_metal_2 + a_metal_3
a_chorus_lfo poscil 2, 0.3, gi_GM_Pad_6_metallic_sine
a_chorus vdelay3 a_signal, 15 + a_chorus_lfo, 30
a_signal = (a_signal + a_chorus) * 0.6
a_signal tonex a_signal, limit(i_frequency * 10, 1500, 12000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  95  Pad 7 (halo)
gk_GM_Pad_7_halo_level chnexport "gk_GM_Pad_7_halo_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Pad_7_halo_midi_dynamic_range chnexport "gk_GM_Pad_7_halo_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Pad_7_halo_space_left_to_right chnexport "gk_GM_Pad_7_halo_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Pad_7_halo_vibrato_depth chnexport "gk_GM_Pad_7_halo_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Pad_7_halo_vibrato_rate chnexport "gk_GM_Pad_7_halo_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Pad_7_halo_level init 0
gk_GM_Pad_7_halo_midi_dynamic_range init 20
gk_GM_Pad_7_halo_space_left_to_right init 0.5
gk_GM_Pad_7_halo_vibrato_depth init 0.3
gk_GM_Pad_7_halo_vibrato_rate init 5.0
gi_GM_Pad_7_halo_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Pad_7_halo_sigmoid ftgen 0, 0, 1024, 19, 0.5, 0.5, 270, 0.5
instr GM_Pad_7_halo
; General MIDI program 95: Pad 7 (halo).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Pad_7_halo_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Pad_7_halo_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 65.4
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Pad_7_halo_level)
; Formant synthesis (FOF): several detuned voices, each with five vowel
; formants, plus a little breath noise.
i_attack = 0.8
i_release = 1.0
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
i_total_duration = (p3 > 0 ? p3 + i_release : 3600)
k_vibrato_envelope linseg 0, 0.4, 0, 0.6, 1, 1, 1
k_vibrato vibr gk_GM_Pad_7_halo_vibrato_depth * k_vibrato_envelope, gk_GM_Pad_7_halo_vibrato_rate, gi_GM_Pad_7_halo_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
k_sweep = 1
a_signal = 0
a_v1_f1 fof 1.0000, k_frequency * 1.0, 450 * k_sweep, 0, 70, 0.003, 0.02, 0.007, 60, gi_GM_Pad_7_halo_sine, gi_GM_Pad_7_halo_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f1
a_v1_f2 fof 0.3548, k_frequency * 1.0, 800 * k_sweep, 0, 80, 0.003, 0.02, 0.007, 60, gi_GM_Pad_7_halo_sine, gi_GM_Pad_7_halo_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f2
a_v1_f3 fof 0.1585, k_frequency * 1.0, 2830 * k_sweep, 0, 100, 0.003, 0.02, 0.007, 60, gi_GM_Pad_7_halo_sine, gi_GM_Pad_7_halo_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f3
a_v1_f4 fof 0.0398, k_frequency * 1.0, 3500 * k_sweep, 0, 130, 0.003, 0.02, 0.007, 60, gi_GM_Pad_7_halo_sine, gi_GM_Pad_7_halo_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f4
a_v1_f5 fof 0.0018, k_frequency * 1.0, 4950 * k_sweep, 0, 135, 0.003, 0.02, 0.007, 60, gi_GM_Pad_7_halo_sine, gi_GM_Pad_7_halo_sigmoid, i_total_duration
a_signal = a_signal + a_v1_f5
a_v2_f1 fof 0.8000, k_frequency * 1.004, 450 * k_sweep, 0, 70, 0.003, 0.02, 0.007, 60, gi_GM_Pad_7_halo_sine, gi_GM_Pad_7_halo_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f1
a_v2_f2 fof 0.2839, k_frequency * 1.004, 800 * k_sweep, 0, 80, 0.003, 0.02, 0.007, 60, gi_GM_Pad_7_halo_sine, gi_GM_Pad_7_halo_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f2
a_v2_f3 fof 0.1268, k_frequency * 1.004, 2830 * k_sweep, 0, 100, 0.003, 0.02, 0.007, 60, gi_GM_Pad_7_halo_sine, gi_GM_Pad_7_halo_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f3
a_v2_f4 fof 0.0318, k_frequency * 1.004, 3500 * k_sweep, 0, 130, 0.003, 0.02, 0.007, 60, gi_GM_Pad_7_halo_sine, gi_GM_Pad_7_halo_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f4
a_v2_f5 fof 0.0014, k_frequency * 1.004, 4950 * k_sweep, 0, 135, 0.003, 0.02, 0.007, 60, gi_GM_Pad_7_halo_sine, gi_GM_Pad_7_halo_sigmoid, i_total_duration
a_signal = a_signal + a_v2_f5
a_v3_f1 fof 0.4000, k_frequency * 2.003, 450 * k_sweep, 0, 70, 0.003, 0.02, 0.007, 60, gi_GM_Pad_7_halo_sine, gi_GM_Pad_7_halo_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f1
a_v3_f2 fof 0.1419, k_frequency * 2.003, 800 * k_sweep, 0, 80, 0.003, 0.02, 0.007, 60, gi_GM_Pad_7_halo_sine, gi_GM_Pad_7_halo_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f2
a_v3_f3 fof 0.0634, k_frequency * 2.003, 2830 * k_sweep, 0, 100, 0.003, 0.02, 0.007, 60, gi_GM_Pad_7_halo_sine, gi_GM_Pad_7_halo_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f3
a_v3_f4 fof 0.0159, k_frequency * 2.003, 3500 * k_sweep, 0, 130, 0.003, 0.02, 0.007, 60, gi_GM_Pad_7_halo_sine, gi_GM_Pad_7_halo_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f4
a_v3_f5 fof 0.0007, k_frequency * 2.003, 4950 * k_sweep, 0, 135, 0.003, 0.02, 0.007, 60, gi_GM_Pad_7_halo_sine, gi_GM_Pad_7_halo_sigmoid, i_total_duration
a_signal = a_signal + a_v3_f5
; The level of formant synthesis depends on how the harmonics line up
; with the formants, so hold the loudness steady against a reference.
a_reference poscil 0.6, 100, gi_GM_Pad_7_halo_sine
a_signal balance a_signal, a_reference, 4
a_breath_noise rand 1
a_breath butterbp a_breath_noise, 2500, 2000
a_signal = a_signal + a_breath * 0.05
a_synth vco2 0.1, k_frequency, 0
a_synth moogladder a_synth, limit(i_frequency * 6, 500, 8000), 0.2
a_signal = a_signal + a_synth
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  96  Pad 8 (sweep)
gk_GM_Pad_8_sweep_level chnexport "gk_GM_Pad_8_sweep_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Pad_8_sweep_midi_dynamic_range chnexport "gk_GM_Pad_8_sweep_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Pad_8_sweep_space_left_to_right chnexport "gk_GM_Pad_8_sweep_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Pad_8_sweep_cutoff chnexport "gk_GM_Pad_8_sweep_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_Pad_8_sweep_resonance chnexport "gk_GM_Pad_8_sweep_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_Pad_8_sweep_vibrato_depth chnexport "gk_GM_Pad_8_sweep_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Pad_8_sweep_vibrato_rate chnexport "gk_GM_Pad_8_sweep_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Pad_8_sweep_level init 0
gk_GM_Pad_8_sweep_midi_dynamic_range init 20
gk_GM_Pad_8_sweep_space_left_to_right init 0.5
gk_GM_Pad_8_sweep_cutoff init 1.5
gk_GM_Pad_8_sweep_resonance init 0.5
gk_GM_Pad_8_sweep_vibrato_depth init 0.0
gk_GM_Pad_8_sweep_vibrato_rate init 5.0
gi_GM_Pad_8_sweep_sine ftgen 0, 0, 65537, 10, 1
instr GM_Pad_8_sweep
; General MIDI program 96: Pad 8 (sweep).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Pad_8_sweep_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Pad_8_sweep_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 57.4
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Pad_8_sweep_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 0.3
i_decay = 0.3
i_sustain_level = 1.0
i_release = 0.8
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Pad_8_sweep_vibrato_depth * k_vibrato_envelope, gk_GM_Pad_8_sweep_vibrato_rate, gi_GM_Pad_8_sweep_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_oscillators = 0
a_osc1 vco2 0.5, k_frequency * 1.0 * 1.0, 0
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.4, k_frequency * 1.006 * 1.0, 0
a_oscillators = a_oscillators + a_osc2
a_osc3 vco2 0.4, k_frequency * 0.994 * 1.0, 0
a_oscillators = a_oscillators + a_osc3
k_filter_envelope transeg 1, 2.5, -3, 0.2
k_cutoff = i_frequency * gk_GM_Pad_8_sweep_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 4.0 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_Pad_8_sweep_resonance
; Chorus.
a_chorus_lfo_1 poscil 1.5, 0.6, gi_GM_Pad_8_sweep_sine
a_chorus_lfo_2 poscil 1.5, 0.9, gi_GM_Pad_8_sweep_sine
a_chorus_1 vdelay3 a_signal, 9 + a_chorus_lfo_1, 30
a_chorus_2 vdelay3 a_signal, 14 + a_chorus_lfo_2, 30
a_signal = a_signal * (1 - 0.4 * 0.5) + (a_chorus_1 + a_chorus_2) * 0.4 * 0.5
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  97  FX 1 (rain)
gk_GM_FX_1_rain_level chnexport "gk_GM_FX_1_rain_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_FX_1_rain_midi_dynamic_range chnexport "gk_GM_FX_1_rain_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_FX_1_rain_space_left_to_right chnexport "gk_GM_FX_1_rain_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_FX_1_rain_level init 0
gk_GM_FX_1_rain_midi_dynamic_range init 20
gk_GM_FX_1_rain_space_left_to_right init 0.5
gi_GM_FX_1_rain_sine ftgen 0, 0, 65537, 10, 1
instr GM_FX_1_rain
; General MIDI program 97: FX 1 (rain).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_FX_1_rain_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_FX_1_rain_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 79.0
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_FX_1_rain_level)
; Rain: random drops resonated near the pitch, over a soft wash.
i_attack = 0.1
i_release = 0.5
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
a_drops dust2 1, 80 + 60 * i_velocity
a_drops_1 mode a_drops, i_frequency * 2, 200
a_drops_2 mode a_drops, i_frequency * 3.3, 150
a_drops_3 mode a_drops, i_frequency * 5.1, 120
a_wash pinkish 1
a_wash butterbp a_wash, limit(i_frequency * 6, 500, 8000), limit(i_frequency * 4, 300, 6000)
a_signal = (a_drops_1 + a_drops_2 * 0.6 + a_drops_3 * 0.4) * 3 + a_wash * 0.3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  98  FX 2 (soundtrack)
gk_GM_FX_2_soundtrack_level chnexport "gk_GM_FX_2_soundtrack_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_FX_2_soundtrack_midi_dynamic_range chnexport "gk_GM_FX_2_soundtrack_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_FX_2_soundtrack_space_left_to_right chnexport "gk_GM_FX_2_soundtrack_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_FX_2_soundtrack_cutoff chnexport "gk_GM_FX_2_soundtrack_cutoff", 3 ; Filter cut-off as a multiple of the pitch.
gk_GM_FX_2_soundtrack_resonance chnexport "gk_GM_FX_2_soundtrack_resonance", 3 ; Filter resonance, 0 to 1.
gk_GM_FX_2_soundtrack_vibrato_depth chnexport "gk_GM_FX_2_soundtrack_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_FX_2_soundtrack_vibrato_rate chnexport "gk_GM_FX_2_soundtrack_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_FX_2_soundtrack_level init 0
gk_GM_FX_2_soundtrack_midi_dynamic_range init 20
gk_GM_FX_2_soundtrack_space_left_to_right init 0.5
gk_GM_FX_2_soundtrack_cutoff init 3
gk_GM_FX_2_soundtrack_resonance init 0.1
gk_GM_FX_2_soundtrack_vibrato_depth init 0.0
gk_GM_FX_2_soundtrack_vibrato_rate init 5.0
gi_GM_FX_2_soundtrack_sine ftgen 0, 0, 65537, 10, 1
instr GM_FX_2_soundtrack
; General MIDI program 98: FX 2 (soundtrack).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_FX_2_soundtrack_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_FX_2_soundtrack_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 60.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_FX_2_soundtrack_level)
; Detuned oscillators into a resonant low-pass filter with its own
; envelope, then chorus. Attack and release are set for this role.
i_attack = 1.0
i_decay = 0.3
i_sustain_level = 1.0
i_release = 1.2
xtratim i_attack + i_release
a_envelope madsr i_attack, i_decay, i_sustain_level, i_release

k_vibrato_envelope linseg 0, 0.3, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_FX_2_soundtrack_vibrato_depth * k_vibrato_envelope, gk_GM_FX_2_soundtrack_vibrato_rate, gi_GM_FX_2_soundtrack_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_oscillators = 0
a_osc1 vco2 0.5, k_frequency * 1.0 * 1.0, 0
a_oscillators = a_oscillators + a_osc1
a_osc2 vco2 0.4, k_frequency * 1.004 * 1.0, 0
a_oscillators = a_oscillators + a_osc2
a_fifth vco2 0.5, k_frequency * 1.4983, 0
a_oscillators = a_oscillators + a_fifth
k_filter_envelope transeg 1, 0.3, -3, 0.2
k_cutoff = i_frequency * gk_GM_FX_2_soundtrack_cutoff * (0.6 + 0.6 * i_velocity) * (1 + 0.5 * k_filter_envelope)
k_cutoff limit k_cutoff, 300, 16000
a_signal moogladder a_oscillators, k_cutoff, gk_GM_FX_2_soundtrack_resonance
; Chorus.
a_chorus_lfo_1 poscil 1.5, 0.6, gi_GM_FX_2_soundtrack_sine
a_chorus_lfo_2 poscil 1.5, 0.9, gi_GM_FX_2_soundtrack_sine
a_chorus_1 vdelay3 a_signal, 9 + a_chorus_lfo_1, 30
a_chorus_2 vdelay3 a_signal, 14 + a_chorus_lfo_2, 30
a_signal = a_signal * (1 - 0.8 * 0.5) + (a_chorus_1 + a_chorus_2) * 0.8 * 0.5
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;;  99  FX 3 (crystal)
gk_GM_FX_3_crystal_level chnexport "gk_GM_FX_3_crystal_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_FX_3_crystal_midi_dynamic_range chnexport "gk_GM_FX_3_crystal_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_FX_3_crystal_space_left_to_right chnexport "gk_GM_FX_3_crystal_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_FX_3_crystal_decay_scale chnexport "gk_GM_FX_3_crystal_decay_scale", 3 ; Multiplies all partial decay times.
gk_GM_FX_3_crystal_mallet_hardness chnexport "gk_GM_FX_3_crystal_mallet_hardness", 3 ; Multiplies the strike noise cut-off.
gk_GM_FX_3_crystal_level init 0
gk_GM_FX_3_crystal_midi_dynamic_range init 20
gk_GM_FX_3_crystal_space_left_to_right init 0.5
gk_GM_FX_3_crystal_decay_scale init 1.0
gk_GM_FX_3_crystal_mallet_hardness init 1.0
gi_GM_FX_3_crystal_sine ftgen 0, 0, 65537, 10, 1
instr GM_FX_3_crystal
; General MIDI program 99: FX 3 (crystal).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_FX_3_crystal_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_FX_3_crystal_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 69.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_FX_3_crystal_level)
; Modal synthesis: each partial is an exponentially decaying sinusoid
; with its own decay, plus a short filtered noise strike.
i_decay_scale = i(gk_GM_FX_3_crystal_decay_scale)
i_mallet_hardness = i(gk_GM_FX_3_crystal_mallet_hardness)
i_decay = 4.0 * i_decay_scale * limit(880 / i_frequency, 0.2, 5) ^ 0.3
i_decay limit i_decay, 0.08, 20.0
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.04
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

a_noise rand 1
a_strike_envelope transeg 1, 0.003, -4, 0
a_strike butterlp a_noise * a_strike_envelope, limit(8000 * i_mallet_hardness * (0.6 + 0.8 * i_velocity), 200, 18000)
a_signal = a_strike * 0.2
i_f1 = i_frequency * 1 * (1 + random:i(-0.0006, 0.0006))
i_a1 = (i_f1 < 16000 ? 1 : 0)
a_env1 transeg 1, i_decay * 1, -7, 0
a_p1 poscil i_a1 * a_env1, i_f1, gi_GM_FX_3_crystal_sine
a_signal = a_signal + a_p1
i_f2 = i_frequency * 2.0 * (1 + random:i(-0.0006, 0.0006))
i_a2 = (i_f2 < 16000 ? 0.5 : 0)
a_env2 transeg 1, i_decay * 0.8, -7, 0
a_p2 poscil i_a2 * a_env2, i_f2, gi_GM_FX_3_crystal_sine
a_signal = a_signal + a_p2
i_f3 = i_frequency * 3.98 * (1 + random:i(-0.0006, 0.0006))
i_a3 = (i_f3 < 16000 ? 0.4 : 0)
a_env3 transeg 1, i_decay * 0.7, -7, 0
a_p3 poscil i_a3 * a_env3, i_f3, gi_GM_FX_3_crystal_sine
a_signal = a_signal + a_p3
i_f4 = i_frequency * 6.3 * (1 + random:i(-0.0006, 0.0006))
i_a4 = (i_f4 < 16000 ? 0.3 : 0)
a_env4 transeg 1, i_decay * 0.6, -7, 0
a_p4 poscil i_a4 * a_env4, i_f4, gi_GM_FX_3_crystal_sine
a_signal = a_signal + a_p4
i_f5 = i_frequency * 9.1 * (1 + random:i(-0.0006, 0.0006))
i_a5 = (i_f5 < 16000 ? 0.2 : 0)
a_env5 transeg 1, i_decay * 0.5, -7, 0
a_p5 poscil i_a5 * a_env5, i_f5, gi_GM_FX_3_crystal_sine
a_signal = a_signal + a_p5
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 100  FX 4 (atmosphere)
gk_GM_FX_4_atmosphere_level chnexport "gk_GM_FX_4_atmosphere_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_FX_4_atmosphere_midi_dynamic_range chnexport "gk_GM_FX_4_atmosphere_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_FX_4_atmosphere_space_left_to_right chnexport "gk_GM_FX_4_atmosphere_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_FX_4_atmosphere_level init 0
gk_GM_FX_4_atmosphere_midi_dynamic_range init 20
gk_GM_FX_4_atmosphere_space_left_to_right init 0.5
gi_GM_FX_4_atmosphere_sine ftgen 0, 0, 65537, 10, 1
instr GM_FX_4_atmosphere
; General MIDI program 100: FX 4 (atmosphere).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_FX_4_atmosphere_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_FX_4_atmosphere_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 56.0
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_FX_4_atmosphere_level)
; Atmosphere: a nylon-string pluck over a soft, slow pad.
i_attack = 0.01
i_release = 0.8
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
a_pluck pluck 1, i_frequency, i_frequency, 0, 6
a_pluck_envelope transeg 1, 2.5, -5, 0
a_pluck tonex a_pluck * a_pluck_envelope, limit(i_frequency * 6, 800, 7000), 1
a_pad_envelope linseg 0, 0.4, 1, 1, 1
a_pad_1 vco2 0.3, i_frequency * 1.003, 0
a_pad_2 vco2 0.3, i_frequency * 0.997, 0
a_pad_3 vco2 0.2, i_frequency * 2.002, 12
a_pad moogladder (a_pad_1 + a_pad_2 + a_pad_3) * a_pad_envelope, limit(i_frequency * 4, 400, 5000), 0.15
a_signal = a_pluck + a_pad
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 101  FX 5 (brightness)
gk_GM_FX_5_brightness_level chnexport "gk_GM_FX_5_brightness_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_FX_5_brightness_midi_dynamic_range chnexport "gk_GM_FX_5_brightness_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_FX_5_brightness_space_left_to_right chnexport "gk_GM_FX_5_brightness_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_FX_5_brightness_level init 0
gk_GM_FX_5_brightness_midi_dynamic_range init 20
gk_GM_FX_5_brightness_space_left_to_right init 0.5
gi_GM_FX_5_brightness_sine ftgen 0, 0, 65537, 10, 1
instr GM_FX_5_brightness
; General MIDI program 101: FX 5 (brightness).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_FX_5_brightness_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_FX_5_brightness_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 65.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_FX_5_brightness_level)
; Brightness: a bell-like additive tone with a soft pad underneath and
; a slow chorus.
i_attack = 0.15
i_release = 0.9
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
a_bell_envelope transeg 1, 3, -4, 0.15
a_h1 poscil 0.5, i_frequency, gi_GM_FX_5_brightness_sine
a_h2 poscil 0.35 * a_bell_envelope, i_frequency * 2.001, gi_GM_FX_5_brightness_sine
a_h3 poscil 0.2 * a_bell_envelope, i_frequency * 4.003, gi_GM_FX_5_brightness_sine
a_h4 poscil 0.1 * a_bell_envelope, i_frequency * 5.6, gi_GM_FX_5_brightness_sine
a_pad vco2 0.25, i_frequency * 0.5, 12
a_signal = a_h1 + a_h2 + a_h3 + a_h4 + a_pad
a_chorus_lfo poscil 2, 0.35, gi_GM_FX_5_brightness_sine
a_chorus vdelay3 a_signal, 14 + a_chorus_lfo, 30
a_signal = (a_signal + a_chorus) * 0.6
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 102  FX 6 (goblins)
gk_GM_FX_6_goblins_level chnexport "gk_GM_FX_6_goblins_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_FX_6_goblins_midi_dynamic_range chnexport "gk_GM_FX_6_goblins_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_FX_6_goblins_space_left_to_right chnexport "gk_GM_FX_6_goblins_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_FX_6_goblins_level init 0
gk_GM_FX_6_goblins_midi_dynamic_range init 20
gk_GM_FX_6_goblins_space_left_to_right init 0.5
gi_GM_FX_6_goblins_sine ftgen 0, 0, 65537, 10, 1
instr GM_FX_6_goblins
; General MIDI program 102: FX 6 (goblins).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_FX_6_goblins_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_FX_6_goblins_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 57.0
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_FX_6_goblins_level)
; Goblins: a dark saw with a slowly wandering resonant filter and pitch.
i_attack = 0.6
i_release = 0.9
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_wander jspline 0.6, 0.2, 0.8
k_frequency = i_frequency * 2 ^ (k_wander / 12)
a_saw_1 vco2 0.5, k_frequency, 0
a_saw_2 vco2 0.5, k_frequency * 0.5, 0
k_cutoff jspline 1, 0.1, 0.5
k_cutoff = i_frequency * (2.5 + 1.5 * k_cutoff)
a_signal moogladder a_saw_1 + a_saw_2, limit(k_cutoff, 100, 8000), 0.55
a_breath rand 1
a_breath butterbp a_breath, limit(k_cutoff * 1.5, 200, 10000), 600
a_signal = a_signal + a_breath * 0.08
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 103  FX 7 (echoes)
gk_GM_FX_7_echoes_level chnexport "gk_GM_FX_7_echoes_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_FX_7_echoes_midi_dynamic_range chnexport "gk_GM_FX_7_echoes_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_FX_7_echoes_space_left_to_right chnexport "gk_GM_FX_7_echoes_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_FX_7_echoes_level init 0
gk_GM_FX_7_echoes_midi_dynamic_range init 20
gk_GM_FX_7_echoes_space_left_to_right init 0.5
gi_GM_FX_7_echoes_sine ftgen 0, 0, 65537, 10, 1
instr GM_FX_7_echoes
; General MIDI program 103: FX 7 (echoes).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_FX_7_echoes_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_FX_7_echoes_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 62.8
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_FX_7_echoes_level)
; Echoes: a soft FM pluck that repeats in a feedback delay.
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = 3.5
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.003
i_exponent = 5
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.1
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_index transeg 3, 0.15, -4, 0.3
a_pluck_envelope transeg 1, 0.35, -5, 0
a_pluck foscili a_pluck_envelope, i_frequency, 1, 2, k_index, gi_GM_FX_7_echoes_sine
a_feedback init 0
a_echo_in = a_pluck + a_feedback * 0.55
a_echo delay a_echo_in, 0.375
a_feedback tonex a_echo, 3500, 1
a_signal = a_pluck + a_echo
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 104  FX 8 (sci-fi)
gk_GM_FX_8_sci_fi_level chnexport "gk_GM_FX_8_sci_fi_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_FX_8_sci_fi_midi_dynamic_range chnexport "gk_GM_FX_8_sci_fi_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_FX_8_sci_fi_space_left_to_right chnexport "gk_GM_FX_8_sci_fi_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_FX_8_sci_fi_level init 0
gk_GM_FX_8_sci_fi_midi_dynamic_range init 20
gk_GM_FX_8_sci_fi_space_left_to_right init 0.5
gi_GM_FX_8_sci_fi_sine ftgen 0, 0, 65537, 10, 1
instr GM_FX_8_sci_fi
; General MIDI program 104: FX 8 (sci-fi).
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_FX_8_sci_fi_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_FX_8_sci_fi_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 58.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_FX_8_sci_fi_level)
; Sci-fi: an FM tone whose ratio and filter sweep upward, ring-modulated.
i_attack = 0.05
i_release = 0.4
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_ratio transeg 0.5, 0.6, 2, 3.5, 1, 0, 3.5
k_index transeg 1, 0.8, 1, 5
a_fm foscili 1, i_frequency, 1, k_ratio, k_index, gi_GM_FX_8_sci_fi_sine
k_ring_frequency transeg i_frequency * 0.25, 1.2, 3, i_frequency * 1.5
a_ring poscil 1, k_ring_frequency, gi_GM_FX_8_sci_fi_sine
a_signal = a_fm * (0.6 + 0.4 * a_ring)
k_cutoff transeg 600, 1, 2, 6000, 1, 0, 6000
a_signal moogladder a_signal, k_cutoff + i_frequency, 0.4
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 105  Sitar
gk_GM_Sitar_level chnexport "gk_GM_Sitar_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Sitar_midi_dynamic_range chnexport "gk_GM_Sitar_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Sitar_space_left_to_right chnexport "gk_GM_Sitar_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Sitar_decay_scale chnexport "gk_GM_Sitar_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Sitar_pick_brightness chnexport "gk_GM_Sitar_pick_brightness", 3 ; Multiplies the pick low-pass cut-off.
gk_GM_Sitar_level init 0
gk_GM_Sitar_midi_dynamic_range init 20
gk_GM_Sitar_space_left_to_right init 0.5
gk_GM_Sitar_decay_scale init 1.0
gk_GM_Sitar_pick_brightness init 1.0
instr GM_Sitar
; General MIDI program 105: Sitar.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Sitar_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Sitar_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 64.6
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Sitar_level)
; Karplus-Strong string. Decay shortens with pitch, as on a real string,
; and the pick brightness follows velocity.
i_decay_scale = i(gk_GM_Sitar_decay_scale)
i_pick_brightness = i(gk_GM_Sitar_pick_brightness)
i_decay = 3.0 * i_decay_scale * limit(220.0 / i_frequency, 0.1, 6) ^ 0.5
i_decay limit i_decay, 0.15, 20
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 6
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.02
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
; Pick brightness.
a_string tonex a_string, limit(6000 * i_pick_brightness * (0.5 + i_velocity), 300, 16000), 1
a_string tonex a_string, limit(i_frequency * 12, 500, 16000), 1
; Sympathetic strings.
a_sympathetic streson a_string, i_frequency * 2, 0.6
a_sympathetic_2 streson a_string, i_frequency * 1.5, 0.5
a_string = a_string + (a_sympathetic + a_sympathetic_2) * 0.4
; Bridge buzz (jawari).
a_string = a_string + 0.6 * tanh(a_string * 6) * 0.3
a_signal = a_string
a_body1 reson a_signal, 300, 120, 1
a_signal = a_signal + 0.3 * a_body1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 106  Banjo
gk_GM_Banjo_level chnexport "gk_GM_Banjo_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Banjo_midi_dynamic_range chnexport "gk_GM_Banjo_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Banjo_space_left_to_right chnexport "gk_GM_Banjo_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Banjo_decay_scale chnexport "gk_GM_Banjo_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Banjo_pick_brightness chnexport "gk_GM_Banjo_pick_brightness", 3 ; Multiplies the pick low-pass cut-off.
gk_GM_Banjo_level init 0
gk_GM_Banjo_midi_dynamic_range init 20
gk_GM_Banjo_space_left_to_right init 0.5
gk_GM_Banjo_decay_scale init 1.0
gk_GM_Banjo_pick_brightness init 1.0
instr GM_Banjo
; General MIDI program 106: Banjo.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Banjo_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Banjo_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 60.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Banjo_level)
; Karplus-Strong string. Decay shortens with pitch, as on a real string,
; and the pick brightness follows velocity.
i_decay_scale = i(gk_GM_Banjo_decay_scale)
i_pick_brightness = i(gk_GM_Banjo_pick_brightness)
i_decay = 0.8 * i_decay_scale * limit(220.0 / i_frequency, 0.1, 6) ^ 0.7
i_decay limit i_decay, 0.3, 20
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 6
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.02
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_frequency = i_frequency
a_string pluck 1, k_frequency, i_frequency, 0, 6
; Pick brightness.
a_string tonex a_string, limit(8000 * i_pick_brightness * (0.5 + i_velocity), 300, 16000), 1
a_string tonex a_string, limit(i_frequency * 12, 500, 16000), 1
; Pick snap.
a_snap_noise rand 1
a_snap_envelope transeg 0.6 * (0.3 + i_velocity), 0.003, -4, 0
a_snap butterbp a_snap_noise * a_snap_envelope, 3000, 3000
a_string = a_string + a_snap
a_signal = a_string
a_body1 reson a_signal, 400, 150, 1
a_body2 reson a_signal, 900, 300, 1
a_signal = a_signal + 0.4 * a_body1 + 0.3 * a_body2
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 107  Shamisen
gk_GM_Shamisen_level chnexport "gk_GM_Shamisen_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Shamisen_midi_dynamic_range chnexport "gk_GM_Shamisen_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Shamisen_space_left_to_right chnexport "gk_GM_Shamisen_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Shamisen_decay_scale chnexport "gk_GM_Shamisen_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Shamisen_pick_brightness chnexport "gk_GM_Shamisen_pick_brightness", 3 ; Multiplies the pick low-pass cut-off.
gk_GM_Shamisen_level init 0
gk_GM_Shamisen_midi_dynamic_range init 20
gk_GM_Shamisen_space_left_to_right init 0.5
gk_GM_Shamisen_decay_scale init 1.0
gk_GM_Shamisen_pick_brightness init 1.0
instr GM_Shamisen
; General MIDI program 107: Shamisen.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Shamisen_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Shamisen_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 60.7
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Shamisen_level)
; Karplus-Strong string. Decay shortens with pitch, as on a real string,
; and the pick brightness follows velocity.
i_decay_scale = i(gk_GM_Shamisen_decay_scale)
i_pick_brightness = i(gk_GM_Shamisen_pick_brightness)
i_decay = 1.0 * i_decay_scale * limit(220.0 / i_frequency, 0.1, 6) ^ 0.5
i_decay limit i_decay, 0.15, 20
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 6
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.02
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_pitch transeg 0.3, 0.06, -3, 0
k_frequency = i_frequency * 2 ^ (k_pitch / 12)
a_string pluck 1, k_frequency, i_frequency, 0, 6
; Pick brightness.
a_string tonex a_string, limit(7000 * i_pick_brightness * (0.5 + i_velocity), 300, 16000), 1
a_string tonex a_string, limit(i_frequency * 12, 500, 16000), 1
; Pick snap.
a_snap_noise rand 1
a_snap_envelope transeg 0.8 * (0.3 + i_velocity), 0.003, -4, 0
a_snap butterbp a_snap_noise * a_snap_envelope, 3000, 3000
a_string = a_string + a_snap
; Bridge buzz (jawari).
a_string = a_string + 0.3 * tanh(a_string * 6) * 0.3
a_signal = a_string
a_body1 reson a_signal, 500, 200, 1
a_signal = a_signal + 0.3 * a_body1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 108  Koto
gk_GM_Koto_level chnexport "gk_GM_Koto_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Koto_midi_dynamic_range chnexport "gk_GM_Koto_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Koto_space_left_to_right chnexport "gk_GM_Koto_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Koto_decay_scale chnexport "gk_GM_Koto_decay_scale", 3 ; Multiplies the string decay time.
gk_GM_Koto_pick_brightness chnexport "gk_GM_Koto_pick_brightness", 3 ; Multiplies the pick low-pass cut-off.
gk_GM_Koto_level init 0
gk_GM_Koto_midi_dynamic_range init 20
gk_GM_Koto_space_left_to_right init 0.5
gk_GM_Koto_decay_scale init 1.0
gk_GM_Koto_pick_brightness init 1.0
instr GM_Koto
; General MIDI program 108: Koto.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Koto_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Koto_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 58.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Koto_level)
; Karplus-Strong string. Decay shortens with pitch, as on a real string,
; and the pick brightness follows velocity.
i_decay_scale = i(gk_GM_Koto_decay_scale)
i_pick_brightness = i(gk_GM_Koto_pick_brightness)
i_decay = 2.5 * i_decay_scale * limit(220.0 / i_frequency, 0.1, 6) ^ 0.5
i_decay limit i_decay, 0.15, 20
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.0015
i_exponent = 6
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.02
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_pitch transeg 0.5, 0.06, -3, 0
k_frequency = i_frequency * 2 ^ (k_pitch / 12)
a_string pluck 1, k_frequency, i_frequency, 0, 6
; Pick brightness.
a_string tonex a_string, limit(5000 * i_pick_brightness * (0.5 + i_velocity), 300, 16000), 1
a_string tonex a_string, limit(i_frequency * 12, 500, 16000), 1
; Pick snap.
a_snap_noise rand 1
a_snap_envelope transeg 0.3 * (0.3 + i_velocity), 0.003, -4, 0
a_snap butterbp a_snap_noise * a_snap_envelope, 3000, 3000
a_string = a_string + a_snap
a_signal = a_string
a_body1 reson a_signal, 250, 90, 1
a_body2 reson a_signal, 600, 200, 1
a_signal = a_signal + 0.3 * a_body1 + 0.2 * a_body2
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 109  Kalimba
gk_GM_Kalimba_level chnexport "gk_GM_Kalimba_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Kalimba_midi_dynamic_range chnexport "gk_GM_Kalimba_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Kalimba_space_left_to_right chnexport "gk_GM_Kalimba_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Kalimba_decay_scale chnexport "gk_GM_Kalimba_decay_scale", 3 ; Multiplies all partial decay times.
gk_GM_Kalimba_mallet_hardness chnexport "gk_GM_Kalimba_mallet_hardness", 3 ; Multiplies the strike noise cut-off.
gk_GM_Kalimba_level init 0
gk_GM_Kalimba_midi_dynamic_range init 20
gk_GM_Kalimba_space_left_to_right init 0.5
gk_GM_Kalimba_decay_scale init 1.0
gk_GM_Kalimba_mallet_hardness init 1.0
gi_GM_Kalimba_sine ftgen 0, 0, 65537, 10, 1
instr GM_Kalimba
; General MIDI program 109: Kalimba.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Kalimba_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Kalimba_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 64.8
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Kalimba_level)
; Modal synthesis: each partial is an exponentially decaying sinusoid
; with its own decay, plus a short filtered noise strike.
i_decay_scale = i(gk_GM_Kalimba_decay_scale)
i_mallet_hardness = i(gk_GM_Kalimba_mallet_hardness)
i_decay = 1.5 * i_decay_scale * limit(440 / i_frequency, 0.2, 5) ^ 0.5
i_decay limit i_decay, 0.08, 20.0
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.04
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

a_noise rand 1
a_strike_envelope transeg 1, 0.004, -4, 0
a_strike butterlp a_noise * a_strike_envelope, limit(2000 * i_mallet_hardness * (0.6 + 0.8 * i_velocity), 200, 18000)
a_signal = a_strike * 0.4
i_f1 = i_frequency * 1 * (1 + random:i(-0.0006, 0.0006))
i_a1 = (i_f1 < 16000 ? 1 : 0)
a_env1 transeg 1, i_decay * 1, -7, 0
a_p1 poscil i_a1 * a_env1, i_f1, gi_GM_Kalimba_sine
a_signal = a_signal + a_p1
i_f2 = i_frequency * 5.8 * (1 + random:i(-0.0006, 0.0006))
i_a2 = (i_f2 < 16000 ? 0.2 : 0)
a_env2 transeg 1, i_decay * 0.3, -7, 0
a_p2 poscil i_a2 * a_env2, i_f2, gi_GM_Kalimba_sine
a_signal = a_signal + a_p2
i_f3 = i_frequency * 13.9 * (1 + random:i(-0.0006, 0.0006))
i_a3 = (i_f3 < 16000 ? 0.05 : 0)
a_env3 transeg 1, i_decay * 0.15, -7, 0
a_p3 poscil i_a3 * a_env3, i_f3, gi_GM_Kalimba_sine
a_signal = a_signal + a_p3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 110  Bag pipe
gk_GM_Bag_pipe_level chnexport "gk_GM_Bag_pipe_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Bag_pipe_midi_dynamic_range chnexport "gk_GM_Bag_pipe_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Bag_pipe_space_left_to_right chnexport "gk_GM_Bag_pipe_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Bag_pipe_vibrato_depth chnexport "gk_GM_Bag_pipe_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Bag_pipe_vibrato_rate chnexport "gk_GM_Bag_pipe_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Bag_pipe_breath chnexport "gk_GM_Bag_pipe_breath", 3 ; Breath noise level.
gk_GM_Bag_pipe_level init 0
gk_GM_Bag_pipe_midi_dynamic_range init 20
gk_GM_Bag_pipe_space_left_to_right init 0.5
gk_GM_Bag_pipe_vibrato_depth init 0.0
gk_GM_Bag_pipe_vibrato_rate init 5
gk_GM_Bag_pipe_breath init 0.0
gi_GM_Bag_pipe_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Bag_pipe_cosine ftgen 0, 0, 65537, 11, 1
instr GM_Bag_pipe
; General MIDI program 110: Bag pipe.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Bag_pipe_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Bag_pipe_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 58.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Bag_pipe_level)
; Band-limited reed source through fixed formant resonances, with
; breath noise and a delayed vibrato.
i_breath = i(gk_GM_Bag_pipe_breath)
i_attack = 0.05
i_sustain = p3
i_release = 0.1
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.3, 0, 0.4, 1, 1, 1
k_vibrato vibr gk_GM_Bag_pipe_vibrato_depth * k_vibrato_envelope, gk_GM_Bag_pipe_vibrato_rate, gi_GM_Bag_pipe_sine
k_scoop transeg 0.0, 0.08, -3, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_scoop) / 12)
a_source = 0
i_nh1 = int(limit(sr / 2.2 / (i_frequency * 1), 1, 80))
a_voice1 gbuzz 0.6, k_frequency * 1, i_nh1, 1, 0.9, gi_GM_Bag_pipe_cosine
a_source = a_source + a_voice1
i_nh2 = int(limit(sr / 2.2 / (i_frequency * 1.003), 1, 80))
a_voice2 gbuzz 0.4, k_frequency * 1.003, i_nh2, 1, 0.9, gi_GM_Bag_pipe_cosine
a_source = a_source + a_voice2
i_nh3 = int(limit(sr / 2.2 / (i_frequency * 0.5), 1, 80))
a_voice3 gbuzz 0.35, k_frequency * 0.5, i_nh3, 1, 0.9, gi_GM_Bag_pipe_cosine
a_source = a_source + a_voice3
i_nh4 = int(limit(sr / 2.2 / (i_frequency * 0.25), 1, 80))
a_voice4 gbuzz 0.3, k_frequency * 0.25, i_nh4, 1, 0.9, gi_GM_Bag_pipe_cosine
a_source = a_source + a_voice4
a_signal = a_source * 0.3
a_formant1 reson a_source, 900, 250, 1
a_signal = a_signal + a_formant1 * 0.5
a_formant2 reson a_source, 1800, 400, 1
a_signal = a_signal + a_formant2 * 0.4
a_signal tonex a_signal, limit(i_frequency * 12, 800, 14000), 1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 111  Fiddle
gk_GM_Fiddle_level chnexport "gk_GM_Fiddle_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Fiddle_midi_dynamic_range chnexport "gk_GM_Fiddle_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Fiddle_space_left_to_right chnexport "gk_GM_Fiddle_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Fiddle_vibrato_depth chnexport "gk_GM_Fiddle_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Fiddle_vibrato_rate chnexport "gk_GM_Fiddle_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Fiddle_pressure chnexport "gk_GM_Fiddle_pressure", 3 ; Bow pressure, 1 to 5.
gk_GM_Fiddle_position chnexport "gk_GM_Fiddle_position", 3 ; Bow position, 0.025 to 0.23.
gk_GM_Fiddle_level init 0
gk_GM_Fiddle_midi_dynamic_range init 20
gk_GM_Fiddle_space_left_to_right init 0.5
gk_GM_Fiddle_vibrato_depth init 0.2
gk_GM_Fiddle_vibrato_rate init 6
gk_GM_Fiddle_pressure init 1.5
gk_GM_Fiddle_position init 0.15
gi_GM_Fiddle_sine ftgen 0, 0, 65537, 10, 1
instr GM_Fiddle
; General MIDI program 111: Fiddle.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Fiddle_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Fiddle_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 68.6
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Fiddle_level)
; Waveguide bowed string. The bow is ramped on, which keeps the model
; stable at every pitch, and a delayed vibrato is applied to the pitch.
; Reflect pitch into the usable range for this instrument.
while i_midi_key < 55 do
    i_midi_key = i_midi_key + 12
od
while i_midi_key > 100 do
    i_midi_key = i_midi_key - 12
od
i_frequency = cpsmidinn(i_midi_key)
i_attack = 0.05
i_release = 0.12
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, p3, 1, i_release, 0
k_bow cossegr 0, i_attack * 0.7, 1, p3, 1, i_release, 0
k_vibrato_envelope linseg 0, 0.1, 0, 0.5, 1, 1, 1
k_vibrato vibr gk_GM_Fiddle_vibrato_depth * k_vibrato_envelope, gk_GM_Fiddle_vibrato_rate, gi_GM_Fiddle_sine
k_frequency = i_frequency * 2 ^ (k_vibrato / 12)
a_string wgbow k_bow, k_frequency, gk_GM_Fiddle_pressure, gk_GM_Fiddle_position, 0.1, 0, gi_GM_Fiddle_sine, 20
a_string tonex a_string, limit(i_frequency * 10, 1500, 14000), 1
a_signal = a_string
a_body1 reson a_signal, 280, 80, 1
a_body2 reson a_signal, 460, 120, 1
a_body3 reson a_signal, 1000, 300, 1
a_signal = a_signal + 0.4 * a_body1 + 0.3 * a_body2 + 0.2 * a_body3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 112  Shanai
gk_GM_Shanai_level chnexport "gk_GM_Shanai_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Shanai_midi_dynamic_range chnexport "gk_GM_Shanai_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Shanai_space_left_to_right chnexport "gk_GM_Shanai_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Shanai_vibrato_depth chnexport "gk_GM_Shanai_vibrato_depth", 3 ; Vibrato depth in semitones.
gk_GM_Shanai_vibrato_rate chnexport "gk_GM_Shanai_vibrato_rate", 3 ; Vibrato rate in Hz.
gk_GM_Shanai_breath chnexport "gk_GM_Shanai_breath", 3 ; Breath noise level.
gk_GM_Shanai_level init 0
gk_GM_Shanai_midi_dynamic_range init 20
gk_GM_Shanai_space_left_to_right init 0.5
gk_GM_Shanai_vibrato_depth init 0.3
gk_GM_Shanai_vibrato_rate init 6
gk_GM_Shanai_breath init 0.03
gi_GM_Shanai_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Shanai_cosine ftgen 0, 0, 65537, 11, 1
instr GM_Shanai
; General MIDI program 112: Shanai.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Shanai_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Shanai_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 49.4
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Shanai_level)
; Band-limited reed source through fixed formant resonances, with
; breath noise and a delayed vibrato.
i_breath = i(gk_GM_Shanai_breath)
i_attack = 0.03
i_sustain = p3
i_release = 0.06
xtratim i_attack + i_release
a_envelope cossegr 0, i_attack, 1, i_sustain, 1, i_release, 0

k_vibrato_envelope linseg 0, 0.2, 0, 0.4, 1, 1, 1
k_vibrato vibr gk_GM_Shanai_vibrato_depth * k_vibrato_envelope, gk_GM_Shanai_vibrato_rate, gi_GM_Shanai_sine
k_scoop transeg 0.0, 0.08, -3, 0
k_frequency = i_frequency * 2 ^ ((k_vibrato + k_scoop) / 12)
a_source = 0
i_nh1 = int(limit(sr / 2.2 / (i_frequency * 1), 1, 80))
a_voice1 gbuzz 0.7, k_frequency * 1, i_nh1, 1, 0.95, gi_GM_Shanai_cosine
a_source = a_source + a_voice1
a_signal = a_source * 0.3
a_formant1 reson a_source, 1200, 250, 1
a_signal = a_signal + a_formant1 * 0.7
a_formant2 reson a_source, 2600, 500, 1
a_signal = a_signal + a_formant2 * 0.4
a_formant3 reson a_source, 4000, 800, 1
a_signal = a_signal + a_formant3 * 0.3
a_breath_noise rand 1
a_breath butterbp a_breath_noise, limit(i_frequency * 2, 100, 10000), limit(i_frequency * 1.5, 100, 6000)
a_signal = a_signal + a_breath * i_breath
a_signal tonex a_signal, limit(i_frequency * 16, 800, 14000), 1
a_signal butterhp a_signal, 400
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 113  Tinkle Bell
gk_GM_Tinkle_Bell_level chnexport "gk_GM_Tinkle_Bell_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Tinkle_Bell_midi_dynamic_range chnexport "gk_GM_Tinkle_Bell_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Tinkle_Bell_space_left_to_right chnexport "gk_GM_Tinkle_Bell_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Tinkle_Bell_decay_scale chnexport "gk_GM_Tinkle_Bell_decay_scale", 3 ; Multiplies all partial decay times.
gk_GM_Tinkle_Bell_mallet_hardness chnexport "gk_GM_Tinkle_Bell_mallet_hardness", 3 ; Multiplies the strike noise cut-off.
gk_GM_Tinkle_Bell_level init 0
gk_GM_Tinkle_Bell_midi_dynamic_range init 20
gk_GM_Tinkle_Bell_space_left_to_right init 0.5
gk_GM_Tinkle_Bell_decay_scale init 1.0
gk_GM_Tinkle_Bell_mallet_hardness init 1.0
gi_GM_Tinkle_Bell_sine ftgen 0, 0, 65537, 10, 1
instr GM_Tinkle_Bell
; General MIDI program 113: Tinkle Bell.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Tinkle_Bell_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Tinkle_Bell_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 74.0
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Tinkle_Bell_level)
; Modal synthesis: each partial is an exponentially decaying sinusoid
; with its own decay, plus a short filtered noise strike.
i_decay_scale = i(gk_GM_Tinkle_Bell_decay_scale)
i_mallet_hardness = i(gk_GM_Tinkle_Bell_mallet_hardness)
i_decay = 2.0 * i_decay_scale * limit(2000 / i_frequency, 0.2, 5) ^ 0.3
i_decay limit i_decay, 0.08, 20.0
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.04
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

a_noise rand 1
a_strike_envelope transeg 1, 0.002, -4, 0
a_strike butterlp a_noise * a_strike_envelope, limit(8000 * i_mallet_hardness * (0.6 + 0.8 * i_velocity), 200, 18000)
a_signal = a_strike * 0.3
i_f1 = i_frequency * 0.56 * (1 + random:i(-0.0006, 0.0006))
i_a1 = (i_f1 < 16000 ? 0.4 : 0)
a_env1 transeg 1, i_decay * 1.0, -7, 0
a_p1 poscil i_a1 * a_env1, i_f1, gi_GM_Tinkle_Bell_sine
a_signal = a_signal + a_p1
i_f2 = i_frequency * 0.92 * (1 + random:i(-0.0006, 0.0006))
i_a2 = (i_f2 < 16000 ? 0.27 : 0)
a_env2 transeg 1, i_decay * 0.9, -7, 0
a_p2 poscil i_a2 * a_env2, i_f2, gi_GM_Tinkle_Bell_sine
a_signal = a_signal + a_p2
i_f3 = i_frequency * 1.19 * (1 + random:i(-0.0006, 0.0006))
i_a3 = (i_f3 < 16000 ? 0.4 : 0)
a_env3 transeg 1, i_decay * 0.65, -7, 0
a_p3 poscil i_a3 * a_env3, i_f3, gi_GM_Tinkle_Bell_sine
a_signal = a_signal + a_p3
i_f4 = i_frequency * 1.7 * (1 + random:i(-0.0006, 0.0006))
i_a4 = (i_f4 < 16000 ? 0.7 : 0)
a_env4 transeg 1, i_decay * 0.55, -7, 0
a_p4 poscil i_a4 * a_env4, i_f4, gi_GM_Tinkle_Bell_sine
a_signal = a_signal + a_p4
i_f5 = i_frequency * 2.0 * (1 + random:i(-0.0006, 0.0006))
i_a5 = (i_f5 < 16000 ? 1.0 : 0)
a_env5 transeg 1, i_decay * 0.33, -7, 0
a_p5 poscil i_a5 * a_env5, i_f5, gi_GM_Tinkle_Bell_sine
a_signal = a_signal + a_p5
i_f6 = i_frequency * 2.74 * (1 + random:i(-0.0006, 0.0006))
i_a6 = (i_f6 < 16000 ? 0.65 : 0)
a_env6 transeg 1, i_decay * 0.35, -7, 0
a_p6 poscil i_a6 * a_env6, i_f6, gi_GM_Tinkle_Bell_sine
a_signal = a_signal + a_p6
i_f7 = i_frequency * 3.0 * (1 + random:i(-0.0006, 0.0006))
i_a7 = (i_f7 < 16000 ? 0.55 : 0)
a_env7 transeg 1, i_decay * 0.25, -7, 0
a_p7 poscil i_a7 * a_env7, i_f7, gi_GM_Tinkle_Bell_sine
a_signal = a_signal + a_p7
i_f8 = i_frequency * 3.76 * (1 + random:i(-0.0006, 0.0006))
i_a8 = (i_f8 < 16000 ? 0.5 : 0)
a_env8 transeg 1, i_decay * 0.2, -7, 0
a_p8 poscil i_a8 * a_env8, i_f8, gi_GM_Tinkle_Bell_sine
a_signal = a_signal + a_p8
i_f9 = i_frequency * 4.07 * (1 + random:i(-0.0006, 0.0006))
i_a9 = (i_f9 < 16000 ? 0.5 : 0)
a_env9 transeg 1, i_decay * 0.15, -7, 0
a_p9 poscil i_a9 * a_env9, i_f9, gi_GM_Tinkle_Bell_sine
a_signal = a_signal + a_p9
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 114  Agogo
gk_GM_Agogo_level chnexport "gk_GM_Agogo_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Agogo_midi_dynamic_range chnexport "gk_GM_Agogo_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Agogo_space_left_to_right chnexport "gk_GM_Agogo_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Agogo_decay_scale chnexport "gk_GM_Agogo_decay_scale", 3 ; Multiplies all partial decay times.
gk_GM_Agogo_mallet_hardness chnexport "gk_GM_Agogo_mallet_hardness", 3 ; Multiplies the strike noise cut-off.
gk_GM_Agogo_level init 0
gk_GM_Agogo_midi_dynamic_range init 20
gk_GM_Agogo_space_left_to_right init 0.5
gk_GM_Agogo_decay_scale init 1.0
gk_GM_Agogo_mallet_hardness init 1.0
gi_GM_Agogo_sine ftgen 0, 0, 65537, 10, 1
instr GM_Agogo
; General MIDI program 114: Agogo.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Agogo_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Agogo_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 67.4
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Agogo_level)
; Modal synthesis: each partial is an exponentially decaying sinusoid
; with its own decay, plus a short filtered noise strike.
i_decay_scale = i(gk_GM_Agogo_decay_scale)
i_mallet_hardness = i(gk_GM_Agogo_mallet_hardness)
i_decay = 0.6 * i_decay_scale * limit(800 / i_frequency, 0.2, 5) ^ 0.4
i_decay limit i_decay, 0.08, 20.0
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.04
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

a_noise rand 1
a_strike_envelope transeg 1, 0.003, -4, 0
a_strike butterlp a_noise * a_strike_envelope, limit(5000 * i_mallet_hardness * (0.6 + 0.8 * i_velocity), 200, 18000)
a_signal = a_strike * 0.4
i_f1 = i_frequency * 1 * (1 + random:i(-0.0006, 0.0006))
i_a1 = (i_f1 < 16000 ? 1 : 0)
a_env1 transeg 1, i_decay * 1, -7, 0
a_p1 poscil i_a1 * a_env1, i_f1, gi_GM_Agogo_sine
a_signal = a_signal + a_p1
i_f2 = i_frequency * 2.5 * (1 + random:i(-0.0006, 0.0006))
i_a2 = (i_f2 < 16000 ? 0.5 : 0)
a_env2 transeg 1, i_decay * 0.6, -7, 0
a_p2 poscil i_a2 * a_env2, i_f2, gi_GM_Agogo_sine
a_signal = a_signal + a_p2
i_f3 = i_frequency * 4.1 * (1 + random:i(-0.0006, 0.0006))
i_a3 = (i_f3 < 16000 ? 0.2 : 0)
a_env3 transeg 1, i_decay * 0.4, -7, 0
a_p3 poscil i_a3 * a_env3, i_f3, gi_GM_Agogo_sine
a_signal = a_signal + a_p3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 115  Steel Drums
gk_GM_Steel_Drums_level chnexport "gk_GM_Steel_Drums_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Steel_Drums_midi_dynamic_range chnexport "gk_GM_Steel_Drums_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Steel_Drums_space_left_to_right chnexport "gk_GM_Steel_Drums_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Steel_Drums_decay_scale chnexport "gk_GM_Steel_Drums_decay_scale", 3 ; Multiplies the decay time.
gk_GM_Steel_Drums_level init 0
gk_GM_Steel_Drums_midi_dynamic_range init 20
gk_GM_Steel_Drums_space_left_to_right init 0.5
gk_GM_Steel_Drums_decay_scale init 1.0
gi_GM_Steel_Drums_sine ftgen 0, 0, 65537, 10, 1
instr GM_Steel_Drums
; General MIDI program 115: Steel Drums.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Steel_Drums_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Steel_Drums_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 66.4
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Steel_Drums_level)
; Steel pan: the FM index blooms just after the strike, and partials at
; the octave and twelfth ring with their own decays.
i_decay_scale = i(gk_GM_Steel_Drums_decay_scale)
i_decay = 2.2 * i_decay_scale * limit(440 / i_frequency, 0.3, 3) ^ 0.5
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.002
i_exponent = 5
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.05
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_index transeg 0.3, 0.03, 2, 1.6 * (0.4 + i_velocity), 0.4, -3, 0.2, i_decay, -1, 0
k_bend transeg 0.25, 0.05, -3, 0
k_frequency = i_frequency * 2 ^ (k_bend / 12)
a_fundamental foscili 1, k_frequency, 1, 1, k_index, gi_GM_Steel_Drums_sine
a_octave_envelope transeg 0.5, i_decay * 0.6, -6, 0
a_octave poscil a_octave_envelope, k_frequency * 2.003, gi_GM_Steel_Drums_sine
a_twelfth_envelope transeg 0.25, i_decay * 0.4, -6, 0
a_twelfth poscil a_twelfth_envelope, k_frequency * 3.01, gi_GM_Steel_Drums_sine
a_noise rand 1
a_strike_envelope transeg 0.3, 0.004, -4, 0
a_strike butterbp a_noise * a_strike_envelope, 2500, 2500
a_signal = a_fundamental + a_octave + a_twelfth + a_strike
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 116  Woodblock
gk_GM_Woodblock_level chnexport "gk_GM_Woodblock_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Woodblock_midi_dynamic_range chnexport "gk_GM_Woodblock_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Woodblock_space_left_to_right chnexport "gk_GM_Woodblock_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Woodblock_decay_scale chnexport "gk_GM_Woodblock_decay_scale", 3 ; Multiplies all partial decay times.
gk_GM_Woodblock_mallet_hardness chnexport "gk_GM_Woodblock_mallet_hardness", 3 ; Multiplies the strike noise cut-off.
gk_GM_Woodblock_level init 0
gk_GM_Woodblock_midi_dynamic_range init 20
gk_GM_Woodblock_space_left_to_right init 0.5
gk_GM_Woodblock_decay_scale init 1.0
gk_GM_Woodblock_mallet_hardness init 1.0
gi_GM_Woodblock_sine ftgen 0, 0, 65537, 10, 1
instr GM_Woodblock
; General MIDI program 116: Woodblock.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Woodblock_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Woodblock_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 64.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Woodblock_level)
; Modal synthesis: each partial is an exponentially decaying sinusoid
; with its own decay, plus a short filtered noise strike.
i_decay_scale = i(gk_GM_Woodblock_decay_scale)
i_mallet_hardness = i(gk_GM_Woodblock_mallet_hardness)
i_decay = 0.12 * i_decay_scale * limit(800 / i_frequency, 0.2, 5) ^ 0.3
i_decay limit i_decay, 0.06, 20.0
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.04
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

a_noise rand 1
a_strike_envelope transeg 1, 0.003, -4, 0
a_strike butterlp a_noise * a_strike_envelope, limit(3000 * i_mallet_hardness * (0.6 + 0.8 * i_velocity), 200, 18000)
a_signal = a_strike * 0.8
i_f1 = i_frequency * 1 * (1 + random:i(-0.0006, 0.0006))
i_a1 = (i_f1 < 16000 ? 1 : 0)
a_env1 transeg 1, i_decay * 1, -7, 0
a_p1 poscil i_a1 * a_env1, i_f1, gi_GM_Woodblock_sine
a_signal = a_signal + a_p1
i_f2 = i_frequency * 2.1 * (1 + random:i(-0.0006, 0.0006))
i_a2 = (i_f2 < 16000 ? 0.3 : 0)
a_env2 transeg 1, i_decay * 0.5, -7, 0
a_p2 poscil i_a2 * a_env2, i_f2, gi_GM_Woodblock_sine
a_signal = a_signal + a_p2
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 117  Taiko Drum
gk_GM_Taiko_Drum_level chnexport "gk_GM_Taiko_Drum_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Taiko_Drum_midi_dynamic_range chnexport "gk_GM_Taiko_Drum_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Taiko_Drum_space_left_to_right chnexport "gk_GM_Taiko_Drum_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Taiko_Drum_decay_scale chnexport "gk_GM_Taiko_Drum_decay_scale", 3 ; Multiplies the decay time.
gk_GM_Taiko_Drum_level init 0
gk_GM_Taiko_Drum_midi_dynamic_range init 20
gk_GM_Taiko_Drum_space_left_to_right init 0.5
gk_GM_Taiko_Drum_decay_scale init 1.0
gi_GM_Taiko_Drum_sine ftgen 0, 0, 65537, 10, 1
instr GM_Taiko_Drum
; General MIDI program 117: Taiko Drum.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Taiko_Drum_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Taiko_Drum_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 67.5
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Taiko_Drum_level)
; Drum head: inharmonic partials whose pitch drops quickly after the
; strike, plus a noise burst for the stick or mallet.
i_decay_scale = i(gk_GM_Taiko_Drum_decay_scale)
i_decay = 1.5 * i_decay_scale * limit(60 / i_frequency, 0.3, 3) ^ 0.5
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.05
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_drop transeg 0.6, 0.08, -3, 0
k_frequency = i_frequency * 1.0 * 2 ^ (k_drop / 12)
a_noise rand 1
a_noise_envelope transeg 1, 0.08, -4, 0
a_strike butterbp a_noise * a_noise_envelope, 800, 800
a_click_envelope transeg 0.4, 0.002, -3, 0
a_signal = a_strike * 0.6 + a_noise * a_click_envelope
a_env1 transeg 1, i_decay * 1, -6, 0
a_p1 poscil 1 * a_env1, k_frequency * 1, gi_GM_Taiko_Drum_sine
a_signal = a_signal + a_p1
a_env2 transeg 1, i_decay * 0.6, -6, 0
a_p2 poscil 0.5 * a_env2, k_frequency * 1.6, gi_GM_Taiko_Drum_sine
a_signal = a_signal + a_p2
a_env3 transeg 1, i_decay * 0.4, -6, 0
a_p3 poscil 0.3 * a_env3, k_frequency * 2.3, gi_GM_Taiko_Drum_sine
a_signal = a_signal + a_p3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 118  Melodic Tom
gk_GM_Melodic_Tom_level chnexport "gk_GM_Melodic_Tom_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Melodic_Tom_midi_dynamic_range chnexport "gk_GM_Melodic_Tom_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Melodic_Tom_space_left_to_right chnexport "gk_GM_Melodic_Tom_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Melodic_Tom_decay_scale chnexport "gk_GM_Melodic_Tom_decay_scale", 3 ; Multiplies the decay time.
gk_GM_Melodic_Tom_level init 0
gk_GM_Melodic_Tom_midi_dynamic_range init 20
gk_GM_Melodic_Tom_space_left_to_right init 0.5
gk_GM_Melodic_Tom_decay_scale init 1.0
gi_GM_Melodic_Tom_sine ftgen 0, 0, 65537, 10, 1
instr GM_Melodic_Tom
; General MIDI program 118: Melodic Tom.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Melodic_Tom_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Melodic_Tom_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 66.9
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Melodic_Tom_level)
; Drum head: inharmonic partials whose pitch drops quickly after the
; strike, plus a noise burst for the stick or mallet.
i_decay_scale = i(gk_GM_Melodic_Tom_decay_scale)
i_decay = 0.8 * i_decay_scale * limit(110 / i_frequency, 0.3, 3) ^ 0.5
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.05
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_drop transeg 2.0, 0.1, -3, 0
k_frequency = i_frequency * 1.0 * 2 ^ (k_drop / 12)
a_noise rand 1
a_noise_envelope transeg 1, 0.08, -4, 0
a_strike butterbp a_noise * a_noise_envelope, 1500, 1500
a_click_envelope transeg 0.2, 0.002, -3, 0
a_signal = a_strike * 0.4 + a_noise * a_click_envelope
a_env1 transeg 1, i_decay * 1, -6, 0
a_p1 poscil 1 * a_env1, k_frequency * 1, gi_GM_Melodic_Tom_sine
a_signal = a_signal + a_p1
a_env2 transeg 1, i_decay * 0.5, -6, 0
a_p2 poscil 0.5 * a_env2, k_frequency * 1.5, gi_GM_Melodic_Tom_sine
a_signal = a_signal + a_p2
a_env3 transeg 1, i_decay * 0.3, -6, 0
a_p3 poscil 0.25 * a_env3, k_frequency * 2.2, gi_GM_Melodic_Tom_sine
a_signal = a_signal + a_p3
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 119  Synth Drum
gk_GM_Synth_Drum_level chnexport "gk_GM_Synth_Drum_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Synth_Drum_midi_dynamic_range chnexport "gk_GM_Synth_Drum_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Synth_Drum_space_left_to_right chnexport "gk_GM_Synth_Drum_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Synth_Drum_decay_scale chnexport "gk_GM_Synth_Drum_decay_scale", 3 ; Multiplies the decay time.
gk_GM_Synth_Drum_level init 0
gk_GM_Synth_Drum_midi_dynamic_range init 20
gk_GM_Synth_Drum_space_left_to_right init 0.5
gk_GM_Synth_Drum_decay_scale init 1.0
gi_GM_Synth_Drum_sine ftgen 0, 0, 65537, 10, 1
instr GM_Synth_Drum
; General MIDI program 119: Synth Drum.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Synth_Drum_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Synth_Drum_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 64.0
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Synth_Drum_level)
; Drum head: inharmonic partials whose pitch drops quickly after the
; strike, plus a noise burst for the stick or mallet.
i_decay_scale = i(gk_GM_Synth_Drum_decay_scale)
i_decay = 0.6 * i_decay_scale * limit(110 / i_frequency, 0.3, 3) ^ 0.5
; Make indefinite notes last no longer than the physical decay.
i_physical_decay = i_decay
if p3 == -1 then
i_duration = i_physical_decay
else
i_duration = p3
endif
i_attack = 0.001
i_exponent = 4
; The physical envelope has a fixed decay that ends at zero.
a_physical_envelope transeg 0, i_attack, i_exponent, 1, i_physical_decay, -i_exponent, 0
; The de-clicking envelope damps the note when it is released.
i_declick_release = 0.05
xtratim i_declick_release + 0.05
a_declicking_envelope cossegr 0, i_attack, 1, i_duration, 1, i_declick_release, 0
a_envelope = a_physical_envelope * a_declicking_envelope

k_drop transeg 12, 0.15, -3, 0
k_frequency = i_frequency * 1.0 * 2 ^ (k_drop / 12)
a_noise rand 1
a_noise_envelope transeg 1, 0.08, -4, 0
a_strike butterbp a_noise * a_noise_envelope, 3000, 3000
a_click_envelope transeg 0.3, 0.002, -3, 0
a_signal = a_strike * 0.3 + a_noise * a_click_envelope
a_env1 transeg 1, i_decay * 1, -6, 0
a_p1 poscil 1 * a_env1, k_frequency * 1, gi_GM_Synth_Drum_sine
a_signal = a_signal + a_p1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 120  Reverse Cymbal
gk_GM_Reverse_Cymbal_level chnexport "gk_GM_Reverse_Cymbal_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Reverse_Cymbal_midi_dynamic_range chnexport "gk_GM_Reverse_Cymbal_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Reverse_Cymbal_space_left_to_right chnexport "gk_GM_Reverse_Cymbal_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Reverse_Cymbal_level init 0
gk_GM_Reverse_Cymbal_midi_dynamic_range init 20
gk_GM_Reverse_Cymbal_space_left_to_right init 0.5
instr GM_Reverse_Cymbal
; General MIDI program 120: Reverse Cymbal.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Reverse_Cymbal_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Reverse_Cymbal_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 64.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Reverse_Cymbal_level)
; Reverse cymbal: a metallic wash that swells exponentially and stops.
i_duration = (p3 > 0 ? p3 : 1.5)
p3 = i_duration
a_envelope transeg 0.002, i_duration - 0.02, 4, 1, 0.02, -3, 0
a_m1 vco2 1, 205.3, 10
a_m2 vco2 1, 304.4, 10
a_m3 vco2 1, 369.6, 10
a_m4 vco2 1, 522.7, 10
a_m5 vco2 1, 540.0, 10
a_m6 vco2 1, 800.0, 10
a_metal = (a_m1 + a_m2 + a_m3 + a_m4 + a_m5 + a_m6) / 6
a_metal butterbp a_metal, 7000, 6000
a_metal butterhp a_metal, 4000
a_noise rand 1
a_wash butterbp a_noise, 6000, 7000
a_signal = a_metal * 3 + a_wash
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 121  Guitar Fret Noise
gk_GM_Guitar_Fret_Noise_level chnexport "gk_GM_Guitar_Fret_Noise_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Guitar_Fret_Noise_midi_dynamic_range chnexport "gk_GM_Guitar_Fret_Noise_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Guitar_Fret_Noise_space_left_to_right chnexport "gk_GM_Guitar_Fret_Noise_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Guitar_Fret_Noise_level init 0
gk_GM_Guitar_Fret_Noise_midi_dynamic_range init 20
gk_GM_Guitar_Fret_Noise_space_left_to_right init 0.5
instr GM_Guitar_Fret_Noise
; General MIDI program 121: Guitar Fret Noise.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Guitar_Fret_Noise_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Guitar_Fret_Noise_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 52.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Guitar_Fret_Noise_level)
; Guitar fret noise: a short squeak sliding on a wound string.
i_duration = 0.25
p3 = i_duration
a_envelope transeg 0, 0.01, 2, 1, 0.2, -3, 0
k_slide transeg 1800, 0.2, -2, 1200
a_noise rand 1
a_squeak_1 reson a_noise, k_slide, 60, 1
a_squeak_2 reson a_noise, k_slide * 1.5, 90, 1
a_squeak_3 reson a_noise, k_slide * 2.2, 150, 1
a_rub butterbp a_noise, 400, 300
a_signal = (a_squeak_1 + a_squeak_2 * 0.6 + a_squeak_3 * 0.4) * 2 + a_rub * 0.4
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 122  Breath Noise
gk_GM_Breath_Noise_level chnexport "gk_GM_Breath_Noise_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Breath_Noise_midi_dynamic_range chnexport "gk_GM_Breath_Noise_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Breath_Noise_space_left_to_right chnexport "gk_GM_Breath_Noise_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Breath_Noise_level init 0
gk_GM_Breath_Noise_midi_dynamic_range init 20
gk_GM_Breath_Noise_space_left_to_right init 0.5
instr GM_Breath_Noise
; General MIDI program 122: Breath Noise.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Breath_Noise_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Breath_Noise_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 56.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Breath_Noise_level)
; Breath noise: a short exhalation shaped by a mouth formant.
i_duration = (p3 > 0 ? p3 : 0.5)
p3 = i_duration
a_envelope transeg 0, i_duration * 0.3, 2, 1, i_duration * 0.7, -3, 0
a_noise pinkish 1
a_breath_1 butterbp a_noise, 1500, 1200
a_breath_2 butterbp a_noise, 3500, 2500
a_signal = a_breath_1 * 2 + a_breath_2
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 123  Seashore
gk_GM_Seashore_level chnexport "gk_GM_Seashore_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Seashore_midi_dynamic_range chnexport "gk_GM_Seashore_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Seashore_space_left_to_right chnexport "gk_GM_Seashore_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Seashore_level init 0
gk_GM_Seashore_midi_dynamic_range init 20
gk_GM_Seashore_space_left_to_right init 0.5
gi_GM_Seashore_sine ftgen 0, 0, 65537, 10, 1
instr GM_Seashore
; General MIDI program 123: Seashore.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Seashore_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Seashore_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 63.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Seashore_level)
; Seashore: waves of filtered noise rolling in slowly.
i_duration = (p3 > 0 ? p3 : 6)
p3 = i_duration
a_envelope cosseg 0, 0.5, 1, i_duration - 1.5, 1, 1, 0
a_noise pinkish 1
k_wave_1 poscil 0.5, 0.09, gi_GM_Seashore_sine
k_wave_2 poscil 0.5, 0.13, gi_GM_Seashore_sine
k_wave = 0.5 + 0.5 * k_wave_1 + 0.5 * k_wave_2
k_wave limit k_wave, 0.05, 1
k_cutoff = 600 + 3000 * k_wave
a_waves butterlp a_noise, k_cutoff
a_waves = a_waves * (0.3 + k_wave)
a_hiss butterbp a_noise, 5000, 4000
a_signal = a_waves * 1.5 + a_hiss * 0.15 * k_wave
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 124  Bird Tweet
gk_GM_Bird_Tweet_level chnexport "gk_GM_Bird_Tweet_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Bird_Tweet_midi_dynamic_range chnexport "gk_GM_Bird_Tweet_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Bird_Tweet_space_left_to_right chnexport "gk_GM_Bird_Tweet_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Bird_Tweet_level init 0
gk_GM_Bird_Tweet_midi_dynamic_range init 20
gk_GM_Bird_Tweet_space_left_to_right init 0.5
gi_GM_Bird_Tweet_sine ftgen 0, 0, 65537, 10, 1
instr GM_Bird_Tweet
; General MIDI program 124: Bird Tweet.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Bird_Tweet_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Bird_Tweet_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 63.8
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Bird_Tweet_level)
; Bird tweet: fast chirps with randomized sweeps.
i_duration = (p3 > 0 ? p3 : 0.8)
p3 = i_duration
a_envelope cosseg 0, 0.01, 1, i_duration - 0.03, 1, 0.02, 0
k_chirp_rate = 7 + 5 * i_velocity
k_chirp phasor k_chirp_rate
k_sweep randh 1, k_chirp_rate
k_sweep = 0.5 + 0.5 * k_sweep
k_pitch = i_frequency * (1 + 0.8 * k_sweep * (1 - k_chirp) + 0.2 * k_chirp)
k_gate = (k_chirp < 0.55 ? 1 : 0)
k_gate port k_gate, 0.004
a_tweet poscil 1, k_pitch, gi_GM_Bird_Tweet_sine
a_tweet_2 poscil 0.2, k_pitch * 2, gi_GM_Bird_Tweet_sine
a_signal = (a_tweet + a_tweet_2) * k_gate
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 125  Telephone Ring
gk_GM_Telephone_Ring_level chnexport "gk_GM_Telephone_Ring_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Telephone_Ring_midi_dynamic_range chnexport "gk_GM_Telephone_Ring_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Telephone_Ring_space_left_to_right chnexport "gk_GM_Telephone_Ring_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Telephone_Ring_level init 0
gk_GM_Telephone_Ring_midi_dynamic_range init 20
gk_GM_Telephone_Ring_space_left_to_right init 0.5
gi_GM_Telephone_Ring_sine ftgen 0, 0, 65537, 10, 1
instr GM_Telephone_Ring
; General MIDI program 125: Telephone Ring.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Telephone_Ring_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Telephone_Ring_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 64.2
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Telephone_Ring_level)
; Telephone ring: two bell tones modulated at 20 Hz, in one-second
; bursts.
i_duration = (p3 > 0 ? p3 : 2)
p3 = i_duration
a_envelope cosseg 0, 0.01, 1, i_duration - 0.03, 1, 0.02, 0
k_ring_cycle phasor 1 / 2
k_ring_gate = (k_ring_cycle < 0.5 ? 1 : 0)
k_ring_gate port k_ring_gate, 0.01
k_clapper poscil 0.5, 20, gi_GM_Telephone_Ring_sine
k_clapper = 0.5 + k_clapper
a_bell_1 poscil 0.5, 1000, gi_GM_Telephone_Ring_sine
a_bell_2 poscil 0.5, 1250, gi_GM_Telephone_Ring_sine
a_bell_3 poscil 0.15, 2060, gi_GM_Telephone_Ring_sine
a_signal = (a_bell_1 + a_bell_2 + a_bell_3) * k_clapper * k_ring_gate
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 126  Helicopter
gk_GM_Helicopter_level chnexport "gk_GM_Helicopter_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Helicopter_midi_dynamic_range chnexport "gk_GM_Helicopter_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Helicopter_space_left_to_right chnexport "gk_GM_Helicopter_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Helicopter_level init 0
gk_GM_Helicopter_midi_dynamic_range init 20
gk_GM_Helicopter_space_left_to_right init 0.5
gi_GM_Helicopter_sine ftgen 0, 0, 65537, 10, 1
instr GM_Helicopter
; General MIDI program 126: Helicopter.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Helicopter_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Helicopter_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 63.6
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Helicopter_level)
; Helicopter: pulsed low-passed noise for the rotor, plus a low thump.
i_duration = (p3 > 0 ? p3 : 4)
p3 = i_duration
a_envelope cosseg 0, 0.3, 1, i_duration - 0.6, 1, 0.3, 0
k_rotor_rate = 11 + 3 * i_velocity
k_rotor phasor k_rotor_rate
k_blade = (k_rotor < 0.3 ? 1 - k_rotor / 0.3 : 0)
k_blade port k_blade, 0.003
a_noise rand 1
a_rotor butterlp a_noise, 500 + 1500 * k_blade
a_rotor = a_rotor * (0.2 + k_blade)
a_thump poscil 0.4 * k_blade, 55, gi_GM_Helicopter_sine
a_turbine butterbp a_noise, 2500, 2000
a_signal = a_rotor * 2 + a_thump + a_turbine * 0.1
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 127  Applause
gk_GM_Applause_level chnexport "gk_GM_Applause_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Applause_midi_dynamic_range chnexport "gk_GM_Applause_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Applause_space_left_to_right chnexport "gk_GM_Applause_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Applause_level init 0
gk_GM_Applause_midi_dynamic_range init 20
gk_GM_Applause_space_left_to_right init 0.5
instr GM_Applause
; General MIDI program 127: Applause.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Applause_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Applause_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 70.7
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Applause_level)
; Applause: dense random claps through two resonances, swelling in.
i_duration = (p3 > 0 ? p3 : 4)
p3 = i_duration
a_envelope cosseg 0, 0.6, 1, i_duration - 1.4, 1, 0.8, 0
a_claps dust2 1, 400 + 300 * i_velocity
a_claps_1 butterbp a_claps, 1200, 900
a_claps_2 butterbp a_claps, 2800, 2000
a_noise pinkish 1
a_crowd butterbp a_noise, 900, 800
a_signal = (a_claps_1 + a_claps_2 * 0.7) * 6 + a_crowd * 0.4
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; 128  Gunshot
gk_GM_Gunshot_level chnexport "gk_GM_Gunshot_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Gunshot_midi_dynamic_range chnexport "gk_GM_Gunshot_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Gunshot_space_left_to_right chnexport "gk_GM_Gunshot_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Gunshot_level init 0
gk_GM_Gunshot_midi_dynamic_range init 20
gk_GM_Gunshot_space_left_to_right init 0.5
gi_GM_Gunshot_sine ftgen 0, 0, 65537, 10, 1
instr GM_Gunshot
; General MIDI program 128: Gunshot.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Gunshot_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Gunshot_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 63.1
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Gunshot_level)
; Gunshot: an explosive noise burst, a low thump, and a short tail.
i_duration = 0.9
p3 = i_duration
a_envelope transeg 1, 0.9, -3, 0
a_noise rand 1
a_burst_envelope transeg 1, 0.03, -3, 0.2, 0.5, -4, 0
a_burst butterlp a_noise * a_burst_envelope, 6000
k_thump_pitch transeg 160, 0.08, -3, 45
a_thump_envelope transeg 1, 0.35, -4, 0
a_thump poscil a_thump_envelope, k_thump_pitch, gi_GM_Gunshot_sine
a_tail_envelope transeg 0, 0.02, 0, 0.5, 0.7, -3, 0
a_tail butterbp a_noise * a_tail_envelope, 800, 1200
a_signal = tanh((a_burst * 1.5 + a_thump + a_tail) * 1.5)
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_amplitude * a_envelope * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; Percussion (channel 10)  Standard Kit
gk_GM_Standard_Kit_level chnexport "gk_GM_Standard_Kit_level", 3 ; Gain in dB applied to the instrument output.
gk_GM_Standard_Kit_midi_dynamic_range chnexport "gk_GM_Standard_Kit_midi_dynamic_range", 3 ; Range in dB between MIDI velocity 0 and 127.
gk_GM_Standard_Kit_space_left_to_right chnexport "gk_GM_Standard_Kit_space_left_to_right", 3 ; Default pan position when p7 is 0.
gk_GM_Standard_Kit_decay_scale chnexport "gk_GM_Standard_Kit_decay_scale", 3 ; Multiplies every drum's decay time.
gk_GM_Standard_Kit_snare_wires chnexport "gk_GM_Standard_Kit_snare_wires", 3 ; Level of the snare wires relative to the shell.
gk_GM_Standard_Kit_cymbal_brightness chnexport "gk_GM_Standard_Kit_cymbal_brightness", 3 ; Multiplies the cymbal band-pass centre.
gk_GM_Standard_Kit_level init 0
gk_GM_Standard_Kit_midi_dynamic_range init 20
gk_GM_Standard_Kit_space_left_to_right init 0.5
gk_GM_Standard_Kit_decay_scale init 1.0
gk_GM_Standard_Kit_snare_wires init 1.0
gk_GM_Standard_Kit_cymbal_brightness init 1.0
gi_GM_Standard_Kit_sine ftgen 0, 0, 65537, 10, 1
gi_GM_Standard_Kit_cosine ftgen 0, 0, 65537, 11, 1
; Per-drum balance in dB, indexed by General MIDI key - 35 (35..81).
gi_GM_Standard_Kit_balance ftgen 0, 0, 64, -2, -0.2, 0.0, -21.1, -1.9, -10.3, -1.6, -3.0, -15.9, -3.0, -15.2, -3.0, -12.9, -3.0, -3.0, -9.2, -3.3, -10.0, -9.1, -8.2, -11.3, -12.4, -9.9, -9.7, -21.3, -8.6, -5.9, -5.9, -8.0, -5.0, -5.0, -4.1, -4.2, -15.9, -15.7, -15.1, -13.6, -10.9, -11.0, -10.9, -10.8, -25.2, -25.4, -26.6, -2.1, -2.7, -16.6, -16.2
instr GM_Standard_Kit
; General MIDI percussion: the key (p4) selects the drum, 35 to 81.
i_instrument = p1
i_time = p2
i_duration = p3
i_midi_key = p4
i_midi_dynamic_range = i(gk_GM_Standard_Kit_midi_dynamic_range)
i_midi_velocity = p5 * i_midi_dynamic_range / 127 + (63.6 - i_midi_dynamic_range / 2)
k_space_front_to_back = p6
if p7 == 0 then
k_space_left_to_right = gk_GM_Standard_Kit_space_left_to_right
else
k_space_left_to_right = p7
endif
k_space_bottom_to_top = p8
i_phase = p9
i_frequency = cpsmidinn(i_midi_key)
; Velocity as a fraction, used by the synthesis for timbre changes.
i_velocity = p5 / 127
; Adjust the following value until "overall amps" at the end of performance is about -6 dB.
i_level_correction = 61.8
i_normalization = ampdb(-i_level_correction) / 2
i_amplitude = ampdb(i_midi_velocity) * i_normalization
k_gain = ampdb(gk_GM_Standard_Kit_level)

; Select the drum from the General MIDI percussion key map (35..81).
i_key = int(i_midi_key)
while i_key < 35 do
    i_key = i_key + 12
od
while i_key > 81 do
    i_key = i_key - 12
od
i_decay_scale = i(gk_GM_Standard_Kit_decay_scale)
i_snare_wires = i(gk_GM_Standard_Kit_snare_wires)
i_cymbal_brightness = i(gk_GM_Standard_Kit_cymbal_brightness)
; Each group below sets i_engine and its parameters.
; 1 kick, 2 snare, 3 side stick, 4 clap, 5 tom/bongo/conga/timbale,
; 6 hi-hat/cymbal (metallic noise), 7 cowbell/agogo/triangle (metal bars),
; 8 PhISEM shakers, 9 wood (claves, blocks), 10 vibraslap, 11 whistle,
; 12 cuica.
i_engine = 0
i_decay = 0.3
i_pitch = 100
i_pitch_drop = 0
i_tone = 0.5
i_noise = 0.5
i_noise_hz = 3000
i_bandwidth = 2000
i_level = 1
if i_key == 35 then ; Acoustic Bass Drum
    i_engine = 1
    i_pitch = 48
    i_pitch_drop = 9
    i_decay = 0.7
    i_noise = 0.15
elseif i_key == 36 then ; Bass Drum 1
    i_engine = 1
    i_pitch = 56
    i_pitch_drop = 14
    i_decay = 0.42
    i_noise = 0.3
elseif i_key == 37 then ; Side Stick
    i_engine = 3
    i_pitch = 820
    i_decay = 0.09
elseif i_key == 38 then ; Acoustic Snare
    i_engine = 2
    i_pitch = 185
    i_decay = 0.28
    i_noise = 1.0
    i_noise_hz = 3600
    i_tone = 0.6
elseif i_key == 39 then ; Hand Clap
    i_engine = 4
    i_decay = 0.35
elseif i_key == 40 then ; Electric Snare
    i_engine = 2
    i_pitch = 210
    i_decay = 0.4
    i_noise = 1.1
    i_noise_hz = 2200
    i_tone = 0.9
elseif i_key == 41 then ; Low Floor Tom
    i_engine = 5
    i_pitch = 78
    i_pitch_drop = 4
    i_decay = 0.9
    i_noise = 0.35
    i_noise_hz = 900
elseif i_key == 42 then ; Closed Hi-Hat
    i_engine = 6
    i_decay = 0.07
    i_noise_hz = 9000
    i_bandwidth = 6000
    i_tone = 0.5
elseif i_key == 43 then ; High Floor Tom
    i_engine = 5
    i_pitch = 95
    i_pitch_drop = 4
    i_decay = 0.8
    i_noise = 0.35
    i_noise_hz = 1000
elseif i_key == 44 then ; Pedal Hi-Hat
    i_engine = 6
    i_decay = 0.11
    i_noise_hz = 8000
    i_bandwidth = 5000
    i_tone = 0.4
    i_level = 0.7
elseif i_key == 45 then ; Low Tom
    i_engine = 5
    i_pitch = 112
    i_pitch_drop = 5
    i_decay = 0.7
    i_noise = 0.4
    i_noise_hz = 1200
elseif i_key == 46 then ; Open Hi-Hat
    i_engine = 6
    i_decay = 0.55
    i_noise_hz = 8500
    i_bandwidth = 6000
    i_tone = 0.6
elseif i_key == 47 then ; Low-Mid Tom
    i_engine = 5
    i_pitch = 135
    i_pitch_drop = 5
    i_decay = 0.6
    i_noise = 0.4
    i_noise_hz = 1400
elseif i_key == 48 then ; Hi-Mid Tom
    i_engine = 5
    i_pitch = 165
    i_pitch_drop = 6
    i_decay = 0.55
    i_noise = 0.4
    i_noise_hz = 1600
elseif i_key == 49 then ; Crash Cymbal 1
    i_engine = 6
    i_decay = 2.4
    i_noise_hz = 6500
    i_bandwidth = 7000
    i_tone = 0.8
    i_level = 1.2
elseif i_key == 50 then ; High Tom
    i_engine = 5
    i_pitch = 205
    i_pitch_drop = 6
    i_decay = 0.5
    i_noise = 0.4
    i_noise_hz = 1800
elseif i_key == 51 then ; Ride Cymbal 1
    i_engine = 6
    i_decay = 1.6
    i_noise_hz = 7500
    i_bandwidth = 5000
    i_tone = 1.2
    i_level = 0.9
elseif i_key == 52 then ; Chinese Cymbal
    i_engine = 6
    i_decay = 1.3
    i_noise_hz = 4500
    i_bandwidth = 7000
    i_tone = 0.5
    i_level = 1.1
elseif i_key == 53 then ; Ride Bell
    i_engine = 6
    i_decay = 0.9
    i_noise_hz = 6000
    i_bandwidth = 2500
    i_tone = 2.2
elseif i_key == 54 then ; Tambourine
    i_engine = 8
    i_tone = 1
    i_decay = 0.3
elseif i_key == 55 then ; Splash Cymbal
    i_engine = 6
    i_decay = 0.7
    i_noise_hz = 8000
    i_bandwidth = 7000
    i_tone = 0.6
elseif i_key == 56 then ; Cowbell
    i_engine = 7
    i_pitch = 562
    i_tone = 1.5
    i_decay = 0.38
elseif i_key == 57 then ; Crash Cymbal 2
    i_engine = 6
    i_decay = 2.0
    i_noise_hz = 7200
    i_bandwidth = 7000
    i_tone = 0.7
    i_level = 1.2
elseif i_key == 58 then ; Vibraslap
    i_engine = 10
    i_decay = 1.1
elseif i_key == 59 then ; Ride Cymbal 2
    i_engine = 6
    i_decay = 1.3
    i_noise_hz = 6800
    i_bandwidth = 4500
    i_tone = 1.4
    i_level = 0.9
elseif i_key == 60 then ; Hi Bongo
    i_engine = 5
    i_pitch = 480
    i_pitch_drop = 1
    i_decay = 0.14
    i_noise = 0.5
    i_noise_hz = 3000
elseif i_key == 61 then ; Low Bongo
    i_engine = 5
    i_pitch = 330
    i_pitch_drop = 1
    i_decay = 0.17
    i_noise = 0.5
    i_noise_hz = 2500
elseif i_key == 62 then ; Mute Hi Conga
    i_engine = 5
    i_pitch = 310
    i_pitch_drop = 1
    i_decay = 0.09
    i_noise = 0.6
    i_noise_hz = 2500
elseif i_key == 63 then ; Open Hi Conga
    i_engine = 5
    i_pitch = 255
    i_pitch_drop = 2
    i_decay = 0.45
    i_noise = 0.3
    i_noise_hz = 2000
elseif i_key == 64 then ; Low Conga
    i_engine = 5
    i_pitch = 190
    i_pitch_drop = 2
    i_decay = 0.55
    i_noise = 0.3
    i_noise_hz = 1500
elseif i_key == 65 then ; High Timbale
    i_engine = 5
    i_pitch = 340
    i_pitch_drop = 3
    i_decay = 0.3
    i_noise = 0.9
    i_noise_hz = 3500
elseif i_key == 66 then ; Low Timbale
    i_engine = 5
    i_pitch = 255
    i_pitch_drop = 3
    i_decay = 0.35
    i_noise = 0.9
    i_noise_hz = 3000
elseif i_key == 67 then ; High Agogo
    i_engine = 7
    i_pitch = 1560
    i_tone = 1.0
    i_decay = 0.45
elseif i_key == 68 then ; Low Agogo
    i_engine = 7
    i_pitch = 1040
    i_tone = 1.0
    i_decay = 0.5
elseif i_key == 69 then ; Cabasa
    i_engine = 8
    i_tone = 2
    i_decay = 0.25
elseif i_key == 70 then ; Maracas
    i_engine = 8
    i_tone = 3
    i_decay = 0.2
elseif i_key == 71 then ; Short Whistle
    i_engine = 11
    i_pitch = 2100
    i_decay = 0.18
elseif i_key == 72 then ; Long Whistle
    i_engine = 11
    i_pitch = 2000
    i_decay = 0.6
elseif i_key == 73 then ; Short Guiro
    i_engine = 8
    i_tone = 4
    i_decay = 0.2
elseif i_key == 74 then ; Long Guiro
    i_engine = 8
    i_tone = 5
    i_decay = 0.55
elseif i_key == 75 then ; Claves
    i_engine = 9
    i_pitch = 2500
    i_decay = 0.12
elseif i_key == 76 then ; Hi Wood Block
    i_engine = 9
    i_pitch = 1250
    i_decay = 0.14
elseif i_key == 77 then ; Low Wood Block
    i_engine = 9
    i_pitch = 850
    i_decay = 0.16
elseif i_key == 78 then ; Mute Cuica
    i_engine = 12
    i_pitch = 420
    i_decay = 0.16
elseif i_key == 79 then ; Open Cuica
    i_engine = 12
    i_pitch = 330
    i_decay = 0.45
elseif i_key == 80 then ; Mute Triangle
    i_engine = 7
    i_pitch = 2900
    i_tone = 3
    i_decay = 0.14
else ; 81 Open Triangle
    i_engine = 7
    i_pitch = 2900
    i_tone = 3
    i_decay = 2.6
endif
i_decay = i_decay * i_decay_scale
i_balance = ampdb(table(i_key - 35, gi_GM_Standard_Kit_balance))
; Drums always ring for their natural decay, whatever the score says.
p3 = i_decay + 0.05
i_physical_decay = i_decay
a_envelope transeg 1, i_decay, -5, 0
a_noise rand 1
a_signal = 0
if i_engine == 1 then
    ; Kick: a sine whose pitch falls quickly, a beater click, and a
    ; little low noise for the shell.
    k_pitch transeg i_pitch * 2 ^ (i_pitch_drop / 12), 0.045, -4, i_pitch
    a_body poscil 1, k_pitch, gi_GM_Standard_Kit_sine
    a_body_envelope transeg 1, i_decay, -4, 0
    a_click_envelope transeg 0.6 + 0.6 * i_velocity, 0.004, -3, 0
    a_click butterlp a_noise * a_click_envelope, 2500
    a_shell_envelope transeg i_noise, 0.03, -3, 0
    a_shell butterlp a_noise * a_shell_envelope, 300
    a_signal = tanh((a_body * a_body_envelope + a_click + a_shell) * 1.3)
elseif i_engine == 2 then
    ; Snare: two shell modes plus the wires, which are bright noise with
    ; a faster decay. Harder hits are brighter.
    a_shell_envelope transeg 1, i_decay * 0.6, -5, 0
    k_shell_pitch transeg i_pitch * 1.3, 0.02, -3, i_pitch
    a_shell_1 poscil 0.6, k_shell_pitch, gi_GM_Standard_Kit_sine
    a_shell_2 poscil 0.4, k_shell_pitch * 1.67, gi_GM_Standard_Kit_sine
    a_shell = (a_shell_1 + a_shell_2) * a_shell_envelope * i_tone
    a_wires_envelope transeg 1, i_decay, -4, 0
    a_wires butterbp a_noise, i_noise_hz * (0.8 + 0.4 * i_velocity), i_noise_hz
    a_wires butterhp a_wires, 600
    a_wires = a_wires * a_wires_envelope * i_noise * i_snare_wires
    a_signal = tanh((a_shell + a_wires * 1.5) * 1.2)
elseif i_engine == 3 then
    ; Side stick: a short knock through a resonator.
    a_knock_envelope transeg 1, 0.003, -3, 0
    a_knock mode a_noise * a_knock_envelope, i_pitch, 30
    a_knock_2 mode a_noise * a_knock_envelope, i_pitch * 2.3, 40
    a_signal = (a_knock + a_knock_2 * 0.5) * 2
elseif i_engine == 4 then
    ; Hand clap: four bursts a few milliseconds apart, then a tail.
    a_burst_envelope transeg 1, 0.004, -4, 0, 0.007, 0, 0, 0.0001, 0, 1, 0.004, -4, 0, 0.007, 0, 0, 0.0001, 0, 1, 0.004, -4, 0, 0.007, 0, 0, 0.0001, 0, 1, 0.004, -4, 0
    a_tail_envelope transeg 0, 0.03, 0, 0, 0.0001, 0, 0.8, i_decay, -4, 0
    a_clap butterbp a_noise * (a_burst_envelope + a_tail_envelope), 1100, 900
    a_clap_hi butterbp a_noise * (a_burst_envelope + a_tail_envelope * 0.6), 2600, 1500
    a_signal = (a_clap * 2 + a_clap_hi) * 1.5
elseif i_engine == 5 then
    ; Toms, bongos, congas, timbales: a drum head with a few inharmonic
    ; partials, a falling pitch, and a stick or hand noise.
    k_pitch transeg i_pitch * 2 ^ (i_pitch_drop / 12), 0.08, -3, i_pitch
    a_head_envelope transeg 1, i_decay, -4, 0
    a_head_1 poscil 1, k_pitch, gi_GM_Standard_Kit_sine
    a_head_2_envelope transeg 0.5, i_decay * 0.5, -4, 0
    a_head_2 poscil a_head_2_envelope, k_pitch * 1.59, gi_GM_Standard_Kit_sine
    a_head_3_envelope transeg 0.25, i_decay * 0.3, -4, 0
    a_head_3 poscil a_head_3_envelope, k_pitch * 2.14, gi_GM_Standard_Kit_sine
    a_strike_envelope transeg 1, 0.02, -4, 0
    a_strike butterbp a_noise * a_strike_envelope, i_noise_hz, i_noise_hz
    a_signal = tanh((a_head_1 * a_head_envelope + a_head_2 + a_head_3 + a_strike * i_noise * 2) * 1.1)
elseif i_engine == 6 then
    ; Hi-hats and cymbals: six square waves at inharmonic ratios,
    ; band-passed and high-passed, plus a little noise. The 'tone'
    ; parameter raises a ringing partial for ride cymbals and the bell.
    a_m1 vco2 1, 205.3, 10
    a_m2 vco2 1, 304.4, 10
    a_m3 vco2 1, 369.6, 10
    a_m4 vco2 1, 522.7, 10
    a_m5 vco2 1, 540.0, 10
    a_m6 vco2 1, 800.0, 10
    a_metal = (a_m1 + a_m2 + a_m3 + a_m4 + a_m5 + a_m6) / 6
    a_metal butterbp a_metal, i_noise_hz * i_cymbal_brightness, i_bandwidth
    a_metal butterhp a_metal, 5000
    a_wash butterbp a_noise, i_noise_hz * 0.8 * i_cymbal_brightness, i_bandwidth
    a_wash_envelope transeg 1, i_decay * 1.1, -3, 0
    a_bell_envelope transeg 1, i_decay * 0.8, -3, 0
    a_bell_1 poscil 0.12 * i_tone, 1760 * (0.9 + 0.2 * (i_tone > 1 ? 1 : 0)), gi_GM_Standard_Kit_sine
    a_bell_2 poscil 0.08 * i_tone, 2630, gi_GM_Standard_Kit_sine
    a_bell_3 poscil 0.05 * i_tone, 3980, gi_GM_Standard_Kit_sine
    a_bell = (a_bell_1 + a_bell_2 + a_bell_3) * a_bell_envelope
    a_hit_envelope transeg 1, i_decay, -6, 0
    a_signal = (a_metal * a_hit_envelope * 3 + a_wash * a_wash_envelope * 0.8 + a_bell) * i_level
elseif i_engine == 7 then
    ; Cowbell, agogo, triangle: a few inharmonic partials struck by a
    ; short noise burst.
    a_strike_envelope transeg 1, 0.002, -3, 0
    a_strike butterbp a_noise * a_strike_envelope, i_pitch * 2, i_pitch
    a_bar_envelope transeg 1, i_decay, -5, 0
    a_bar_1 poscil 1, i_pitch, gi_GM_Standard_Kit_sine
    a_bar_2 poscil 0.6, i_pitch * 1.48, gi_GM_Standard_Kit_sine
    a_bar_3_envelope transeg 0.35, i_decay * 0.5, -5, 0
    a_bar_3 poscil a_bar_3_envelope, i_pitch * 2.61, gi_GM_Standard_Kit_sine
    a_bar_4_envelope transeg 0.2, i_decay * 0.4, -5, 0
    a_bar_4 poscil a_bar_4_envelope, i_pitch * 3.92, gi_GM_Standard_Kit_sine
    if i_tone >= 3 then
        ; Triangle: purer and brighter, with a shimmer.
        a_shimmer poscil 0.3, i_pitch * 5.3, gi_GM_Standard_Kit_sine
        a_bar_1 = a_bar_1 * 0.5 + a_shimmer
    elseif i_tone > 1 then
        ; Cowbell: square-ish clang.
        a_bar_1 = tanh(a_bar_1 * 2 + a_bar_2) * 0.8
        a_bar_2 = a_bar_2 * 0.3
    endif
    a_signal = (a_bar_1 + a_bar_2 + a_bar_3 + a_bar_4) * a_bar_envelope + a_strike * 1.5
elseif i_engine == 8 then
    ; Shakers and scrapers from the PhISEM physical models.
    if i_tone == 1 then
        a_signal tambourine 2, 0.01, 32, 0.47, 0, 2300, 5600, 8100
    elseif i_tone == 2 then
        a_signal cabasa 2, 0.01, 512, 0.85, 0
    elseif i_tone == 3 then
        a_signal shaker 1, 3200, 32, 0.93, 2, 0.05
    else
        ; Guiro: a scrape, a pulse train speeding up through a notched
        ; resonator.
        k_scrape_rate transeg 28, i_decay, 1, 70
        a_scrape mpulse 1, 1 / k_scrape_rate
        a_scrape_envelope cosseg 0, 0.02, 1, i_decay - 0.05, 1, 0.03, 0
        a_scrape_1 mode a_scrape, 2500, 25
        a_scrape_2 mode a_scrape, 3900, 20
        a_scrape_noise butterbp a_noise, 3000, 2000
        a_signal = (a_scrape_1 + a_scrape_2 * 0.6 + a_scrape_noise * a_scrape * 0.5) * a_scrape_envelope * 2
    endif
    a_signal = tanh(a_signal * 1.5)
elseif i_engine == 9 then
    ; Claves and wood blocks: a single resonant mode hit by an impulse.
    a_hit_envelope transeg 1, 0.002, -3, 0
    a_hit = a_noise * a_hit_envelope
    a_wood mode a_hit, i_pitch, 60 + i_decay * 400
    a_wood_2 mode a_hit, i_pitch * 2.35, 40
    a_signal = (a_wood * 4 + a_wood_2) * 1.5
elseif i_engine == 10 then
    ; Vibraslap: a rattle of pulses at a falling rate exciting a
    ; metallic resonator.
    k_rate transeg 45, i_decay, -2, 18
    a_rattle mpulse 1, 1 / k_rate
    a_rattle_envelope transeg 1, i_decay, -3, 0
    a_rattle_body mode a_rattle * a_rattle_envelope, 2000, 80
    a_rattle_body_2 mode a_rattle * a_rattle_envelope, 3100, 60
    a_signal = (a_rattle_body + a_rattle_body_2) * 4
elseif i_engine == 11 then
    ; Whistle: a sine with a fast vibrato and breathy noise.
    k_vibrato poscil 0.03, 12, gi_GM_Standard_Kit_sine
    a_whistle poscil 1, i_pitch * (1 + k_vibrato), gi_GM_Standard_Kit_sine
    a_whistle_envelope cosseg 0, 0.02, 1, i_decay - 0.05, 1, 0.03, 0
    a_hiss butterbp a_noise, i_pitch, 400
    a_signal = (a_whistle + a_hiss * 0.3) * a_whistle_envelope
else
    ; Cuica: a rubbed drum head, a resonant pitch sweep with a vocal
    ; formant.
    k_cuica transeg i_pitch, i_decay * 0.6, 2, i_pitch * 1.6, i_decay * 0.4, -2, i_pitch * 1.3
    a_cuica_envelope cosseg 0, 0.02, 1, i_decay - 0.05, 1, 0.03, 0
    a_cuica_source gbuzz 1, k_cuica, 12, 1, 0.75, gi_GM_Standard_Kit_cosine
    a_cuica_formant reson a_cuica_source, 1400, 400, 1
    a_signal = (a_cuica_source * 0.4 + a_cuica_formant) * a_cuica_envelope
endif
a_signal dcblock a_signal, 0.9995
a_signal = a_signal * i_balance * i_amplitude * k_gain
a_out_left, a_out_right pan2 a_signal, k_space_left_to_right
outleta "outleft", a_out_left
outleta "outright", a_out_right
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

;;;; Effects and output

gk_ReverbSC_feedback chnexport "gk_ReverbSC_feedback", 3
gk_ReverbSC_wet chnexport "gk_ReverbSC_wet", 3
gi_ReverbSC_delay_modulation chnexport "gi_ReverbSC_delay_modulation", 3
gk_ReverbSC_frequency_cutoff chnexport "gk_ReverbSC_frequency_cutoff", 3

gk_ReverbSC_feedback init 0.8
gk_ReverbSC_wet init 0.22
gi_ReverbSC_delay_modulation init 0.0075
gk_ReverbSC_frequency_cutoff init 12000

instr ReverbSC
gk_ReverbSC_dry = 1.0 - gk_ReverbSC_wet
aleftin init 0
arightin init 0
aleftout init 0
arightout init 0
aleftin inleta "inleft"
arightin inleta "inright"
aleftout, arightout reverbsc aleftin, arightin, gk_ReverbSC_feedback, gk_ReverbSC_frequency_cutoff, sr, gi_ReverbSC_delay_modulation
aleftoutmix = aleftin * gk_ReverbSC_dry + aleftout * gk_ReverbSC_wet
arightoutmix = arightin * gk_ReverbSC_dry + arightout * gk_ReverbSC_wet
outleta "outleft", aleftoutmix
outleta "outright", arightoutmix
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin

gk_MasterOutput_level chnexport "gk_MasterOutput_level", 3 ; 0
gS_MasterOutput_filename chnexport "gS_MasterOutput_filename", 3 ; ""

gk_MasterOutput_level init -9 ; The whole band plays, so the master is turned down.
gS_MasterOutput_filename init ""

instr MasterOutput
aleft inleta "inleft"
aright inleta "inright"
k_gain = ampdb(gk_MasterOutput_level)
printks2 "Master gain: %f\n", k_gain
iamp init 1
aleft butterlp aleft, 18000
aright butterlp aright, 18000
a_output_left = aleft * k_gain
a_output_right = aright * k_gain
outs a_output_left, a_output_right
; We want something that will play on my phone.
i_amplitude_adjustment = ampdbfs(-3) / 32767
i_filename_length strlen gS_MasterOutput_filename
if i_filename_length > 0 then
prints sprintf("Output filename: %s\n", gS_MasterOutput_filename)
fout gS_MasterOutput_filename, 18, aleft * i_amplitude_adjustment, aright * i_amplitude_adjustment
endif
prints "%-24s i %9.4f t %9.4f d %9.4f k %9.4f v %9.4f p %9.4f #%3d\n", nstrstr(p1), p1, p2, p3, p4, p5, p7, active(p1)
endin
</CsInstruments>
<CsScore>
; Swing, 120 bpm. Every General MIDI program takes one bar.
; i "instrument" time duration key velocity front_back left_right bottom_top phase
i "GM_Acoustic_Bass"    0.0000  0.4750  43  78 0 0.50 0 0
i "GM_Standard_Kit"    0.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"    0.0000  0.3000  36  53 0 0.50 0 0
i "GM_Standard_Kit"    0.0000  0.5000  49  74 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"    0.3355  0.1417  69  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    0.3368  0.1417  58  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    0.3370  0.1417  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    0.3398  0.1417  62  58 0 0.38 0 0
i "GM_Acoustic_Bass"    0.5000  0.4750  43  71 0 0.50 0 0
i "GM_Standard_Kit"    0.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"    0.5000  0.2000  44  53 0 0.30 0 0
i "GM_Standard_Kit"    0.8333  0.3000  51  48 0 0.65 0 0
i "GM_Acoustic_Bass"    1.0000  0.4750  41  76 0 0.50 0 0
i "GM_Standard_Kit"    1.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"    1.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"    1.0007  0.4250  65  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    1.0045  0.4250  58  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    1.0060  0.4250  69  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    1.0085  0.4250  62  58 0 0.38 0 0
i "GM_Standard_Kit"    1.3333  0.2000  38  52 0 0.45 0 0
i "GM_Acoustic_Bass"    1.5000  0.4500  35  73 0 0.50 0 0
i "GM_Standard_Kit"    1.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"    1.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"    1.5000  0.2000  37  60 0 0.45 0 0
i "GM_Standard_Kit"    1.8333  0.3000  51  45 0 0.65 0 0
i "GM_Standard_Kit"    1.8333  0.2000  38  47 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"    1.8377  0.1417  70  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    1.8404  0.1417  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    1.8427  0.1417  65  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    1.8429  0.1417  74  52 0 0.38 0 0
i "GM_Acoustic_Bass"    2.0000  0.4750  36  76 0 0.50 0 0
i "GM_Standard_Kit"    2.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"    2.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Bass"    2.5000  0.4750  36  78 0 0.50 0 0
i "GM_Standard_Kit"    2.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"    2.5000  0.2000  44  52 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"    2.5007  0.2833  70  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    2.5078  0.2833  74  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    2.5084  0.2833  67  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    2.5113  0.2833  64  56 0 0.38 0 0
i "GM_Standard_Kit"    2.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"    2.8333  0.2000  38  48 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"    2.8347  0.4250  67  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    2.8375  0.4250  61  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    2.8376  0.4250  64  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    2.8419  0.4250  58  59 0 0.38 0 0
i "GM_Acoustic_Bass"    3.0000  0.4750  40  75 0 0.50 0 0
i "GM_Standard_Kit"    3.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"    3.0000  0.3000  36  57 0 0.50 0 0
i "GM_Acoustic_Bass"    3.5000  0.4500  48  77 0 0.50 0 0
i "GM_Standard_Kit"    3.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"    3.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"    3.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"    3.8343  0.1417  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    3.8349  0.1417  58  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    3.8381  0.1417  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    3.8382  0.1417  67  53 0 0.38 0 0
i "GM_Acoustic_Bass"    4.0000  0.4750  41  77 0 0.50 0 0
i "GM_Standard_Kit"    4.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"    4.0000  0.3000  36  55 0 0.50 0 0
i "GM_Standard_Kit"    4.0000  0.5000  49  74 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"    4.0012  0.4250  67  75 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    4.0048  0.4250  64  71 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    4.0055  0.4250  57  75 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    4.0096  0.4250  60  71 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    4.3333  0.1533  72  91 0 0.40 0 0
i "GM_Acoustic_Bass"    4.5000  0.4750  38  74 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"    4.5000  0.3067  74  98 0 0.40 0 0
i "GM_Standard_Kit"    4.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"    4.5000  0.2000  44  52 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"    4.8333  0.4600  76  88 0 0.40 0 0
i "GM_Standard_Kit"    4.8333  0.3000  51  48 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"    4.8341  0.1417  64  66 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    4.8353  0.1417  69  70 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    4.8405  0.1417  72  66 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    4.8451  0.1417  67  72 0 0.40 0 0
i "GM_Acoustic_Bass"    5.0000  0.4750  41  78 0 0.50 0 0
i "GM_Standard_Kit"    5.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"    5.0000  0.3000  36  58 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"    5.3333  0.1533  76  82 0 0.40 0 0
i "GM_Standard_Kit"    5.3333  0.2000  38  49 0 0.45 0 0
i "GM_Acoustic_Bass"    5.5000  0.4500  39  75 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"    5.5000  0.3067  81  98 0 0.40 0 0
i "GM_Standard_Kit"    5.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"    5.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"    5.5000  0.2000  37  60 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"    5.5012  0.4250  60  70 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    5.5068  0.4250  57  73 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    5.5074  0.4250  64  66 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    5.5105  0.4250  67  74 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    5.8333  0.1533  76  84 0 0.40 0 0
i "GM_Standard_Kit"    5.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"    5.8333  0.2000  38  56 0 0.45 0 0
i "GM_Acoustic_Bass"    6.0000  0.4750  38  73 0 0.50 0 0
i "GM_Bright_Acoustic_Piano"    6.0000  0.4600  69  99 0 0.54 0 0
i "GM_Standard_Kit"    6.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"    6.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"    6.0043  0.4250  60  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    6.0057  0.4250  65  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    6.0083  0.4250  69  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    6.0119  0.4250  64  53 0 0.38 0 0
i "GM_Acoustic_Bass"    6.5000  0.4750  35  73 0 0.50 0 0
i "GM_Bright_Acoustic_Piano"    6.5000  0.3067  71  92 0 0.54 0 0
i "GM_Standard_Kit"    6.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"    6.5000  0.2000  44  53 0 0.30 0 0
i "GM_Bright_Acoustic_Piano"    6.8333  0.1533  67  89 0 0.54 0 0
i "GM_Standard_Kit"    6.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"    6.8343  0.1417  65  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    6.8361  0.1417  69  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    6.8430  0.1417  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    6.8448  0.1417  64  54 0 0.38 0 0
i "GM_Acoustic_Bass"    7.0000  0.4750  36  76 0 0.50 0 0
i "GM_Bright_Acoustic_Piano"    7.0000  0.3067  69  96 0 0.54 0 0
i "GM_Standard_Kit"    7.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"    7.0000  0.3000  36  58 0 0.50 0 0
i "GM_Bright_Acoustic_Piano"    7.3333  0.1533  67  81 0 0.54 0 0
i "GM_Acoustic_Bass"    7.5000  0.4500  50  73 0 0.50 0 0
i "GM_Bright_Acoustic_Piano"    7.5000  0.3067  65  98 0 0.54 0 0
i "GM_Standard_Kit"    7.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"    7.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"    7.5000  0.2000  37  60 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"    7.5025  0.4250  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    7.5101  0.4250  65  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    7.5109  0.4250  69  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    7.5118  0.4250  64  58 0 0.38 0 0
i "GM_Bright_Acoustic_Piano"    7.8333  0.1533  65  81 0 0.54 0 0
i "GM_Standard_Kit"    7.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Bass"    8.0000  0.4750  43  73 0 0.50 0 0
i "GM_Electric_Grand_Piano"    8.0000  0.3067  70  90 0 0.69 0 0
i "GM_Standard_Kit"    8.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"    8.0000  0.3000  36  57 0 0.50 0 0
i "GM_Electric_Grand_Piano"    8.3333  0.1533  69  82 0 0.69 0 0
i "GM_Standard_Kit"    8.3333  0.2000  38  48 0 0.45 0 0
i "GM_Acoustic_Bass"    8.5000  0.4750  43  74 0 0.50 0 0
i "GM_Electric_Grand_Piano"    8.5000  0.3067  67  97 0 0.69 0 0
i "GM_Standard_Kit"    8.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"    8.5000  0.2000  44  48 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"    8.5007  0.2833  58  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    8.5050  0.2833  69  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    8.5070  0.2833  65  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    8.5108  0.2833  62  59 0 0.38 0 0
i "GM_Electric_Grand_Piano"    8.8333  0.1533  64  80 0 0.69 0 0
i "GM_Standard_Kit"    8.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"    8.8334  0.4250  69  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    8.8395  0.4250  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    8.8397  0.4250  58  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    8.8427  0.4250  65  58 0 0.38 0 0
i "GM_Acoustic_Bass"    9.0000  0.4750  41  75 0 0.50 0 0
i "GM_Electric_Grand_Piano"    9.0000  0.4600  62  93 0 0.69 0 0
i "GM_Standard_Kit"    9.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"    9.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Bass"    9.5000  0.4500  37  78 0 0.50 0 0
i "GM_Electric_Grand_Piano"    9.5000  0.4600  65  97 0 0.69 0 0
i "GM_Standard_Kit"    9.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"    9.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"    9.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"    9.8333  0.2000  38  52 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"    9.8341  0.1417  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    9.8350  0.1417  58  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    9.8396  0.1417  69  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    9.8420  0.1417  62  57 0 0.38 0 0
i "GM_Acoustic_Bass"   10.0000  0.4750  36  71 0 0.50 0 0
i "GM_Honky_tonk_Piano"   10.0000  0.7667  70  91 0 0.33 0 0
i "GM_Standard_Kit"   10.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"   10.0000  0.3000  36  54 0 0.50 0 0
i "GM_Standard_Kit"   10.3333  0.2000  38  47 0 0.45 0 0
i "GM_Acoustic_Bass"   10.5000  0.4750  38  72 0 0.50 0 0
i "GM_Standard_Kit"   10.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"   10.5000  0.2000  44  53 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"   10.5019  0.2833  67  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   10.5041  0.2833  73  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   10.5119  0.2833  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   10.5119  0.2833  70  55 0 0.38 0 0
i "GM_Honky_tonk_Piano"   10.8333  0.1533  76  87 0 0.33 0 0
i "GM_Standard_Kit"   10.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   10.8374  0.4250  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   10.8379  0.4250  74  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   10.8386  0.4250  70  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   10.8420  0.4250  64  49 0 0.38 0 0
i "GM_Acoustic_Bass"   11.0000  0.4750  43  73 0 0.50 0 0
i "GM_Honky_tonk_Piano"   11.0000  0.3067  76  98 0 0.33 0 0
i "GM_Standard_Kit"   11.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   11.0000  0.3000  36  56 0 0.50 0 0
i "GM_Honky_tonk_Piano"   11.3333  0.1533  78  79 0 0.33 0 0
i "GM_Standard_Kit"   11.3333  0.2000  38  49 0 0.45 0 0
i "GM_Acoustic_Bass"   11.5000  0.4500  48  71 0 0.50 0 0
i "GM_Honky_tonk_Piano"   11.5000  0.3067  72  95 0 0.33 0 0
i "GM_Standard_Kit"   11.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"   11.5000  0.2000  44  50 0 0.30 0 0
i "GM_Honky_tonk_Piano"   11.8333  0.1533  72  79 0 0.33 0 0
i "GM_Standard_Kit"   11.8333  0.3000  51  46 0 0.65 0 0
i "GM_Standard_Kit"   11.8333  0.2000  38  56 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   11.8338  0.1417  74  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   11.8343  0.1417  70  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   11.8347  0.1417  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   11.8450  0.1417  67  50 0 0.38 0 0
i "GM_Acoustic_Bass"   12.0000  0.4750  41  74 0 0.50 0 0
i "GM_Electric_Piano_1"   12.0000  0.7667  76  94 0 0.47 0 0
i "GM_Standard_Kit"   12.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"   12.0000  0.3000  36  53 0 0.50 0 0
i "GM_Electric_Piano_1"   12.0035  0.4250  64  73 0 0.47 0 0
i "GM_Electric_Piano_1"   12.0037  0.4250  60  68 0 0.47 0 0
i "GM_Electric_Piano_1"   12.0081  0.4250  67  69 0 0.47 0 0
i "GM_Electric_Piano_1"   12.0112  0.4250  57  75 0 0.47 0 0
i "GM_Acoustic_Bass"   12.5000  0.4750  38  70 0 0.50 0 0
i "GM_Standard_Kit"   12.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"   12.5000  0.2000  44  53 0 0.30 0 0
i "GM_Electric_Piano_1"   12.8333  0.1533  76  91 0 0.47 0 0
i "GM_Standard_Kit"   12.8333  0.3000  51  51 0 0.65 0 0
i "GM_Electric_Piano_1"   12.8338  0.1417  67  65 0 0.47 0 0
i "GM_Electric_Piano_1"   12.8421  0.1417  69  73 0 0.47 0 0
i "GM_Electric_Piano_1"   12.8430  0.1417  64  69 0 0.47 0 0
i "GM_Electric_Piano_1"   12.8451  0.1417  72  73 0 0.47 0 0
i "GM_Acoustic_Bass"   13.0000  0.4750  40  72 0 0.50 0 0
i "GM_Electric_Piano_1"   13.0000  0.3067  77  91 0 0.47 0 0
i "GM_Standard_Kit"   13.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   13.0000  0.3000  36  55 0 0.50 0 0
i "GM_Electric_Piano_1"   13.3333  0.1533  71  85 0 0.47 0 0
i "GM_Acoustic_Bass"   13.5000  0.4500  42  70 0 0.50 0 0
i "GM_Electric_Piano_1"   13.5000  0.3067  69  97 0 0.47 0 0
i "GM_Standard_Kit"   13.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"   13.5000  0.2000  44  48 0 0.30 0 0
i "GM_Electric_Piano_1"   13.5013  0.4250  67  75 0 0.47 0 0
i "GM_Electric_Piano_1"   13.5029  0.4250  64  72 0 0.47 0 0
i "GM_Electric_Piano_1"   13.5052  0.4250  69  72 0 0.47 0 0
i "GM_Electric_Piano_1"   13.5066  0.4250  72  71 0 0.47 0 0
i "GM_Electric_Piano_1"   13.8333  0.1533  69  85 0 0.47 0 0
i "GM_Standard_Kit"   13.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Bass"   14.0000  0.4750  41  70 0 0.50 0 0
i "GM_Electric_Piano_2"   14.0000  0.3067  69  99 0 0.62 0 0
i "GM_Standard_Kit"   14.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"   14.0000  0.3000  36  55 0 0.50 0 0
i "GM_Electric_Piano_2"   14.3333  0.1533  64  79 0 0.62 0 0
i "GM_Standard_Kit"   14.3333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   14.3338  0.1417  60  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   14.3351  0.1417  57  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   14.3361  0.1417  67  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   14.3369  0.1417  63  59 0 0.38 0 0
i "GM_Acoustic_Bass"   14.5000  0.4750  45  71 0 0.50 0 0
i "GM_Electric_Piano_2"   14.5000  0.3067  65  90 0 0.62 0 0
i "GM_Standard_Kit"   14.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"   14.5000  0.2000  44  48 0 0.30 0 0
i "GM_Electric_Piano_2"   14.8333  0.1533  67  89 0 0.62 0 0
i "GM_Standard_Kit"   14.8333  0.3000  51  50 0 0.65 0 0
i "GM_Standard_Kit"   14.8333  0.2000  38  49 0 0.45 0 0
i "GM_Acoustic_Bass"   15.0000  0.4750  41  73 0 0.50 0 0
i "GM_Electric_Piano_2"   15.0000  0.3067  65  96 0 0.62 0 0
i "GM_Standard_Kit"   15.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   15.0000  0.3000  36  56 0 0.50 0 0
i "GM_Standard_Kit"   15.0000  0.3000  48  76 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"   15.0018  0.4250  66  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   15.0047  0.4250  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   15.0079  0.4250  57  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   15.0086  0.4250  63  56 0 0.38 0 0
i "GM_Electric_Piano_2"   15.3333  0.1533  67  87 0 0.62 0 0
i "GM_Standard_Kit"   15.3333  0.2000  38  46 0 0.45 0 0
i "GM_Standard_Kit"   15.3333  0.3000  47  75 0 0.45 0 0
i "GM_Acoustic_Bass"   15.5000  0.4500  41  70 0 0.50 0 0
i "GM_Electric_Piano_2"   15.5000  0.4600  65  97 0 0.62 0 0
i "GM_Standard_Kit"   15.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"   15.5000  0.2000  44  48 0 0.30 0 0
i "GM_Standard_Kit"   15.5000  0.3000  45  77 0 0.50 0 0
i "GM_Standard_Kit"   15.8333  0.3000  51  48 0 0.65 0 0
i "GM_Standard_Kit"   15.8333  0.3000  43  74 0 0.55 0 0
i "GM_Acoustic_Grand_Piano"   15.8350  0.1417  63  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   15.8409  0.1417  60  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   15.8424  0.1417  67  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   15.8432  0.1417  57  57 0 0.38 0 0
i "GM_Acoustic_Bass"   16.0000  0.4750  46  71 0 0.50 0 0
i "GM_Harpsichord"   16.0000  0.7667  65  92 0 0.26 0 0
i "GM_Standard_Kit"   16.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"   16.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   16.3335  0.4250  62  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   16.3392  0.4250  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   16.3408  0.4250  60  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   16.3412  0.4250  57  53 0 0.38 0 0
i "GM_Acoustic_Bass"   16.5000  0.4750  48  70 0 0.50 0 0
i "GM_Standard_Kit"   16.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"   16.5000  0.2000  44  47 0 0.30 0 0
i "GM_Harpsichord"   16.8333  0.1533  65  80 0 0.26 0 0
i "GM_Standard_Kit"   16.8333  0.3000  51  50 0 0.65 0 0
i "GM_Standard_Kit"   16.8333  0.2000  38  53 0 0.45 0 0
i "GM_Acoustic_Bass"   17.0000  0.4750  46  71 0 0.50 0 0
i "GM_Harpsichord"   17.0000  0.3067  62  97 0 0.26 0 0
i "GM_Standard_Kit"   17.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"   17.0000  0.3000  36  54 0 0.50 0 0
i "GM_Harpsichord"   17.3333  0.1533  61  89 0 0.26 0 0
i "GM_Acoustic_Grand_Piano"   17.3368  0.1417  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.3389  0.1417  72  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.3392  0.1417  65  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.3416  0.1417  62  59 0 0.38 0 0
i "GM_Acoustic_Bass"   17.5000  0.4500  41  72 0 0.50 0 0
i "GM_Harpsichord"   17.5000  0.3067  58  94 0 0.26 0 0
i "GM_Standard_Kit"   17.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"   17.5000  0.2000  44  53 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"   17.5035  0.4250  69  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.5037  0.4250  62  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.5098  0.4250  72  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.5112  0.4250  65  49 0 0.38 0 0
i "GM_Harpsichord"   17.8333  0.1533  60  81 0 0.26 0 0
i "GM_Standard_Kit"   17.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Bass"   18.0000  0.4750  46  71 0 0.50 0 0
i "GM_Clavi"   18.0000  0.3067  56  97 0 0.41 0 0
i "GM_Standard_Kit"   18.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"   18.0000  0.3000  36  56 0 0.50 0 0
i "GM_Clavi"   18.3333  0.1533  58  83 0 0.41 0 0
i "GM_Acoustic_Grand_Piano"   18.3367  0.4250  60  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   18.3410  0.4250  65  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   18.3424  0.4250  56  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   18.3433  0.4250  61  53 0 0.38 0 0
i "GM_Acoustic_Bass"   18.5000  0.4750  46  74 0 0.50 0 0
i "GM_Clavi"   18.5000  0.3067  61  92 0 0.41 0 0
i "GM_Standard_Kit"   18.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"   18.5000  0.2000  44  52 0 0.30 0 0
i "GM_Clavi"   18.8333  0.1533  62  89 0 0.41 0 0
i "GM_Standard_Kit"   18.8333  0.3000  51  50 0 0.65 0 0
i "GM_Standard_Kit"   18.8333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Bass"   19.0000  0.4750  49  76 0 0.50 0 0
i "GM_Clavi"   19.0000  0.4600  61  97 0 0.41 0 0
i "GM_Standard_Kit"   19.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"   19.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   19.3356  0.1417  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   19.3386  0.1417  61  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   19.3428  0.1417  67  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   19.3439  0.1417  70  59 0 0.38 0 0
i "GM_Acoustic_Bass"   19.5000  0.4500  48  71 0 0.50 0 0
i "GM_Clavi"   19.5000  0.4600  61  96 0 0.41 0 0
i "GM_Standard_Kit"   19.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"   19.5000  0.2000  44  48 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"   19.5054  0.4250  61  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   19.5077  0.4250  65  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   19.5086  0.4250  55  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   19.5112  0.4250  58  55 0 0.38 0 0
i "GM_Standard_Kit"   19.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Bass"   20.0000  0.4750  41  73 0 0.50 0 0
i "GM_Celesta"   20.0000  0.8333  89  90 0 0.55 0 0
i "GM_Standard_Kit"   20.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"   20.0000  0.3000  36  57 0 0.50 0 0
i "GM_Standard_Kit"   20.3333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   20.3344  0.1417  72  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.3348  0.1417  67  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.3367  0.1417  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.3397  0.1417  69  52 0 0.38 0 0
i "GM_Acoustic_Bass"   20.5000  0.4750  45  76 0 0.50 0 0
i "GM_Standard_Kit"   20.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"   20.5000  0.2000  44  50 0 0.30 0 0
i "GM_Celesta"   20.8333  0.1667  88  89 0 0.55 0 0
i "GM_Standard_Kit"   20.8333  0.3000  51  48 0 0.65 0 0
i "GM_Standard_Kit"   20.8333  0.2000  38  50 0 0.45 0 0
i "GM_Acoustic_Bass"   21.0000  0.4750  41  76 0 0.50 0 0
i "GM_Celesta"   21.0000  0.5000  89  90 0 0.55 0 0
i "GM_Standard_Kit"   21.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   21.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   21.0015  0.4250  72  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   21.0048  0.4250  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   21.0052  0.4250  67  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   21.0102  0.4250  69  49 0 0.38 0 0
i "GM_Acoustic_Bass"   21.5000  0.4500  39  75 0 0.50 0 0
i "GM_Celesta"   21.5000  0.5000  84  91 0 0.55 0 0
i "GM_Standard_Kit"   21.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"   21.5000  0.2000  44  48 0 0.30 0 0
i "GM_Standard_Kit"   21.8333  0.3000  51  48 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   21.8333  0.1417  67  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   21.8436  0.1417  72  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   21.8445  0.1417  69  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   21.8450  0.1417  64  56 0 0.38 0 0
i "GM_Acoustic_Bass"   22.0000  0.4750  38  74 0 0.50 0 0
i "GM_Glockenspiel"   22.0000  0.8333  90  96 0 0.70 0 0
i "GM_Standard_Kit"   22.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"   22.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Bass"   22.5000  0.4750  38  70 0 0.50 0 0
i "GM_Standard_Kit"   22.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"   22.5000  0.2000  44  48 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"   22.5004  0.2833  54  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   22.5007  0.2833  60  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   22.5060  0.2833  64  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   22.5085  0.2833  57  53 0 0.38 0 0
i "GM_Glockenspiel"   22.8333  0.1667  89  88 0 0.70 0 0
i "GM_Standard_Kit"   22.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   22.8361  0.4250  60  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   22.8364  0.4250  54  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   22.8384  0.4250  57  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   22.8417  0.4250  64  55 0 0.38 0 0
i "GM_Acoustic_Bass"   23.0000  0.4750  42  75 0 0.50 0 0
i "GM_Glockenspiel"   23.0000  0.5000  86  92 0 0.70 0 0
i "GM_Standard_Kit"   23.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"   23.0000  0.3000  36  57 0 0.50 0 0
i "GM_Standard_Kit"   23.3333  0.2000  38  54 0 0.45 0 0
i "GM_Acoustic_Bass"   23.5000  0.4500  50  73 0 0.50 0 0
i "GM_Glockenspiel"   23.5000  0.5000  83  91 0 0.70 0 0
i "GM_Standard_Kit"   23.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"   23.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"   23.5000  0.2000  37  60 0 0.45 0 0
i "GM_Standard_Kit"   23.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"   23.8333  0.2000  38  55 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   23.8341  0.1417  66  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   23.8357  0.1417  60  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   23.8422  0.1417  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   23.8450  0.1417  69  53 0 0.38 0 0
i "GM_Acoustic_Bass"   24.0000  0.4750  43  72 0 0.50 0 0
i "GM_Music_Box"   24.0000  0.5000  82  95 0 0.34 0 0
i "GM_Standard_Kit"   24.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"   24.0000  0.3000  36  58 0 0.50 0 0
i "GM_Standard_Kit"   24.3333  0.2000  38  47 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   24.3334  0.4250  69  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   24.3343  0.4250  70  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   24.3386  0.4250  65  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   24.3448  0.4250  74  50 0 0.38 0 0
i "GM_Acoustic_Bass"   24.5000  0.4750  45  72 0 0.50 0 0
i "GM_Standard_Kit"   24.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"   24.5000  0.2000  44  50 0 0.30 0 0
i "GM_Music_Box"   24.8333  0.1667  81  79 0 0.34 0 0
i "GM_Standard_Kit"   24.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Bass"   25.0000  0.4750  41  70 0 0.50 0 0
i "GM_Music_Box"   25.0000  0.5000  79  98 0 0.34 0 0
i "GM_Standard_Kit"   25.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"   25.0000  0.3000  36  53 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   25.3344  0.1417  65  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.3357  0.1417  69  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.3379  0.1417  58  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.3432  0.1417  62  55 0 0.38 0 0
i "GM_Acoustic_Bass"   25.5000  0.4500  37  76 0 0.50 0 0
i "GM_Standard_Kit"   25.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"   25.5000  0.2000  44  47 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"   25.5004  0.4250  70  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.5023  0.4250  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.5030  0.4250  74  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.5088  0.4250  69  56 0 0.38 0 0
i "GM_Music_Box"   25.8333  0.1667  81  88 0 0.34 0 0
i "GM_Standard_Kit"   25.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Bass"   26.0000  0.4750  36  73 0 0.50 0 0
i "GM_Standard_Kit"   26.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"   26.0000  0.3000  36  53 0 0.50 0 0
i "GM_Vibraphone"   26.3333  0.1533  70  81 0 0.49 0 0
i "GM_Acoustic_Bass"   26.5000  0.4750  40  77 0 0.50 0 0
i "GM_Standard_Kit"   26.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"   26.5000  0.2000  44  49 0 0.30 0 0
i "GM_Vibraphone"   26.5000  0.3067  69  99 0 0.49 0 0
i "GM_Acoustic_Grand_Piano"   26.5043  0.2833  67  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   26.5073  0.2833  62  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   26.5099  0.2833  58  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   26.5103  0.2833  64  56 0 0.38 0 0
i "GM_Standard_Kit"   26.8333  0.3000  51  50 0 0.65 0 0
i "GM_Vibraphone"   26.8333  0.1533  72  88 0 0.49 0 0
i "GM_Acoustic_Grand_Piano"   26.8363  0.4250  67  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   26.8380  0.4250  64  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   26.8400  0.4250  74  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   26.8411  0.4250  70  56 0 0.38 0 0
i "GM_Acoustic_Bass"   27.0000  0.4750  43  76 0 0.50 0 0
i "GM_Standard_Kit"   27.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"   27.0000  0.3000  36  58 0 0.50 0 0
i "GM_Vibraphone"   27.0000  0.4600  74  92 0 0.49 0 0
i "GM_Acoustic_Bass"   27.5000  0.4500  42  72 0 0.50 0 0
i "GM_Standard_Kit"   27.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"   27.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"   27.5000  0.2000  37  60 0 0.45 0 0
i "GM_Vibraphone"   27.5000  0.3067  72  92 0 0.49 0 0
i "GM_Standard_Kit"   27.8333  0.3000  51  47 0 0.65 0 0
i "GM_Vibraphone"   27.8333  0.1533  74  88 0 0.49 0 0
i "GM_Acoustic_Grand_Piano"   27.8358  0.1417  64  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   27.8365  0.1417  62  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   27.8393  0.1417  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   27.8439  0.1417  58  50 0 0.38 0 0
i "GM_Acoustic_Bass"   28.0000  0.4750  41  73 0 0.50 0 0
i "GM_Marimba"   28.0000  0.3067  65  96 0 0.63 0 0
i "GM_Standard_Kit"   28.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"   28.0000  0.3000  36  54 0 0.50 0 0
i "GM_Marimba"   28.3333  0.1533  64  89 0 0.63 0 0
i "GM_Acoustic_Grand_Piano"   28.3387  0.1417  67  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   28.3395  0.1417  64  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   28.3426  0.1417  69  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   28.3447  0.1417  72  50 0 0.38 0 0
i "GM_Acoustic_Bass"   28.5000  0.4750  43  70 0 0.50 0 0
i "GM_Marimba"   28.5000  0.3067  60  99 0 0.63 0 0
i "GM_Standard_Kit"   28.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"   28.5000  0.2000  44  51 0 0.30 0 0
i "GM_Marimba"   28.8333  0.1533  62  83 0 0.63 0 0
i "GM_Standard_Kit"   28.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Bass"   29.0000  0.4750  45  70 0 0.50 0 0
i "GM_Marimba"   29.0000  0.4600  65  89 0 0.63 0 0
i "GM_Standard_Kit"   29.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"   29.0000  0.3000  36  58 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   29.0005  0.4250  72  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   29.0024  0.4250  69  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   29.0026  0.4250  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   29.0041  0.4250  67  49 0 0.38 0 0
i "GM_Acoustic_Bass"   29.5000  0.4500  42  73 0 0.50 0 0
i "GM_Marimba"   29.5000  0.4600  65  89 0 0.63 0 0
i "GM_Standard_Kit"   29.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"   29.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"   29.8333  0.3000  51  46 0 0.65 0 0
i "GM_Standard_Kit"   29.8333  0.2000  38  53 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   29.8343  0.1417  67  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   29.8356  0.1417  64  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   29.8382  0.1417  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   29.8431  0.1417  57  54 0 0.38 0 0
i "GM_Acoustic_Bass"   30.0000  0.4750  43  70 0 0.50 0 0
i "GM_Standard_Kit"   30.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"   30.0000  0.3000  36  56 0 0.50 0 0
i "GM_Xylophone"   30.0000  0.5000  77  92 0 0.27 0 0
i "GM_Acoustic_Grand_Piano"   30.0036  0.4250  65  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   30.0046  0.4250  62  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   30.0111  0.4250  58  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   30.0117  0.4250  69  56 0 0.38 0 0
i "GM_Acoustic_Bass"   30.5000  0.4750  41  76 0 0.50 0 0
i "GM_Standard_Kit"   30.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"   30.5000  0.2000  44  50 0 0.30 0 0
i "GM_Xylophone"   30.5000  0.5000  77  92 0 0.27 0 0
i "GM_Acoustic_Bass"   30.8333  0.1500  43  64 0 0.50 0 0
i "GM_Standard_Kit"   30.8333  0.3000  51  51 0 0.65 0 0
i "GM_Standard_Kit"   30.8333  0.2000  38  47 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   30.8340  0.1417  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   30.8380  0.1417  69  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   30.8410  0.1417  74  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   30.8416  0.1417  70  51 0 0.38 0 0
i "GM_Acoustic_Bass"   31.0000  0.4750  43  72 0 0.50 0 0
i "GM_Standard_Kit"   31.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   31.0000  0.3000  36  54 0 0.50 0 0
i "GM_Standard_Kit"   31.0000  0.3000  48  79 0 0.40 0 0
i "GM_Xylophone"   31.0000  0.5000  76  99 0 0.27 0 0
i "GM_Standard_Kit"   31.3333  0.2000  38  52 0 0.45 0 0
i "GM_Standard_Kit"   31.3333  0.3000  47  74 0 0.45 0 0
i "GM_Acoustic_Bass"   31.5000  0.4500  44  74 0 0.50 0 0
i "GM_Standard_Kit"   31.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"   31.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"   31.5000  0.3000  45  74 0 0.50 0 0
i "GM_Xylophone"   31.5000  0.5000  70  95 0 0.27 0 0
i "GM_Acoustic_Grand_Piano"   31.5019  0.4250  74  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   31.5048  0.4250  70  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   31.5068  0.4250  67  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   31.5100  0.4250  64  51 0 0.38 0 0
i "GM_Standard_Kit"   31.8333  0.3000  51  46 0 0.65 0 0
i "GM_Standard_Kit"   31.8333  0.2000  38  55 0 0.45 0 0
i "GM_Standard_Kit"   31.8333  0.3000  43  72 0 0.55 0 0
i "GM_Acoustic_Bass"   32.0000  0.4750  43  70 0 0.50 0 0
i "GM_Standard_Kit"   32.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"   32.0000  0.3000  36  56 0 0.50 0 0
i "GM_Tubular_Bells"   32.0000  0.3067  65  94 0 0.42 0 0
i "GM_Tubular_Bells"   32.3333  0.4600  69  88 0 0.42 0 0
i "GM_Acoustic_Grand_Piano"   32.3338  0.1417  69  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   32.3349  0.1417  58  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   32.3377  0.1417  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   32.3394  0.1417  65  59 0 0.38 0 0
i "GM_Acoustic_Bass"   32.5000  0.4750  46  77 0 0.50 0 0
i "GM_Standard_Kit"   32.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"   32.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"   32.8333  0.3000  51  49 0 0.65 0 0
i "GM_Tubular_Bells"   32.8333  0.1533  69  87 0 0.42 0 0
i "GM_Acoustic_Bass"   33.0000  0.4750  41  72 0 0.50 0 0
i "GM_Standard_Kit"   33.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"   33.0000  0.3000  36  55 0 0.50 0 0
i "GM_Tubular_Bells"   33.0000  0.3067  70  98 0 0.42 0 0
i "GM_Acoustic_Grand_Piano"   33.0010  0.4250  65  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   33.0010  0.4250  58  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   33.0093  0.4250  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   33.0107  0.4250  69  59 0 0.38 0 0
i "GM_Tubular_Bells"   33.3333  0.1533  69  79 0 0.42 0 0
i "GM_Acoustic_Bass"   33.5000  0.4500  37  76 0 0.50 0 0
i "GM_Standard_Kit"   33.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"   33.5000  0.2000  44  52 0 0.30 0 0
i "GM_Tubular_Bells"   33.5000  0.4600  70  91 0 0.42 0 0
i "GM_Standard_Kit"   33.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   33.8336  0.1417  58  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   33.8357  0.1417  65  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   33.8368  0.1417  69  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   33.8453  0.1417  62  50 0 0.38 0 0
i "GM_Acoustic_Bass"   34.0000  0.4750  36  71 0 0.50 0 0
i "GM_Dulcimer"   34.0000  0.7667  70  91 0 0.56 0 0
i "GM_Standard_Kit"   34.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"   34.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Bass"   34.5000  0.4750  40  75 0 0.50 0 0
i "GM_Standard_Kit"   34.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"   34.5000  0.2000  44  53 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"   34.5030  0.2833  67  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   34.5036  0.2833  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   34.5111  0.2833  74  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   34.5116  0.2833  70  58 0 0.38 0 0
i "GM_Dulcimer"   34.8333  0.1533  71  79 0 0.56 0 0
i "GM_Standard_Kit"   34.8333  0.3000  51  50 0 0.65 0 0
i "GM_Standard_Kit"   34.8333  0.2000  38  53 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   34.8360  0.4250  64  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   34.8383  0.4250  70  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   34.8407  0.4250  67  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   34.8441  0.4250  73  51 0 0.38 0 0
i "GM_Acoustic_Bass"   35.0000  0.4750  43  75 0 0.50 0 0
i "GM_Dulcimer"   35.0000  0.3067  70  91 0 0.56 0 0
i "GM_Standard_Kit"   35.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   35.0000  0.3000  36  53 0 0.50 0 0
i "GM_Dulcimer"   35.3333  0.1533  67  89 0 0.56 0 0
i "GM_Acoustic_Bass"   35.5000  0.4500  42  71 0 0.50 0 0
i "GM_Dulcimer"   35.5000  0.3067  72  93 0 0.56 0 0
i "GM_Standard_Kit"   35.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"   35.5000  0.2000  44  53 0 0.30 0 0
i "GM_Dulcimer"   35.8333  0.1533  71  87 0 0.56 0 0
i "GM_Standard_Kit"   35.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   35.8336  0.1417  64  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   35.8346  0.1417  70  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   35.8397  0.1417  74  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   35.8401  0.1417  67  53 0 0.38 0 0
i "GM_Acoustic_Bass"   36.0000  0.4750  41  71 0 0.50 0 0
i "GM_Drawbar_Organ"   36.0000  0.3067  64  97 0 0.71 0 0
i "GM_Standard_Kit"   36.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   36.0000  0.3000  36  56 0 0.50 0 0
i "GM_Standard_Kit"   36.0000  0.5000  49  74 0 0.70 0 0
i "GM_Drawbar_Organ"   36.3333  0.4600  65  82 0 0.71 0 0
i "GM_Standard_Kit"   36.3333  0.2000  38  48 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   36.3378  0.1417  69  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   36.3408  0.1417  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   36.3419  0.1417  67  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   36.3423  0.1417  72  56 0 0.38 0 0
i "GM_Acoustic_Bass"   36.5000  0.4750  43  72 0 0.50 0 0
i "GM_Standard_Kit"   36.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"   36.5000  0.2000  44  51 0 0.30 0 0
i "GM_Drawbar_Organ"   36.8333  0.1533  65  84 0 0.71 0 0
i "GM_Standard_Kit"   36.8333  0.3000  51  50 0 0.65 0 0
i "GM_Standard_Kit"   36.8333  0.2000  38  49 0 0.45 0 0
i "GM_Acoustic_Bass"   37.0000  0.4750  40  72 0 0.50 0 0
i "GM_Drawbar_Organ"   37.0000  0.3067  65  92 0 0.71 0 0
i "GM_Standard_Kit"   37.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"   37.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   37.0005  0.4250  67  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   37.0021  0.4250  60  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   37.0031  0.4250  64  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   37.0089  0.4250  57  56 0 0.38 0 0
i "GM_Drawbar_Organ"   37.3333  0.1533  67  87 0 0.71 0 0
i "GM_Standard_Kit"   37.3333  0.2000  38  48 0 0.45 0 0
i "GM_Acoustic_Bass"   37.5000  0.4500  45  74 0 0.50 0 0
i "GM_Drawbar_Organ"   37.5000  0.4600  64  95 0 0.71 0 0
i "GM_Standard_Kit"   37.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"   37.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"   37.8333  0.3000  51  49 0 0.65 0 0
i "GM_Standard_Kit"   37.8333  0.2000  38  46 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   37.8386  0.1417  69  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   37.8410  0.1417  67  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   37.8419  0.1417  64  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   37.8450  0.1417  72  53 0 0.38 0 0
i "GM_Acoustic_Bass"   38.0000  0.4750  38  70 0 0.50 0 0
i "GM_Percussive_Organ"   38.0000  0.7667  62  94 0 0.35 0 0
i "GM_Standard_Kit"   38.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"   38.0000  0.3000  36  57 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   38.3346  0.1417  69  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   38.3357  0.1417  60  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   38.3439  0.1417  65  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   38.3440  0.1417  64  50 0 0.38 0 0
i "GM_Acoustic_Bass"   38.5000  0.4750  38  72 0 0.50 0 0
i "GM_Standard_Kit"   38.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"   38.5000  0.2000  44  50 0 0.30 0 0
i "GM_Percussive_Organ"   38.8333  0.1533  62  88 0 0.35 0 0
i "GM_Standard_Kit"   38.8333  0.3000  51  49 0 0.65 0 0
i "GM_Standard_Kit"   38.8333  0.2000  38  55 0 0.45 0 0
i "GM_Acoustic_Bass"   39.0000  0.4750  36  71 0 0.50 0 0
i "GM_Percussive_Organ"   39.0000  0.3067  65  98 0 0.35 0 0
i "GM_Standard_Kit"   39.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   39.0000  0.3000  36  53 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   39.0010  0.4250  60  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   39.0013  0.4250  53  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   39.0076  0.4250  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   39.0114  0.4250  57  59 0 0.38 0 0
i "GM_Percussive_Organ"   39.3333  0.1533  71  87 0 0.35 0 0
i "GM_Standard_Kit"   39.3333  0.2000  38  48 0 0.45 0 0
i "GM_Acoustic_Bass"   39.5000  0.4500  50  70 0 0.50 0 0
i "GM_Percussive_Organ"   39.5000  0.3067  77  96 0 0.35 0 0
i "GM_Standard_Kit"   39.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"   39.5000  0.2000  44  51 0 0.30 0 0
i "GM_Percussive_Organ"   39.8333  0.1533  72  80 0 0.35 0 0
i "GM_Standard_Kit"   39.8333  0.3000  51  46 0 0.65 0 0
i "GM_Standard_Kit"   39.8333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   39.8336  0.1417  64  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   39.8349  0.1417  53  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   39.8358  0.1417  57  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   39.8374  0.1417  60  53 0 0.38 0 0
i "GM_Acoustic_Bass"   40.0000  0.4750  43  78 0 0.50 0 0
i "GM_Rock_Organ"   40.0000  0.3067  65  98 0 0.50 0 0
i "GM_Standard_Kit"   40.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"   40.0000  0.3000  36  55 0 0.50 0 0
i "GM_Rock_Organ"   40.3333  0.1533  64  86 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   40.3373  0.1417  70  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   40.3381  0.1417  74  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   40.3428  0.1417  69  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   40.3428  0.1417  65  57 0 0.38 0 0
i "GM_Acoustic_Bass"   40.5000  0.4750  45  74 0 0.50 0 0
i "GM_Rock_Organ"   40.5000  0.3067  67  91 0 0.50 0 0
i "GM_Standard_Kit"   40.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"   40.5000  0.2000  44  51 0 0.30 0 0
i "GM_Rock_Organ"   40.8333  0.1533  70  81 0 0.50 0 0
i "GM_Standard_Kit"   40.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"   40.8333  0.2000  38  48 0 0.45 0 0
i "GM_Acoustic_Bass"   41.0000  0.4750  43  77 0 0.50 0 0
i "GM_Rock_Organ"   41.0000  0.3067  70  93 0 0.50 0 0
i "GM_Standard_Kit"   41.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"   41.0000  0.3000  36  59 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   41.0003  0.4250  62  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   41.0036  0.4250  65  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   41.0051  0.4250  58  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   41.0108  0.4250  69  57 0 0.38 0 0
i "GM_Rock_Organ"   41.3333  0.1533  69  82 0 0.50 0 0
i "GM_Acoustic_Bass"   41.5000  0.4500  35  71 0 0.50 0 0
i "GM_Rock_Organ"   41.5000  0.4600  74  91 0 0.50 0 0
i "GM_Standard_Kit"   41.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"   41.5000  0.2000  44  48 0 0.30 0 0
i "GM_Standard_Kit"   41.8333  0.3000  51  45 0 0.65 0 0
i "GM_Standard_Kit"   41.8333  0.2000  38  53 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   41.8349  0.1417  65  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   41.8361  0.1417  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   41.8379  0.1417  58  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   41.8424  0.1417  69  58 0 0.38 0 0
i "GM_Acoustic_Bass"   42.0000  0.4750  36  73 0 0.50 0 0
i "GM_Standard_Kit"   42.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"   42.0000  0.3000  36  53 0 0.50 0 0
i "GM_Church_Organ"   42.3333  0.1533  64  85 0 0.64 0 0
i "GM_Acoustic_Bass"   42.5000  0.4750  36  74 0 0.50 0 0
i "GM_Church_Organ"   42.5000  0.3067  60  98 0 0.64 0 0
i "GM_Standard_Kit"   42.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"   42.5000  0.2000  44  48 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"   42.5001  0.2833  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   42.5031  0.2833  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   42.5056  0.2833  58  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   42.5109  0.2833  67  55 0 0.38 0 0
i "GM_Church_Organ"   42.8333  0.1533  60  89 0 0.64 0 0
i "GM_Standard_Kit"   42.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   42.8415  0.4250  67  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   42.8417  0.4250  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   42.8420  0.4250  61  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   42.8435  0.4250  58  59 0 0.38 0 0
i "GM_Acoustic_Bass"   43.0000  0.4750  40  70 0 0.50 0 0
i "GM_Church_Organ"   43.0000  0.4600  60  91 0 0.64 0 0
i "GM_Standard_Kit"   43.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   43.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Bass"   43.5000  0.4500  40  76 0 0.50 0 0
i "GM_Church_Organ"   43.5000  0.3067  60  94 0 0.64 0 0
i "GM_Standard_Kit"   43.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"   43.5000  0.2000  44  52 0 0.30 0 0
i "GM_Church_Organ"   43.8333  0.1533  67  80 0 0.64 0 0
i "GM_Standard_Kit"   43.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   43.8362  0.1417  64  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   43.8371  0.1417  58  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   43.8417  0.1417  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   43.8419  0.1417  67  59 0 0.38 0 0
i "GM_Acoustic_Bass"   44.0000  0.4750  41  75 0 0.50 0 0
i "GM_Reed_Organ"   44.0000  0.3067  69  91 0 0.29 0 0
i "GM_Standard_Kit"   44.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"   44.0000  0.3000  36  57 0 0.50 0 0
i "GM_Reed_Organ"   44.3333  0.4600  70  83 0 0.29 0 0
i "GM_Standard_Kit"   44.3333  0.2000  38  54 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   44.3341  0.1417  69  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   44.3366  0.1417  67  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   44.3384  0.1417  72  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   44.3410  0.1417  64  53 0 0.38 0 0
i "GM_Acoustic_Bass"   44.5000  0.4750  38  76 0 0.50 0 0
i "GM_Standard_Kit"   44.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"   44.5000  0.2000  44  53 0 0.30 0 0
i "GM_Reed_Organ"   44.8333  0.1533  65  86 0 0.29 0 0
i "GM_Standard_Kit"   44.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Bass"   45.0000  0.4750  40  72 0 0.50 0 0
i "GM_Reed_Organ"   45.0000  0.3067  64  93 0 0.29 0 0
i "GM_Standard_Kit"   45.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"   45.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   45.0027  0.4250  67  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   45.0070  0.4250  64  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   45.0113  0.4250  69  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   45.0117  0.4250  72  55 0 0.38 0 0
i "GM_Reed_Organ"   45.3333  0.1533  69  89 0 0.29 0 0
i "GM_Acoustic_Bass"   45.5000  0.4500  42  78 0 0.50 0 0
i "GM_Reed_Organ"   45.5000  0.4600  67  93 0 0.29 0 0
i "GM_Standard_Kit"   45.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"   45.5000  0.2000  44  48 0 0.30 0 0
i "GM_Standard_Kit"   45.5000  0.2000  37  60 0 0.45 0 0
i "GM_Standard_Kit"   45.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   45.8357  0.1417  72  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   45.8359  0.1417  64  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   45.8430  0.1417  69  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   45.8445  0.1417  67  50 0 0.38 0 0
i "GM_Acoustic_Bass"   46.0000  0.4750  41  70 0 0.50 0 0
i "GM_Standard_Kit"   46.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   46.0000  0.3000  36  57 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   46.0020  0.4250  66  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   46.0093  0.4250  57  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   46.0094  0.4250  60  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   46.0108  0.4250  63  57 0 0.38 0 0
i "GM_Accordion"   46.3333  0.1533  69  86 0 0.43 0 0
i "GM_Standard_Kit"   46.3333  0.2000  38  52 0 0.45 0 0
i "GM_Accordion"   46.5000  0.3067  65  89 0 0.43 0 0
i "GM_Acoustic_Bass"   46.5000  0.4750  39  73 0 0.50 0 0
i "GM_Standard_Kit"   46.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"   46.5000  0.2000  44  50 0 0.30 0 0
i "GM_Accordion"   46.8333  0.1533  67  88 0 0.43 0 0
i "GM_Standard_Kit"   46.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   46.8357  0.1417  63  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   46.8397  0.1417  66  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   46.8414  0.1417  57  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   46.8428  0.1417  60  53 0 0.38 0 0
i "GM_Accordion"   47.0000  0.4600  70  94 0 0.43 0 0
i "GM_Acoustic_Bass"   47.0000  0.4750  36  74 0 0.50 0 0
i "GM_Standard_Kit"   47.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   47.0000  0.3000  36  58 0 0.50 0 0
i "GM_Standard_Kit"   47.0000  0.3000  48  77 0 0.40 0 0
i "GM_Standard_Kit"   47.3333  0.2000  38  46 0 0.45 0 0
i "GM_Standard_Kit"   47.3333  0.3000  47  74 0 0.45 0 0
i "GM_Accordion"   47.5000  0.3067  69  91 0 0.43 0 0
i "GM_Acoustic_Bass"   47.5000  0.4500  41  71 0 0.50 0 0
i "GM_Standard_Kit"   47.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"   47.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"   47.5000  0.3000  45  80 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   47.5007  0.4250  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   47.5050  0.4250  60  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   47.5057  0.4250  63  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   47.5067  0.4250  57  53 0 0.38 0 0
i "GM_Accordion"   47.8333  0.1533  64  79 0 0.43 0 0
i "GM_Standard_Kit"   47.8333  0.3000  51  48 0 0.65 0 0
i "GM_Standard_Kit"   47.8333  0.2000  38  47 0 0.45 0 0
i "GM_Standard_Kit"   47.8333  0.3000  43  77 0 0.55 0 0
i "GM_Acoustic_Bass"   48.0000  0.4750  46  77 0 0.50 0 0
i "GM_Harmonica"   48.0000  0.3067  74  99 0 0.58 0 0
i "GM_Standard_Kit"   48.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"   48.0000  0.3000  36  59 0 0.50 0 0
i "GM_Harmonica"   48.3333  0.1533  75  89 0 0.58 0 0
i "GM_Standard_Kit"   48.3333  0.2000  38  56 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   48.3373  0.4250  60  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   48.3433  0.4250  57  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   48.3438  0.4250  62  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   48.3450  0.4250  65  59 0 0.38 0 0
i "GM_Acoustic_Bass"   48.5000  0.4750  43  74 0 0.50 0 0
i "GM_Harmonica"   48.5000  0.3067  70  99 0 0.58 0 0
i "GM_Standard_Kit"   48.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"   48.5000  0.2000  44  50 0 0.30 0 0
i "GM_Harmonica"   48.8333  0.1533  64  81 0 0.58 0 0
i "GM_Standard_Kit"   48.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Bass"   49.0000  0.4750  46  78 0 0.50 0 0
i "GM_Harmonica"   49.0000  0.4600  65  90 0 0.58 0 0
i "GM_Standard_Kit"   49.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"   49.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   49.3344  0.1417  65  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   49.3349  0.1417  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   49.3356  0.1417  60  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   49.3428  0.1417  57  54 0 0.38 0 0
i "GM_Acoustic_Bass"   49.5000  0.4500  45  74 0 0.50 0 0
i "GM_Harmonica"   49.5000  0.4600  65  99 0 0.58 0 0
i "GM_Standard_Kit"   49.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"   49.5000  0.2000  44  50 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"   49.5001  0.4250  65  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   49.5048  0.4250  62  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   49.5065  0.4250  60  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   49.5087  0.4250  57  55 0 0.38 0 0
i "GM_Standard_Kit"   49.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Bass"   50.0000  0.4750  46  70 0 0.50 0 0
i "GM_Standard_Kit"   50.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"   50.0000  0.3000  36  58 0 0.50 0 0
i "GM_Tango_Accordion"   50.0000  0.4600  65  99 0 0.72 0 0
i "GM_Acoustic_Bass"   50.5000  0.4750  46  71 0 0.50 0 0
i "GM_Standard_Kit"   50.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"   50.5000  0.2000  44  49 0 0.30 0 0
i "GM_Tango_Accordion"   50.5000  0.3067  68  96 0 0.72 0 0
i "GM_Acoustic_Grand_Piano"   50.5057  0.2833  61  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   50.5066  0.2833  65  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   50.5077  0.2833  68  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   50.5107  0.2833  72  59 0 0.38 0 0
i "GM_Standard_Kit"   50.8333  0.3000  51  51 0 0.65 0 0
i "GM_Standard_Kit"   50.8333  0.2000  38  55 0 0.45 0 0
i "GM_Tango_Accordion"   50.8333  0.1533  72  79 0 0.72 0 0
i "GM_Acoustic_Grand_Piano"   50.8360  0.4250  72  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   50.8385  0.4250  61  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   50.8415  0.4250  65  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   50.8452  0.4250  68  50 0 0.38 0 0
i "GM_Acoustic_Bass"   51.0000  0.4750  49  77 0 0.50 0 0
i "GM_Standard_Kit"   51.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"   51.0000  0.3000  36  55 0 0.50 0 0
i "GM_Tango_Accordion"   51.0000  0.3067  67  89 0 0.72 0 0
i "GM_Standard_Kit"   51.3333  0.2000  38  56 0 0.45 0 0
i "GM_Tango_Accordion"   51.3333  0.1533  65  83 0 0.72 0 0
i "GM_Acoustic_Bass"   51.5000  0.4500  40  70 0 0.50 0 0
i "GM_Standard_Kit"   51.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"   51.5000  0.2000  44  51 0 0.30 0 0
i "GM_Tango_Accordion"   51.5000  0.3067  61  96 0 0.72 0 0
i "GM_Standard_Kit"   51.8333  0.3000  51  51 0 0.65 0 0
i "GM_Standard_Kit"   51.8333  0.2000  38  55 0 0.45 0 0
i "GM_Tango_Accordion"   51.8333  0.1533  65  88 0 0.72 0 0
i "GM_Acoustic_Grand_Piano"   51.8362  0.1417  58  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   51.8366  0.1417  55  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   51.8426  0.1417  65  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   51.8444  0.1417  61  54 0 0.38 0 0
i "GM_Acoustic_Bass"   52.0000  0.4750  41  75 0 0.50 0 0
i "GM_Standard_Kit"   52.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"   52.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Guitar_nylon"   52.3333  0.1533  60  82 0 0.36 0 0
i "GM_Standard_Kit"   52.3333  0.2000  38  53 0 0.45 0 0
i "GM_Acoustic_Bass"   52.5000  0.4750  43  70 0 0.50 0 0
i "GM_Acoustic_Guitar_nylon"   52.5000  0.3067  58  96 0 0.36 0 0
i "GM_Standard_Kit"   52.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"   52.5000  0.2000  44  53 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"   52.5045  0.2833  60  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   52.5045  0.2833  57  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   52.5083  0.2833  67  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   52.5097  0.2833  64  53 0 0.38 0 0
i "GM_Acoustic_Guitar_nylon"   52.8333  0.4600  64  79 0 0.36 0 0
i "GM_Standard_Kit"   52.8333  0.3000  51  48 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   52.8365  0.4250  64  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   52.8368  0.4250  69  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   52.8404  0.4250  67  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   52.8431  0.4250  72  58 0 0.38 0 0
i "GM_Acoustic_Bass"   53.0000  0.4750  40  70 0 0.50 0 0
i "GM_Standard_Kit"   53.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"   53.0000  0.3000  36  58 0 0.50 0 0
i "GM_Acoustic_Guitar_nylon"   53.3333  0.1533  69  87 0 0.36 0 0
i "GM_Acoustic_Bass"   53.5000  0.4500  37  74 0 0.50 0 0
i "GM_Acoustic_Guitar_nylon"   53.5000  0.3067  64  92 0 0.36 0 0
i "GM_Standard_Kit"   53.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"   53.5000  0.2000  44  47 0 0.30 0 0
i "GM_Acoustic_Guitar_nylon"   53.8333  0.1533  65  87 0 0.36 0 0
i "GM_Standard_Kit"   53.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   53.8366  0.1417  57  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   53.8375  0.1417  64  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   53.8398  0.1417  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   53.8415  0.1417  60  56 0 0.38 0 0
i "GM_Acoustic_Bass"   54.0000  0.4750  38  72 0 0.50 0 0
i "GM_Standard_Kit"   54.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   54.0000  0.3000  36  53 0 0.50 0 0
i "GM_Acoustic_Guitar_steel"   54.3333  0.1533  57  80 0 0.51 0 0
i "GM_Acoustic_Grand_Piano"   54.3336  0.4250  64  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   54.3358  0.4250  66  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   54.3367  0.4250  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   54.3392  0.4250  69  58 0 0.38 0 0
i "GM_Acoustic_Bass"   54.5000  0.4750  38  77 0 0.50 0 0
i "GM_Acoustic_Guitar_steel"   54.5000  0.3067  55  99 0 0.51 0 0
i "GM_Standard_Kit"   54.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"   54.5000  0.2000  44  48 0 0.30 0 0
i "GM_Acoustic_Guitar_steel"   54.8333  0.4600  52  81 0 0.51 0 0
i "GM_Standard_Kit"   54.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Bass"   55.0000  0.4750  42  77 0 0.50 0 0
i "GM_Standard_Kit"   55.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"   55.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Guitar_steel"   55.3333  0.1533  50  82 0 0.51 0 0
i "GM_Acoustic_Grand_Piano"   55.3384  0.1417  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   55.3425  0.1417  64  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   55.3435  0.1417  69  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   55.3449  0.1417  66  53 0 0.38 0 0
i "GM_Acoustic_Bass"   55.5000  0.4500  42  72 0 0.50 0 0
i "GM_Acoustic_Guitar_steel"   55.5000  0.3067  52  89 0 0.51 0 0
i "GM_Standard_Kit"   55.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"   55.5000  0.2000  44  48 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"   55.5006  0.4250  57  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   55.5044  0.4250  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   55.5045  0.4250  54  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   55.5058  0.4250  64  50 0 0.38 0 0
i "GM_Acoustic_Guitar_steel"   55.8333  0.1533  52  79 0 0.51 0 0
i "GM_Standard_Kit"   55.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Bass"   56.0000  0.4750  43  77 0 0.50 0 0
i "GM_Standard_Kit"   56.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   56.0000  0.3000  36  53 0 0.50 0 0
i "GM_Electric_Guitar_jazz"   56.3333  0.1533  58  82 0 0.66 0 0
i "GM_Standard_Kit"   56.3333  0.2000  38  50 0 0.45 0 0
i "GM_Acoustic_Bass"   56.5000  0.4750  41  77 0 0.50 0 0
i "GM_Electric_Guitar_jazz"   56.5000  0.3067  53  96 0 0.66 0 0
i "GM_Standard_Kit"   56.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"   56.5000  0.2000  44  53 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"   56.5053  0.2833  58  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   56.5056  0.2833  65  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   56.5096  0.2833  69  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   56.5110  0.2833  62  49 0 0.38 0 0
i "GM_Electric_Guitar_jazz"   56.8333  0.1533  50  81 0 0.66 0 0
i "GM_Standard_Kit"   56.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   56.8343  0.4250  58  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   56.8427  0.4250  65  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   56.8437  0.4250  62  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   56.8444  0.4250  69  55 0 0.38 0 0
i "GM_Acoustic_Bass"   57.0000  0.4750  46  71 0 0.50 0 0
i "GM_Electric_Guitar_jazz"   57.0000  0.4600  53  89 0 0.66 0 0
i "GM_Standard_Kit"   57.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"   57.0000  0.3000  36  53 0 0.50 0 0
i "GM_Acoustic_Bass"   57.5000  0.4500  37  77 0 0.50 0 0
i "GM_Electric_Guitar_jazz"   57.5000  0.3067  55  94 0 0.66 0 0
i "GM_Standard_Kit"   57.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"   57.5000  0.2000  44  50 0 0.30 0 0
i "GM_Electric_Guitar_jazz"   57.8333  0.1533  58  84 0 0.66 0 0
i "GM_Standard_Kit"   57.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   57.8347  0.1417  69  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   57.8409  0.1417  58  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   57.8432  0.1417  65  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   57.8450  0.1417  62  54 0 0.38 0 0
i "GM_Acoustic_Bass"   58.0000  0.4750  36  74 0 0.50 0 0
i "GM_Electric_Guitar_clean"   58.0000  0.3067  60  93 0 0.30 0 0
i "GM_Standard_Kit"   58.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"   58.0000  0.3000  36  58 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   58.0034  0.4250  73  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   58.0041  0.4250  67  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   58.0053  0.4250  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   58.0053  0.4250  70  57 0 0.38 0 0
i "GM_Electric_Guitar_clean"   58.3333  0.4600  58  87 0 0.30 0 0
i "GM_Acoustic_Bass"   58.5000  0.4750  38  71 0 0.50 0 0
i "GM_Standard_Kit"   58.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"   58.5000  0.2000  44  52 0 0.30 0 0
i "GM_Electric_Guitar_clean"   58.8333  0.1533  57  84 0 0.30 0 0
i "GM_Standard_Kit"   58.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   58.8355  0.1417  62  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   58.8360  0.1417  58  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   58.8396  0.1417  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   58.8419  0.1417  67  52 0 0.38 0 0
i "GM_Acoustic_Bass"   59.0000  0.4750  40  70 0 0.50 0 0
i "GM_Electric_Guitar_clean"   59.0000  0.3067  58  90 0 0.30 0 0
i "GM_Standard_Kit"   59.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"   59.0000  0.3000  36  54 0 0.50 0 0
i "GM_Electric_Guitar_clean"   59.3333  0.1533  59  89 0 0.30 0 0
i "GM_Standard_Kit"   59.3333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Bass"   59.5000  0.4500  48  74 0 0.50 0 0
i "GM_Electric_Guitar_clean"   59.5000  0.4600  58  98 0 0.30 0 0
i "GM_Standard_Kit"   59.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"   59.5000  0.2000  44  53 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"   59.5025  0.4250  70  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   59.5080  0.4250  74  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   59.5091  0.4250  67  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   59.5107  0.4250  64  56 0 0.38 0 0
i "GM_Standard_Kit"   59.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Bass"   60.0000  0.4750  41  75 0 0.50 0 0
i "GM_Electric_Guitar_muted"   60.0000  0.7667  53  90 0 0.44 0 0
i "GM_Standard_Kit"   60.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"   60.0000  0.3000  36  59 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   60.0020  0.4250  64  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   60.0027  0.4250  60  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   60.0029  0.4250  57  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   60.0030  0.4250  67  49 0 0.38 0 0
i "GM_Acoustic_Bass"   60.5000  0.4750  36  70 0 0.50 0 0
i "GM_Standard_Kit"   60.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"   60.5000  0.2000  44  51 0 0.30 0 0
i "GM_Electric_Guitar_muted"   60.8333  0.1533  52  82 0 0.44 0 0
i "GM_Standard_Kit"   60.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   60.8345  0.1417  57  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   60.8365  0.1417  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   60.8396  0.1417  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   60.8410  0.1417  64  56 0 0.38 0 0
i "GM_Acoustic_Bass"   61.0000  0.4750  40  77 0 0.50 0 0
i "GM_Electric_Guitar_muted"   61.0000  0.3067  52  91 0 0.44 0 0
i "GM_Standard_Kit"   61.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"   61.0000  0.3000  36  53 0 0.50 0 0
i "GM_Electric_Guitar_muted"   61.3333  0.1533  55  81 0 0.44 0 0
i "GM_Acoustic_Bass"   61.5000  0.4500  50  70 0 0.50 0 0
i "GM_Electric_Guitar_muted"   61.5000  0.3067  53  99 0 0.44 0 0
i "GM_Standard_Kit"   61.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"   61.5000  0.2000  44  51 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"   61.5033  0.4250  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   61.5042  0.4250  57  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   61.5059  0.4250  67  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   61.5086  0.4250  60  49 0 0.38 0 0
i "GM_Electric_Guitar_muted"   61.8333  0.1533  55  88 0 0.44 0 0
i "GM_Standard_Kit"   61.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"   61.8333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Bass"   62.0000  0.4750  43  75 0 0.50 0 0
i "GM_Overdriven_Guitar"   62.0000  0.7667  58  96 0 0.59 0 0
i "GM_Standard_Kit"   62.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"   62.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   62.0004  0.4250  69  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   62.0027  0.4250  58  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   62.0076  0.4250  65  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   62.0116  0.4250  62  56 0 0.38 0 0
i "GM_Standard_Kit"   62.3333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Bass"   62.5000  0.4750  46  70 0 0.50 0 0
i "GM_Standard_Kit"   62.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"   62.5000  0.2000  44  49 0 0.30 0 0
i "GM_Overdriven_Guitar"   62.8333  0.1533  55  87 0 0.59 0 0
i "GM_Standard_Kit"   62.8333  0.3000  51  48 0 0.65 0 0
i "GM_Standard_Kit"   62.8333  0.2000  38  52 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   62.8366  0.1417  69  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   62.8408  0.1417  74  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   62.8430  0.1417  70  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   62.8443  0.1417  65  58 0 0.38 0 0
i "GM_Acoustic_Bass"   63.0000  0.4750  43  71 0 0.50 0 0
i "GM_Overdriven_Guitar"   63.0000  0.3067  57  98 0 0.59 0 0
i "GM_Standard_Kit"   63.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"   63.0000  0.3000  36  59 0 0.50 0 0
i "GM_Standard_Kit"   63.0000  0.3000  48  72 0 0.40 0 0
i "GM_Overdriven_Guitar"   63.3333  0.1533  55  87 0 0.59 0 0
i "GM_Standard_Kit"   63.3333  0.3000  47  77 0 0.45 0 0
i "GM_Acoustic_Bass"   63.5000  0.4500  44  76 0 0.50 0 0
i "GM_Overdriven_Guitar"   63.5000  0.3067  57  98 0 0.59 0 0
i "GM_Standard_Kit"   63.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"   63.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"   63.5000  0.3000  45  80 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   63.5014  0.4250  74  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   63.5035  0.4250  67  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   63.5042  0.4250  70  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   63.5052  0.4250  64  49 0 0.38 0 0
i "GM_Overdriven_Guitar"   63.8333  0.1533  57  84 0 0.59 0 0
i "GM_Standard_Kit"   63.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"   63.8333  0.3000  43  74 0 0.55 0 0
i "GM_Acoustic_Bass"   64.0000  0.4750  43  75 0 0.50 0 0
i "GM_Distortion_Guitar"   64.0000  0.7667  65  99 0 0.73 0 0
i "GM_Standard_Kit"   64.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"   64.0000  0.3000  36  53 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   64.3352  0.1417  58  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   64.3386  0.1417  65  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   64.3395  0.1417  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   64.3406  0.1417  62  54 0 0.38 0 0
i "GM_Acoustic_Bass"   64.5000  0.4750  45  75 0 0.50 0 0
i "GM_Standard_Kit"   64.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"   64.5000  0.2000  44  53 0 0.30 0 0
i "GM_Distortion_Guitar"   64.8333  0.1533  58  80 0 0.73 0 0
i "GM_Standard_Kit"   64.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"   64.8333  0.2000  38  52 0 0.45 0 0
i "GM_Acoustic_Bass"   65.0000  0.4750  46  74 0 0.50 0 0
i "GM_Distortion_Guitar"   65.0000  0.3067  58  98 0 0.73 0 0
i "GM_Standard_Kit"   65.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"   65.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   65.0050  0.4250  74  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   65.0063  0.4250  69  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   65.0088  0.4250  65  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   65.0089  0.4250  70  51 0 0.38 0 0
i "GM_Distortion_Guitar"   65.3333  0.1533  60  88 0 0.73 0 0
i "GM_Acoustic_Bass"   65.5000  0.4500  35  74 0 0.50 0 0
i "GM_Distortion_Guitar"   65.5000  0.3067  62  96 0 0.73 0 0
i "GM_Standard_Kit"   65.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"   65.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"   65.5000  0.2000  37  60 0 0.45 0 0
i "GM_Distortion_Guitar"   65.8333  0.1533  64  85 0 0.73 0 0
i "GM_Standard_Kit"   65.8333  0.3000  51  48 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   65.8345  0.1417  74  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   65.8350  0.1417  65  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   65.8407  0.1417  69  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   65.8432  0.1417  70  57 0 0.38 0 0
i "GM_Acoustic_Bass"   66.0000  0.4750  36  76 0 0.50 0 0
i "GM_Standard_Kit"   66.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"   66.0000  0.3000  36  58 0 0.50 0 0
i "GM_Guitar_harmonics"   66.3333  0.1533  67  88 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   66.3369  0.1417  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   66.3401  0.1417  58  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   66.3408  0.1417  67  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   66.3426  0.1417  64  57 0 0.38 0 0
i "GM_Acoustic_Bass"   66.5000  0.4750  31  73 0 0.50 0 0
i "GM_Guitar_harmonics"   66.5000  0.3067  67  98 0 0.38 0 0
i "GM_Standard_Kit"   66.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"   66.5000  0.2000  44  47 0 0.30 0 0
i "GM_Acoustic_Bass"   66.8333  0.1500  32  64 0 0.50 0 0
i "GM_Guitar_harmonics"   66.8333  0.4600  63  84 0 0.38 0 0
i "GM_Standard_Kit"   66.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Bass"   67.0000  0.4750  34  75 0 0.50 0 0
i "GM_Standard_Kit"   67.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"   67.0000  0.3000  36  59 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   67.0005  0.4250  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   67.0042  0.4250  64  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   67.0047  0.4250  58  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   67.0081  0.4250  67  57 0 0.38 0 0
i "GM_Guitar_harmonics"   67.3333  0.1533  62  87 0 0.38 0 0
i "GM_Acoustic_Bass"   67.5000  0.4500  40  76 0 0.50 0 0
i "GM_Guitar_harmonics"   67.5000  0.3067  64  94 0 0.38 0 0
i "GM_Standard_Kit"   67.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"   67.5000  0.2000  44  53 0 0.30 0 0
i "GM_Guitar_harmonics"   67.8333  0.1533  70  87 0 0.38 0 0
i "GM_Standard_Kit"   67.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   67.8352  0.1417  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   67.8378  0.1417  58  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   67.8411  0.1417  62  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   67.8449  0.1417  67  56 0 0.38 0 0
i "GM_Acoustic_Bass"   68.0000  0.4750  41  81 0 0.52 0 0
i "GM_Standard_Kit"   68.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   68.0000  0.3000  36  53 0 0.50 0 0
i "GM_Standard_Kit"   68.0000  0.5000  49  74 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"   68.3334  0.1417  60  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   68.3370  0.1417  57  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   68.3381  0.1417  64  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   68.3404  0.1417  67  59 0 0.38 0 0
i "GM_Acoustic_Bass"   68.5000  0.4750  45  87 0 0.52 0 0
i "GM_Standard_Kit"   68.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"   68.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"   68.8333  0.3000  51  49 0 0.65 0 0
i "GM_Standard_Kit"   68.8333  0.2000  38  46 0 0.45 0 0
i "GM_Acoustic_Bass"   69.0000  0.4750  45  85 0 0.52 0 0
i "GM_Standard_Kit"   69.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"   69.0000  0.3000  36  58 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   69.0024  0.4250  57  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   69.0032  0.4250  64  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   69.0092  0.4250  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   69.0107  0.4250  67  57 0 0.38 0 0
i "GM_Acoustic_Bass"   69.5000  0.4500  37  83 0 0.52 0 0
i "GM_Standard_Kit"   69.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"   69.5000  0.2000  44  48 0 0.30 0 0
i "GM_Acoustic_Bass"   69.8333  0.1333  40  84 0 0.52 0 0
i "GM_Standard_Kit"   69.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   69.8346  0.1417  67  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   69.8352  0.1417  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   69.8402  0.1417  57  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   69.8406  0.1417  60  51 0 0.38 0 0
i "GM_Electric_Bass_finger"   70.0000  0.4750  38  80 0 0.67 0 0
i "GM_Standard_Kit"   70.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   70.0000  0.3000  36  57 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   70.3340  0.1417  60  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   70.3352  0.1417  65  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   70.3363  0.1417  64  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   70.3436  0.1417  69  54 0 0.38 0 0
i "GM_Electric_Bass_finger"   70.5000  0.4750  38  82 0 0.67 0 0
i "GM_Standard_Kit"   70.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"   70.5000  0.2000  44  47 0 0.30 0 0
i "GM_Electric_Bass_finger"   70.8333  0.1500  39  74 0 0.67 0 0
i "GM_Standard_Kit"   70.8333  0.3000  51  46 0 0.65 0 0
i "GM_Electric_Bass_finger"   71.0000  0.4750  38  84 0 0.67 0 0
i "GM_Standard_Kit"   71.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"   71.0000  0.3000  36  53 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   71.0030  0.4250  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   71.0036  0.4250  57  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   71.0108  0.4250  53  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   71.0118  0.4250  64  50 0 0.38 0 0
i "GM_Electric_Bass_finger"   71.5000  0.4500  44  88 0 0.67 0 0
i "GM_Standard_Kit"   71.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"   71.5000  0.2000  44  53 0 0.30 0 0
i "GM_Electric_Bass_finger"   71.8333  0.1333  45  84 0 0.67 0 0
i "GM_Standard_Kit"   71.8333  0.3000  51  50 0 0.65 0 0
i "GM_Standard_Kit"   71.8333  0.2000  38  52 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   71.8383  0.1417  60  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   71.8415  0.1417  53  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   71.8420  0.1417  57  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   71.8438  0.1417  64  56 0 0.38 0 0
i "GM_Electric_Bass_pick"   72.0000  0.4750  43  88 0 0.31 0 0
i "GM_Standard_Kit"   72.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   72.0000  0.3000  36  58 0 0.50 0 0
i "GM_Electric_Bass_pick"   72.5000  0.4750  45  87 0 0.31 0 0
i "GM_Standard_Kit"   72.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"   72.5000  0.2000  44  49 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"   72.5003  0.2833  70  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   72.5004  0.2833  69  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   72.5029  0.2833  74  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   72.5041  0.2833  65  55 0 0.38 0 0
i "GM_Standard_Kit"   72.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   72.8357  0.4250  58  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   72.8400  0.4250  65  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   72.8434  0.4250  62  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   72.8434  0.4250  69  52 0 0.38 0 0
i "GM_Electric_Bass_pick"   73.0000  0.4750  41  87 0 0.31 0 0
i "GM_Standard_Kit"   73.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"   73.0000  0.3000  36  53 0 0.50 0 0
i "GM_Electric_Bass_pick"   73.5000  0.4500  43  85 0 0.31 0 0
i "GM_Standard_Kit"   73.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"   73.5000  0.2000  44  50 0 0.30 0 0
i "GM_Electric_Bass_pick"   73.8333  0.1333  38  84 0 0.31 0 0
i "GM_Standard_Kit"   73.8333  0.3000  51  48 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   73.8358  0.1417  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   73.8377  0.1417  58  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   73.8409  0.1417  65  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   73.8420  0.1417  62  55 0 0.38 0 0
i "GM_Fretless_Bass"   74.0000  0.4750  36  80 0 0.45 0 0
i "GM_Standard_Kit"   74.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"   74.0000  0.3000  36  59 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   74.0039  0.4250  64  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   74.0085  0.4250  58  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   74.0093  0.4250  62  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   74.0107  0.4250  67  50 0 0.38 0 0
i "GM_Fretless_Bass"   74.5000  0.4750  38  86 0 0.45 0 0
i "GM_Standard_Kit"   74.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"   74.5000  0.2000  44  48 0 0.30 0 0
i "GM_Fretless_Bass"   74.8333  0.1500  40  74 0 0.45 0 0
i "GM_Standard_Kit"   74.8333  0.3000  51  48 0 0.65 0 0
i "GM_Standard_Kit"   74.8333  0.2000  38  52 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   74.8344  0.1417  64  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   74.8348  0.1417  67  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   74.8356  0.1417  62  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   74.8430  0.1417  58  53 0 0.38 0 0
i "GM_Fretless_Bass"   75.0000  0.4750  34  83 0 0.45 0 0
i "GM_Standard_Kit"   75.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"   75.0000  0.3000  36  53 0 0.50 0 0
i "GM_Fretless_Bass"   75.5000  0.4500  42  85 0 0.45 0 0
i "GM_Standard_Kit"   75.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"   75.5000  0.2000  44  53 0 0.30 0 0
i "GM_Standard_Kit"   75.5000  0.2000  37  60 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   75.5093  0.4250  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   75.5101  0.4250  58  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   75.5103  0.4250  64  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   75.5112  0.4250  67  51 0 0.38 0 0
i "GM_Fretless_Bass"   75.8333  0.1333  43  84 0 0.45 0 0
i "GM_Standard_Kit"   75.8333  0.3000  51  46 0 0.65 0 0
i "GM_Slap_Bass_1"   76.0000  0.4750  41  83 0 0.60 0 0
i "GM_Standard_Kit"   76.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"   76.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   76.0037  0.4250  67  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   76.0089  0.4250  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   76.0101  0.4250  72  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   76.0113  0.4250  69  58 0 0.38 0 0
i "GM_Slap_Bass_1"   76.5000  0.4750  41  86 0 0.60 0 0
i "GM_Standard_Kit"   76.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"   76.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"   76.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   76.8415  0.1417  69  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   76.8419  0.1417  64  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   76.8444  0.1417  67  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   76.8446  0.1417  72  50 0 0.38 0 0
i "GM_Slap_Bass_1"   77.0000  0.4750  41  84 0 0.60 0 0
i "GM_Standard_Kit"   77.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   77.0000  0.3000  36  58 0 0.50 0 0
i "GM_Slap_Bass_1"   77.5000  0.4500  48  81 0 0.60 0 0
i "GM_Standard_Kit"   77.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"   77.5000  0.2000  44  52 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"   77.5013  0.4250  72  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   77.5073  0.4250  67  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   77.5108  0.4250  64  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   77.5117  0.4250  69  59 0 0.38 0 0
i "GM_Slap_Bass_1"   77.8333  0.1333  43  84 0 0.60 0 0
i "GM_Standard_Kit"   77.8333  0.3000  51  47 0 0.65 0 0
i "GM_Slap_Bass_2"   78.0000  0.4750  41  85 0 0.75 0 0
i "GM_Standard_Kit"   78.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   78.0000  0.3000  36  59 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   78.3353  0.4250  67  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   78.3362  0.4250  60  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   78.3363  0.4250  63  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   78.3450  0.4250  57  59 0 0.38 0 0
i "GM_Slap_Bass_2"   78.5000  0.4750  39  88 0 0.75 0 0
i "GM_Standard_Kit"   78.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"   78.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"   78.8333  0.3000  51  48 0 0.65 0 0
i "GM_Standard_Kit"   78.8333  0.2000  38  52 0 0.45 0 0
i "GM_Slap_Bass_2"   79.0000  0.4750  41  87 0 0.75 0 0
i "GM_Standard_Kit"   79.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   79.0000  0.3000  36  59 0 0.50 0 0
i "GM_Standard_Kit"   79.0000  0.3000  48  74 0 0.40 0 0
i "GM_Standard_Kit"   79.3333  0.2000  38  56 0 0.45 0 0
i "GM_Standard_Kit"   79.3333  0.3000  47  79 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   79.3350  0.1417  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   79.3410  0.1417  57  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   79.3414  0.1417  63  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   79.3418  0.1417  67  49 0 0.38 0 0
i "GM_Slap_Bass_2"   79.5000  0.4500  47  83 0 0.75 0 0
i "GM_Standard_Kit"   79.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"   79.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"   79.5000  0.3000  45  75 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   79.5016  0.4250  63  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   79.5016  0.4250  69  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   79.5042  0.4250  67  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   79.5071  0.4250  72  52 0 0.38 0 0
i "GM_Slap_Bass_2"   79.8333  0.1333  48  84 0 0.75 0 0
i "GM_Standard_Kit"   79.8333  0.3000  51  49 0 0.65 0 0
i "GM_Standard_Kit"   79.8333  0.3000  43  72 0 0.55 0 0
i "GM_Standard_Kit"   80.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"   80.0000  0.3000  36  53 0 0.50 0 0
i "GM_Synth_Bass_1"   80.0000  0.4750  46  80 0 0.39 0 0
i "GM_Standard_Kit"   80.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"   80.5000  0.2000  44  48 0 0.30 0 0
i "GM_Synth_Bass_1"   80.5000  0.4750  50  82 0 0.39 0 0
i "GM_Acoustic_Grand_Piano"   80.5009  0.2833  60  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   80.5010  0.2833  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   80.5035  0.2833  57  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   80.5056  0.2833  62  56 0 0.38 0 0
i "GM_Standard_Kit"   80.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"   80.8333  0.2000  38  48 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   80.8346  0.4250  57  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   80.8356  0.4250  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   80.8372  0.4250  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   80.8448  0.4250  60  56 0 0.38 0 0
i "GM_Standard_Kit"   81.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"   81.0000  0.3000  36  55 0 0.50 0 0
i "GM_Synth_Bass_1"   81.0000  0.4750  53  81 0 0.39 0 0
i "GM_Standard_Kit"   81.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"   81.5000  0.2000  44  47 0 0.30 0 0
i "GM_Synth_Bass_1"   81.5000  0.4500  53  84 0 0.39 0 0
i "GM_Standard_Kit"   81.8333  0.3000  51  48 0 0.65 0 0
i "GM_Synth_Bass_1"   81.8333  0.1333  48  84 0 0.39 0 0
i "GM_Acoustic_Grand_Piano"   81.8363  0.1417  72  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   81.8407  0.1417  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   81.8411  0.1417  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   81.8417  0.1417  69  59 0 0.38 0 0
i "GM_Standard_Kit"   82.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"   82.0000  0.3000  36  55 0 0.50 0 0
i "GM_Synth_Bass_2"   82.0000  0.4750  46  86 0 0.53 0 0
i "GM_Acoustic_Grand_Piano"   82.3393  0.1417  72  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   82.3401  0.1417  61  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   82.3442  0.1417  68  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   82.3444  0.1417  65  55 0 0.38 0 0
i "GM_Standard_Kit"   82.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"   82.5000  0.2000  44  53 0 0.30 0 0
i "GM_Synth_Bass_2"   82.5000  0.4750  49  81 0 0.53 0 0
i "GM_Standard_Kit"   82.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"   83.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"   83.0000  0.3000  36  54 0 0.50 0 0
i "GM_Synth_Bass_2"   83.0000  0.4750  46  85 0 0.53 0 0
i "GM_Acoustic_Grand_Piano"   83.0010  0.4250  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   83.0020  0.4250  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   83.0072  0.4250  61  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   83.0076  0.4250  70  55 0 0.38 0 0
i "GM_Standard_Kit"   83.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"   83.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"   83.5000  0.2000  37  60 0 0.45 0 0
i "GM_Synth_Bass_2"   83.5000  0.4500  40  87 0 0.53 0 0
i "GM_Standard_Kit"   83.8333  0.3000  51  50 0 0.65 0 0
i "GM_Synth_Bass_2"   83.8333  0.1333  43  84 0 0.53 0 0
i "GM_Acoustic_Grand_Piano"   83.8334  0.1417  61  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   83.8356  0.1417  58  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   83.8435  0.1417  55  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   83.8436  0.1417  65  57 0 0.38 0 0
i "GM_Acoustic_Bass"   84.0000  0.4750  41  78 0 0.50 0 0
i "GM_Standard_Kit"   84.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"   84.0000  0.3000  36  53 0 0.50 0 0
i "GM_Violin"   84.0000  0.4600  72  93 0 0.68 0 0
i "GM_Acoustic_Grand_Piano"   84.3369  0.4250  69  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   84.3397  0.4250  72  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   84.3412  0.4250  67  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   84.3448  0.4250  64  56 0 0.38 0 0
i "GM_Acoustic_Bass"   84.5000  0.4750  45  78 0 0.50 0 0
i "GM_Standard_Kit"   84.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"   84.5000  0.2000  44  50 0 0.30 0 0
i "GM_Violin"   84.5000  0.3067  69  97 0 0.68 0 0
i "GM_Standard_Kit"   84.8333  0.3000  51  51 0 0.65 0 0
i "GM_Violin"   84.8333  0.1533  71  86 0 0.68 0 0
i "GM_Acoustic_Bass"   85.0000  0.4750  48  71 0 0.50 0 0
i "GM_Standard_Kit"   85.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"   85.0000  0.3000  36  56 0 0.50 0 0
i "GM_Violin"   85.0000  0.3067  70  98 0 0.68 0 0
i "GM_Violin"   85.3333  0.1533  74  86 0 0.68 0 0
i "GM_Acoustic_Grand_Piano"   85.3413  0.1417  67  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   85.3415  0.1417  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   85.3416  0.1417  64  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   85.3435  0.1417  57  52 0 0.38 0 0
i "GM_Acoustic_Bass"   85.5000  0.4500  37  75 0 0.50 0 0
i "GM_Standard_Kit"   85.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"   85.5000  0.2000  44  49 0 0.30 0 0
i "GM_Violin"   85.5000  0.3067  72  99 0 0.68 0 0
i "GM_Acoustic_Grand_Piano"   85.5022  0.4250  72  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   85.5031  0.4250  69  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   85.5043  0.4250  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   85.5068  0.4250  67  55 0 0.38 0 0
i "GM_Standard_Kit"   85.8333  0.3000  51  46 0 0.65 0 0
i "GM_Violin"   85.8333  0.1533  72  80 0 0.68 0 0
i "GM_Acoustic_Bass"   86.0000  0.4750  38  70 0 0.50 0 0
i "GM_Standard_Kit"   86.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"   86.0000  0.3000  36  56 0 0.50 0 0
i "GM_Viola"   86.0000  0.3067  60  90 0 0.32 0 0
i "GM_Standard_Kit"   86.3333  0.2000  38  46 0 0.45 0 0
i "GM_Viola"   86.3333  0.1533  53  83 0 0.32 0 0
i "GM_Acoustic_Grand_Piano"   86.3335  0.1417  66  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   86.3348  0.1417  69  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   86.3353  0.1417  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   86.3430  0.1417  63  59 0 0.38 0 0
i "GM_Acoustic_Bass"   86.5000  0.4750  36  77 0 0.50 0 0
i "GM_Standard_Kit"   86.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"   86.5000  0.2000  44  48 0 0.30 0 0
i "GM_Viola"   86.5000  0.3067  53  91 0 0.32 0 0
i "GM_Standard_Kit"   86.8333  0.3000  51  50 0 0.65 0 0
i "GM_Viola"   86.8333  0.1533  55  83 0 0.32 0 0
i "GM_Acoustic_Bass"   87.0000  0.4750  33  76 0 0.50 0 0
i "GM_Standard_Kit"   87.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"   87.0000  0.3000  36  59 0 0.50 0 0
i "GM_Viola"   87.0000  0.4600  54  94 0 0.32 0 0
i "GM_Acoustic_Grand_Piano"   87.0012  0.4250  66  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   87.0039  0.4250  69  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   87.0087  0.4250  60  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   87.0098  0.4250  64  54 0 0.38 0 0
i "GM_Acoustic_Bass"   87.5000  0.4500  42  73 0 0.50 0 0
i "GM_Standard_Kit"   87.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"   87.5000  0.2000  44  51 0 0.30 0 0
i "GM_Viola"   87.5000  0.4600  54  96 0 0.32 0 0
i "GM_Standard_Kit"   87.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   87.8364  0.1417  54  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   87.8386  0.1417  64  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   87.8417  0.1417  57  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   87.8434  0.1417  60  58 0 0.38 0 0
i "GM_Acoustic_Bass"   88.0000  0.4750  43  77 0 0.50 0 0
i "GM_Cello"   88.0000  0.3067  53  90 0 0.47 0 0
i "GM_Standard_Kit"   88.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"   88.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   88.0038  0.4250  69  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   88.0040  0.4250  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   88.0047  0.4250  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   88.0098  0.4250  58  56 0 0.38 0 0
i "GM_Cello"   88.3333  0.1533  53  89 0 0.47 0 0
i "GM_Acoustic_Bass"   88.5000  0.4750  45  78 0 0.50 0 0
i "GM_Cello"   88.5000  0.3067  50  94 0 0.47 0 0
i "GM_Standard_Kit"   88.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"   88.5000  0.2000  44  47 0 0.30 0 0
i "GM_Acoustic_Bass"   88.8333  0.1500  46  64 0 0.50 0 0
i "GM_Cello"   88.8333  0.1533  46  81 0 0.47 0 0
i "GM_Standard_Kit"   88.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   88.8339  0.1417  70  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   88.8363  0.1417  69  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   88.8373  0.1417  65  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   88.8421  0.1417  74  51 0 0.38 0 0
i "GM_Acoustic_Bass"   89.0000  0.4750  43  74 0 0.50 0 0
i "GM_Cello"   89.0000  0.3067  50  94 0 0.47 0 0
i "GM_Standard_Kit"   89.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"   89.0000  0.3000  36  57 0 0.50 0 0
i "GM_Cello"   89.3333  0.1533  46  87 0 0.47 0 0
i "GM_Acoustic_Bass"   89.5000  0.4500  35  70 0 0.50 0 0
i "GM_Cello"   89.5000  0.4600  50  89 0 0.47 0 0
i "GM_Standard_Kit"   89.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"   89.5000  0.2000  44  47 0 0.30 0 0
i "GM_Standard_Kit"   89.5000  0.2000  37  60 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   89.5043  0.4250  70  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   89.5046  0.4250  65  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   89.5060  0.4250  69  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   89.5063  0.4250  74  51 0 0.38 0 0
i "GM_Standard_Kit"   89.8333  0.3000  51  51 0 0.65 0 0
i "GM_Contrabass"   90.0000  0.4750  36  80 0 0.61 0 0
i "GM_Standard_Kit"   90.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"   90.0000  0.3000  36  54 0 0.50 0 0
i "GM_Standard_Kit"   90.3333  0.2000  38  56 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   90.3342  0.4250  73  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   90.3351  0.4250  64  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   90.3364  0.4250  67  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   90.3399  0.4250  70  54 0 0.38 0 0
i "GM_Contrabass"   90.5000  0.4750  36  86 0 0.61 0 0
i "GM_Standard_Kit"   90.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"   90.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"   90.8333  0.3000  51  50 0 0.65 0 0
i "GM_Contrabass"   91.0000  0.4750  34  88 0 0.61 0 0
i "GM_Standard_Kit"   91.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   91.0000  0.3000  36  59 0 0.50 0 0
i "GM_Standard_Kit"   91.3333  0.2000  38  53 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   91.3376  0.1417  70  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   91.3403  0.1417  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   91.3404  0.1417  64  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   91.3420  0.1417  74  50 0 0.38 0 0
i "GM_Contrabass"   91.5000  0.4500  48  81 0 0.61 0 0
i "GM_Standard_Kit"   91.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"   91.5000  0.2000  44  49 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"   91.5003  0.4250  64  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   91.5075  0.4250  67  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   91.5108  0.4250  61  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   91.5108  0.4250  58  53 0 0.38 0 0
i "GM_Contrabass"   91.8333  0.1333  43  84 0 0.61 0 0
i "GM_Standard_Kit"   91.8333  0.3000  51  48 0 0.65 0 0
i "GM_Standard_Kit"   91.8333  0.2000  38  52 0 0.45 0 0
i "GM_Acoustic_Bass"   92.0000  0.4750  41  70 0 0.50 0 0
i "GM_Standard_Kit"   92.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"   92.0000  0.3000  36  53 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   92.0010  0.4250  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   92.0040  0.4250  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   92.0104  0.4250  57  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   92.0119  0.4250  67  55 0 0.38 0 0
i "GM_Tremolo_Strings"   92.3333  0.1533  69  87 0 0.25 0 0
i "GM_Acoustic_Bass"   92.5000  0.4750  38  70 0 0.50 0 0
i "GM_Standard_Kit"   92.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"   92.5000  0.2000  44  47 0 0.30 0 0
i "GM_Tremolo_Strings"   92.5000  0.3067  65  99 0 0.25 0 0
i "GM_Standard_Kit"   92.8333  0.3000  51  50 0 0.65 0 0
i "GM_Tremolo_Strings"   92.8333  0.4600  65  82 0 0.25 0 0
i "GM_Acoustic_Grand_Piano"   92.8336  0.1417  67  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   92.8340  0.1417  72  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   92.8401  0.1417  69  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   92.8446  0.1417  64  49 0 0.38 0 0
i "GM_Acoustic_Bass"   93.0000  0.4750  40  77 0 0.50 0 0
i "GM_Standard_Kit"   93.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"   93.0000  0.3000  36  59 0 0.50 0 0
i "GM_Tremolo_Strings"   93.3333  0.1533  69  86 0 0.25 0 0
i "GM_Acoustic_Bass"   93.5000  0.4500  44  75 0 0.50 0 0
i "GM_Standard_Kit"   93.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"   93.5000  0.2000  44  47 0 0.30 0 0
i "GM_Tremolo_Strings"   93.5000  0.3067  72  99 0 0.25 0 0
i "GM_Acoustic_Grand_Piano"   93.5019  0.4250  67  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   93.5019  0.4250  64  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   93.5043  0.4250  72  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   93.5064  0.4250  69  50 0 0.38 0 0
i "GM_Standard_Kit"   93.8333  0.3000  51  49 0 0.65 0 0
i "GM_Standard_Kit"   93.8333  0.2000  38  50 0 0.45 0 0
i "GM_Tremolo_Strings"   93.8333  0.1533  77  84 0 0.25 0 0
i "GM_Acoustic_Bass"   94.0000  0.4750  43  71 0 0.50 0 0
i "GM_Pizzicato_Strings"   94.0000  0.7667  58  93 0 0.40 0 0
i "GM_Standard_Kit"   94.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"   94.0000  0.3000  36  53 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   94.3359  0.1417  70  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   94.3386  0.1417  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   94.3427  0.1417  65  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   94.3441  0.1417  74  55 0 0.38 0 0
i "GM_Acoustic_Bass"   94.5000  0.4750  45  78 0 0.50 0 0
i "GM_Standard_Kit"   94.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"   94.5000  0.2000  44  51 0 0.30 0 0
i "GM_Pizzicato_Strings"   94.8333  0.1533  51  82 0 0.40 0 0
i "GM_Standard_Kit"   94.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Bass"   95.0000  0.4750  48  72 0 0.50 0 0
i "GM_Pizzicato_Strings"   95.0000  0.3067  52  99 0 0.40 0 0
i "GM_Standard_Kit"   95.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"   95.0000  0.3000  36  58 0 0.50 0 0
i "GM_Standard_Kit"   95.0000  0.3000  48  73 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"   95.0008  0.4250  64  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   95.0013  0.4250  62  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   95.0095  0.4250  58  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   95.0110  0.4250  67  59 0 0.38 0 0
i "GM_Pizzicato_Strings"   95.3333  0.1533  51  88 0 0.40 0 0
i "GM_Standard_Kit"   95.3333  0.2000  38  52 0 0.45 0 0
i "GM_Standard_Kit"   95.3333  0.3000  47  72 0 0.45 0 0
i "GM_Acoustic_Bass"   95.5000  0.4500  42  72 0 0.50 0 0
i "GM_Pizzicato_Strings"   95.5000  0.3067  58  93 0 0.40 0 0
i "GM_Standard_Kit"   95.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"   95.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"   95.5000  0.3000  45  81 0 0.50 0 0
i "GM_Pizzicato_Strings"   95.8333  0.1533  57  83 0 0.40 0 0
i "GM_Standard_Kit"   95.8333  0.3000  51  45 0 0.65 0 0
i "GM_Standard_Kit"   95.8333  0.3000  43  74 0 0.55 0 0
i "GM_Acoustic_Grand_Piano"   95.8361  0.1417  64  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   95.8383  0.1417  67  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   95.8437  0.1417  73  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   95.8447  0.1417  70  59 0 0.38 0 0
i "GM_Acoustic_Bass"   96.0000  0.4750  43  77 0 0.50 0 0
i "GM_Orchestral_Harp"   96.0000  0.4600  65  91 0 0.55 0 0
i "GM_Standard_Kit"   96.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   96.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"   96.0011  0.4250  74  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   96.0012  0.4250  69  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   96.0018  0.4250  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   96.0056  0.4250  70  55 0 0.38 0 0
i "GM_Acoustic_Bass"   96.5000  0.4750  46  72 0 0.50 0 0
i "GM_Orchestral_Harp"   96.5000  0.3067  62  91 0 0.55 0 0
i "GM_Standard_Kit"   96.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"   96.5000  0.2000  44  48 0 0.30 0 0
i "GM_Orchestral_Harp"   96.8333  0.1533  60  87 0 0.55 0 0
i "GM_Standard_Kit"   96.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"   96.8338  0.1417  74  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   96.8404  0.1417  69  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   96.8428  0.1417  70  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   96.8439  0.1417  65  49 0 0.38 0 0
i "GM_Acoustic_Bass"   97.0000  0.4750  46  71 0 0.50 0 0
i "GM_Orchestral_Harp"   97.0000  0.3067  58  96 0 0.55 0 0
i "GM_Standard_Kit"   97.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"   97.0000  0.3000  36  58 0 0.50 0 0
i "GM_Orchestral_Harp"   97.3333  0.1533  57  82 0 0.55 0 0
i "GM_Standard_Kit"   97.3333  0.2000  38  49 0 0.45 0 0
i "GM_Acoustic_Bass"   97.5000  0.4500  35  70 0 0.50 0 0
i "GM_Orchestral_Harp"   97.5000  0.3067  57  92 0 0.55 0 0
i "GM_Standard_Kit"   97.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"   97.5000  0.2000  44  48 0 0.30 0 0
i "GM_Standard_Kit"   97.5000  0.2000  37  60 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   97.5008  0.4250  69  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   97.5069  0.4250  58  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   97.5087  0.4250  62  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   97.5119  0.4250  65  54 0 0.38 0 0
i "GM_Orchestral_Harp"   97.8333  0.1533  62  79 0 0.55 0 0
i "GM_Standard_Kit"   97.8333  0.3000  51  51 0 0.65 0 0
i "GM_Standard_Kit"   97.8333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Bass"   98.0000  0.4750  36  78 0 0.50 0 0
i "GM_Standard_Kit"   98.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"   98.0000  0.3000  36  59 0 0.50 0 0
i "GM_Timpani"   98.0000  0.4000  48  87 0 0.69 0 0
i "GM_Acoustic_Bass"   98.5000  0.4750  40  74 0 0.50 0 0
i "GM_Standard_Kit"   98.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"   98.5000  0.2000  44  47 0 0.30 0 0
i "GM_Timpani"   98.5000  0.4000  43  81 0 0.69 0 0
i "GM_Acoustic_Grand_Piano"   98.5001  0.2833  67  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   98.5060  0.2833  70  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   98.5083  0.2833  73  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   98.5108  0.2833  64  59 0 0.38 0 0
i "GM_Standard_Kit"   98.8333  0.3000  51  45 0 0.65 0 0
i "GM_Timpani"   98.8333  0.4000  43  83 0 0.69 0 0
i "GM_Acoustic_Grand_Piano"   98.8382  0.4250  73  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   98.8413  0.4250  64  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   98.8435  0.4250  67  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   98.8442  0.4250  70  49 0 0.38 0 0
i "GM_Acoustic_Bass"   99.0000  0.4750  43  76 0 0.50 0 0
i "GM_Standard_Kit"   99.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"   99.0000  0.3000  36  57 0 0.50 0 0
i "GM_Timpani"   99.3333  0.4000  48  84 0 0.69 0 0
i "GM_Acoustic_Bass"   99.5000  0.4500  40  76 0 0.50 0 0
i "GM_Standard_Kit"   99.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"   99.5000  0.2000  44  50 0 0.30 0 0
i "GM_Timpani"   99.5000  0.4000  43  87 0 0.69 0 0
i "GM_Standard_Kit"   99.8333  0.3000  51  49 0 0.65 0 0
i "GM_Standard_Kit"   99.8333  0.2000  38  53 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"   99.8333  0.1417  64  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   99.8388  0.1417  62  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   99.8399  0.1417  58  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   99.8436  0.1417  67  57 0 0.38 0 0
i "GM_Acoustic_Bass"  100.0000  0.4750  41  75 0 0.50 0 0
i "GM_Standard_Kit"  100.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  100.0000  0.3000  36  58 0 0.50 0 0
i "GM_Standard_Kit"  100.0000  0.5000  49  74 0 0.70 0 0
i "GM_String_Ensemble_1"  100.0000  1.9600  57  70 0 0.33 0 0
i "GM_String_Ensemble_1"  100.0000  1.9600  60  70 0 0.33 0 0
i "GM_String_Ensemble_1"  100.0000  1.9600  64  70 0 0.33 0 0
i "GM_String_Ensemble_1"  100.0000  1.9600  67  70 0 0.33 0 0
i "GM_Acoustic_Bass"  100.5000  0.4750  36  73 0 0.50 0 0
i "GM_Standard_Kit"  100.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  100.5000  0.2000  44  53 0 0.30 0 0
i "GM_Standard_Kit"  100.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Bass"  101.0000  0.4750  40  78 0 0.50 0 0
i "GM_Standard_Kit"  101.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  101.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Bass"  101.5000  0.4500  37  78 0 0.50 0 0
i "GM_Standard_Kit"  101.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  101.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"  101.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Bass"  102.0000  0.4750  38  76 0 0.50 0 0
i "GM_Standard_Kit"  102.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  102.0000  0.3000  36  56 0 0.50 0 0
i "GM_String_Ensemble_2"  102.0000  1.9600  60  70 0 0.48 0 0
i "GM_String_Ensemble_2"  102.0000  1.9600  64  70 0 0.48 0 0
i "GM_String_Ensemble_2"  102.0000  1.9600  65  70 0 0.48 0 0
i "GM_String_Ensemble_2"  102.0000  1.9600  69  70 0 0.48 0 0
i "GM_Acoustic_Bass"  102.5000  0.4750  41  71 0 0.50 0 0
i "GM_Standard_Kit"  102.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  102.5000  0.2000  44  53 0 0.30 0 0
i "GM_Standard_Kit"  102.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Bass"  103.0000  0.4750  38  76 0 0.50 0 0
i "GM_Standard_Kit"  103.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  103.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Bass"  103.5000  0.4500  42  75 0 0.50 0 0
i "GM_Standard_Kit"  103.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  103.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"  103.5000  0.2000  37  60 0 0.45 0 0
i "GM_Standard_Kit"  103.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Bass"  104.0000  0.4750  43  72 0 0.50 0 0
i "GM_Standard_Kit"  104.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  104.0000  0.3000  36  55 0 0.50 0 0
i "GM_SynthStrings_1"  104.0000  1.9600  65  70 0 0.62 0 0
i "GM_SynthStrings_1"  104.0000  1.9600  69  70 0 0.62 0 0
i "GM_SynthStrings_1"  104.0000  1.9600  70  70 0 0.62 0 0
i "GM_SynthStrings_1"  104.0000  1.9600  74  70 0 0.62 0 0
i "GM_Acoustic_Bass"  104.5000  0.4750  45  75 0 0.50 0 0
i "GM_Standard_Kit"  104.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  104.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"  104.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Bass"  105.0000  0.4750  43  75 0 0.50 0 0
i "GM_Standard_Kit"  105.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  105.0000  0.3000  36  56 0 0.50 0 0
i "GM_Standard_Kit"  105.3333  0.2000  38  48 0 0.45 0 0
i "GM_Acoustic_Bass"  105.5000  0.4500  43  75 0 0.50 0 0
i "GM_Standard_Kit"  105.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  105.5000  0.2000  44  47 0 0.30 0 0
i "GM_Standard_Kit"  105.8333  0.3000  51  48 0 0.65 0 0
i "GM_Acoustic_Bass"  106.0000  0.4750  36  77 0 0.50 0 0
i "GM_Standard_Kit"  106.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  106.0000  0.3000  36  57 0 0.50 0 0
i "GM_SynthStrings_2"  106.0000  1.9600  52  70 0 0.27 0 0
i "GM_SynthStrings_2"  106.0000  1.9600  55  70 0 0.27 0 0
i "GM_SynthStrings_2"  106.0000  1.9600  58  70 0 0.27 0 0
i "GM_SynthStrings_2"  106.0000  1.9600  62  70 0 0.27 0 0
i "GM_Acoustic_Bass"  106.5000  0.4750  40  71 0 0.50 0 0
i "GM_Standard_Kit"  106.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  106.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"  106.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Bass"  107.0000  0.4750  43  75 0 0.50 0 0
i "GM_Standard_Kit"  107.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  107.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Bass"  107.5000  0.4500  40  77 0 0.50 0 0
i "GM_Standard_Kit"  107.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  107.5000  0.2000  44  47 0 0.30 0 0
i "GM_Standard_Kit"  107.5000  0.2000  37  60 0 0.45 0 0
i "GM_Standard_Kit"  107.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Bass"  108.0000  0.4750  41  73 0 0.50 0 0
i "GM_Choir_Aahs"  108.0000  1.9600  57  70 0 0.41 0 0
i "GM_Choir_Aahs"  108.0000  1.9600  60  70 0 0.41 0 0
i "GM_Choir_Aahs"  108.0000  1.9600  64  70 0 0.41 0 0
i "GM_Choir_Aahs"  108.0000  1.9600  67  70 0 0.41 0 0
i "GM_Standard_Kit"  108.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  108.0000  0.3000  36  55 0 0.50 0 0
i "GM_Standard_Kit"  108.3333  0.2000  38  55 0 0.45 0 0
i "GM_Acoustic_Bass"  108.5000  0.4750  41  71 0 0.50 0 0
i "GM_Standard_Kit"  108.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  108.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"  108.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Bass"  109.0000  0.4750  45  78 0 0.50 0 0
i "GM_Standard_Kit"  109.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  109.0000  0.3000  36  55 0 0.50 0 0
i "GM_Standard_Kit"  109.3333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Bass"  109.5000  0.4500  42  77 0 0.50 0 0
i "GM_Standard_Kit"  109.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  109.5000  0.2000  44  53 0 0.30 0 0
i "GM_Standard_Kit"  109.5000  0.2000  37  60 0 0.45 0 0
i "GM_Standard_Kit"  109.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Bass"  110.0000  0.4750  41  75 0 0.50 0 0
i "GM_Standard_Kit"  110.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  110.0000  0.3000  36  56 0 0.50 0 0
i "GM_Voice_Oohs"  110.0000  1.9600  57  70 0 0.56 0 0
i "GM_Voice_Oohs"  110.0000  1.9600  60  70 0 0.56 0 0
i "GM_Voice_Oohs"  110.0000  1.9600  63  70 0 0.56 0 0
i "GM_Voice_Oohs"  110.0000  1.9600  66  70 0 0.56 0 0
i "GM_Standard_Kit"  110.3333  0.2000  38  46 0 0.45 0 0
i "GM_Acoustic_Bass"  110.5000  0.4750  45  71 0 0.50 0 0
i "GM_Standard_Kit"  110.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  110.5000  0.2000  44  53 0 0.30 0 0
i "GM_Acoustic_Bass"  110.8333  0.1500  44  64 0 0.50 0 0
i "GM_Standard_Kit"  110.8333  0.3000  51  49 0 0.65 0 0
i "GM_Standard_Kit"  110.8333  0.2000  38  56 0 0.45 0 0
i "GM_Acoustic_Bass"  111.0000  0.4750  45  71 0 0.50 0 0
i "GM_Standard_Kit"  111.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  111.0000  0.3000  36  56 0 0.50 0 0
i "GM_Standard_Kit"  111.0000  0.3000  48  72 0 0.40 0 0
i "GM_Standard_Kit"  111.3333  0.2000  38  49 0 0.45 0 0
i "GM_Standard_Kit"  111.3333  0.3000  47  82 0 0.45 0 0
i "GM_Acoustic_Bass"  111.5000  0.4500  47  71 0 0.50 0 0
i "GM_Standard_Kit"  111.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  111.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"  111.5000  0.3000  45  76 0 0.50 0 0
i "GM_Standard_Kit"  111.8333  0.3000  51  50 0 0.65 0 0
i "GM_Standard_Kit"  111.8333  0.2000  38  49 0 0.45 0 0
i "GM_Standard_Kit"  111.8333  0.3000  43  80 0 0.55 0 0
i "GM_Acoustic_Bass"  112.0000  0.4750  46  72 0 0.50 0 0
i "GM_Standard_Kit"  112.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  112.0000  0.3000  36  56 0 0.50 0 0
i "GM_Synth_Voice"  112.0000  0.3067  65  97 0 0.70 0 0
i "GM_Standard_Kit"  112.3333  0.2000  38  52 0 0.45 0 0
i "GM_Synth_Voice"  112.3333  0.4600  68  80 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"  112.3371  0.4250  62  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  112.3400  0.4250  69  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  112.3413  0.4250  65  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  112.3440  0.4250  72  59 0 0.38 0 0
i "GM_Acoustic_Bass"  112.5000  0.4750  48  73 0 0.50 0 0
i "GM_Standard_Kit"  112.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  112.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"  112.8333  0.3000  51  45 0 0.65 0 0
i "GM_Synth_Voice"  112.8333  0.1533  68  82 0 0.70 0 0
i "GM_Acoustic_Bass"  113.0000  0.4750  50  78 0 0.50 0 0
i "GM_Standard_Kit"  113.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  113.0000  0.3000  36  59 0 0.50 0 0
i "GM_Synth_Voice"  113.0000  0.3067  74  92 0 0.70 0 0
i "GM_Synth_Voice"  113.3333  0.1533  81  86 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"  113.3370  0.1417  72  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  113.3370  0.1417  62  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  113.3436  0.1417  69  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  113.3437  0.1417  65  55 0 0.38 0 0
i "GM_Acoustic_Bass"  113.5000  0.4500  47  78 0 0.50 0 0
i "GM_Standard_Kit"  113.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  113.5000  0.2000  44  49 0 0.30 0 0
i "GM_Synth_Voice"  113.5000  0.4600  77  95 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"  113.5017  0.4250  72  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  113.5025  0.4250  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  113.5045  0.4250  65  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  113.5079  0.4250  69  58 0 0.38 0 0
i "GM_Standard_Kit"  113.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Bass"  114.0000  0.4750  46  74 0 0.50 0 0
i "GM_Orchestra_Hit"  114.0000  0.9000  58  84 0 0.34 0 0
i "GM_Orchestra_Hit"  114.0000  0.9000  65  84 0 0.34 0 0
i "GM_Orchestra_Hit"  114.0000  0.9000  61  84 0 0.34 0 0
i "GM_Standard_Kit"  114.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  114.0000  0.3000  36  57 0 0.50 0 0
i "GM_Standard_Kit"  114.3333  0.2000  38  53 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  114.3383  0.1417  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  114.3416  0.1417  72  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  114.3427  0.1417  61  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  114.3433  0.1417  68  56 0 0.38 0 0
i "GM_Acoustic_Bass"  114.5000  0.4750  48  72 0 0.50 0 0
i "GM_Standard_Kit"  114.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  114.5000  0.2000  44  47 0 0.30 0 0
i "GM_Orchestra_Hit"  114.8333  0.9000  58  84 0 0.34 0 0
i "GM_Orchestra_Hit"  114.8333  0.9000  65  84 0 0.34 0 0
i "GM_Orchestra_Hit"  114.8333  0.9000  61  84 0 0.34 0 0
i "GM_Standard_Kit"  114.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Bass"  115.0000  0.4750  46  78 0 0.50 0 0
i "GM_Standard_Kit"  115.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  115.0000  0.3000  36  56 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  115.0005  0.4250  55  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  115.0035  0.4250  58  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  115.0085  0.4250  64  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  115.0105  0.4250  61  54 0 0.38 0 0
i "GM_Acoustic_Bass"  115.5000  0.4500  40  77 0 0.50 0 0
i "GM_Standard_Kit"  115.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  115.5000  0.2000  44  53 0 0.30 0 0
i "GM_Standard_Kit"  115.5000  0.2000  37  60 0 0.45 0 0
i "GM_Standard_Kit"  115.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  115.8352  0.1417  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  115.8372  0.1417  61  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  115.8450  0.1417  70  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  115.8451  0.1417  67  55 0 0.38 0 0
i "GM_Acoustic_Bass"  116.0000  0.4750  41  75 0 0.50 0 0
i "GM_Standard_Kit"  116.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  116.0000  0.3000  36  53 0 0.50 0 0
i "GM_Trumpet"  116.0000  0.4600  72  97 0 0.49 0 0
i "GM_Acoustic_Grand_Piano"  116.3350  0.1417  67  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  116.3392  0.1417  57  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  116.3405  0.1417  60  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  116.3424  0.1417  64  52 0 0.38 0 0
i "GM_Acoustic_Bass"  116.5000  0.4750  43  78 0 0.50 0 0
i "GM_Standard_Kit"  116.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  116.5000  0.2000  44  51 0 0.30 0 0
i "GM_Trumpet"  116.5000  0.3067  69  91 0 0.49 0 0
i "GM_Standard_Kit"  116.8333  0.3000  51  50 0 0.65 0 0
i "GM_Trumpet"  116.8333  0.1533  71  79 0 0.49 0 0
i "GM_Acoustic_Bass"  117.0000  0.4750  48  75 0 0.50 0 0
i "GM_Standard_Kit"  117.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  117.0000  0.3000  36  54 0 0.50 0 0
i "GM_Trumpet"  117.0000  0.3067  69  95 0 0.49 0 0
i "GM_Acoustic_Grand_Piano"  117.0004  0.4250  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  117.0012  0.4250  64  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  117.0041  0.4250  67  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  117.0069  0.4250  57  53 0 0.38 0 0
i "GM_Trumpet"  117.3333  0.1533  65  84 0 0.49 0 0
i "GM_Acoustic_Bass"  117.5000  0.4500  37  77 0 0.50 0 0
i "GM_Standard_Kit"  117.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  117.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"  117.5000  0.2000  37  60 0 0.45 0 0
i "GM_Trumpet"  117.5000  0.3067  64  94 0 0.49 0 0
i "GM_Standard_Kit"  117.8333  0.3000  51  50 0 0.65 0 0
i "GM_Trumpet"  117.8333  0.1533  62  89 0 0.49 0 0
i "GM_Acoustic_Grand_Piano"  117.8339  0.1417  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  117.8355  0.1417  72  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  117.8363  0.1417  69  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  117.8375  0.1417  67  56 0 0.38 0 0
i "GM_Acoustic_Bass"  118.0000  0.4750  38  78 0 0.50 0 0
i "GM_Standard_Kit"  118.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  118.0000  0.3000  36  54 0 0.50 0 0
i "GM_Trombone"  118.0000  0.3067  54  98 0 0.64 0 0
i "GM_Acoustic_Grand_Piano"  118.0013  0.4250  57  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  118.0025  0.4250  63  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  118.0059  0.4250  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  118.0107  0.4250  54  49 0 0.38 0 0
i "GM_Standard_Kit"  118.3333  0.2000  38  49 0 0.45 0 0
i "GM_Trombone"  118.3333  0.4600  49  88 0 0.64 0 0
i "GM_Acoustic_Bass"  118.5000  0.4750  40  75 0 0.50 0 0
i "GM_Standard_Kit"  118.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  118.5000  0.2000  44  47 0 0.30 0 0
i "GM_Standard_Kit"  118.8333  0.3000  51  48 0 0.65 0 0
i "GM_Trombone"  118.8333  0.1533  45  84 0 0.64 0 0
i "GM_Acoustic_Grand_Piano"  118.8346  0.1417  64  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  118.8352  0.1417  54  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  118.8381  0.1417  60  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  118.8453  0.1417  57  55 0 0.38 0 0
i "GM_Acoustic_Bass"  119.0000  0.4750  45  78 0 0.50 0 0
i "GM_Standard_Kit"  119.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  119.0000  0.3000  36  53 0 0.50 0 0
i "GM_Trombone"  119.0000  0.3067  48  91 0 0.64 0 0
i "GM_Trombone"  119.3333  0.1533  50  79 0 0.64 0 0
i "GM_Acoustic_Bass"  119.5000  0.4500  42  72 0 0.50 0 0
i "GM_Standard_Kit"  119.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  119.5000  0.2000  44  47 0 0.30 0 0
i "GM_Standard_Kit"  119.5000  0.2000  37  60 0 0.45 0 0
i "GM_Trombone"  119.5000  0.4600  48  91 0 0.64 0 0
i "GM_Acoustic_Grand_Piano"  119.5028  0.4250  57  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  119.5080  0.4250  54  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  119.5085  0.4250  63  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  119.5093  0.4250  60  57 0 0.38 0 0
i "GM_Standard_Kit"  119.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"  120.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  120.0000  0.3000  36  54 0 0.50 0 0
i "GM_Tuba"  120.0000  0.4750  43  81 0 0.28 0 0
i "GM_Standard_Kit"  120.3333  0.2000  38  46 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  120.3339  0.4250  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  120.3341  0.4250  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  120.3424  0.4250  58  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  120.3428  0.4250  69  50 0 0.38 0 0
i "GM_Standard_Kit"  120.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  120.5000  0.2000  44  49 0 0.30 0 0
i "GM_Tuba"  120.5000  0.4750  46  83 0 0.28 0 0
i "GM_Standard_Kit"  120.8333  0.3000  51  50 0 0.65 0 0
i "GM_Standard_Kit"  120.8333  0.2000  38  53 0 0.45 0 0
i "GM_Standard_Kit"  121.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  121.0000  0.3000  36  54 0 0.50 0 0
i "GM_Tuba"  121.0000  0.4750  41  88 0 0.28 0 0
i "GM_Acoustic_Grand_Piano"  121.3350  0.1417  70  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  121.3403  0.1417  65  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  121.3414  0.1417  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  121.3442  0.1417  74  56 0 0.38 0 0
i "GM_Standard_Kit"  121.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  121.5000  0.2000  44  53 0 0.30 0 0
i "GM_Standard_Kit"  121.5000  0.2000  37  60 0 0.45 0 0
i "GM_Tuba"  121.5000  0.4500  35  87 0 0.28 0 0
i "GM_Acoustic_Grand_Piano"  121.5036  0.4250  65  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  121.5052  0.4250  58  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  121.5064  0.4250  69  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  121.5094  0.4250  62  57 0 0.38 0 0
i "GM_Standard_Kit"  121.8333  0.3000  51  51 0 0.65 0 0
i "GM_Tuba"  121.8333  0.1333  38  84 0 0.28 0 0
i "GM_Acoustic_Bass"  122.0000  0.4750  36  75 0 0.50 0 0
i "GM_Standard_Kit"  122.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  122.0000  0.3000  36  59 0 0.50 0 0
i "GM_Muted_Trumpet"  122.3333  0.1533  70  86 0 0.42 0 0
i "GM_Acoustic_Bass"  122.5000  0.4750  31  74 0 0.50 0 0
i "GM_Muted_Trumpet"  122.5000  0.3067  69  91 0 0.42 0 0
i "GM_Standard_Kit"  122.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  122.5000  0.2000  44  53 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  122.5017  0.2833  58  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  122.5026  0.2833  62  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  122.5047  0.2833  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  122.5074  0.2833  67  53 0 0.38 0 0
i "GM_Acoustic_Bass"  122.8333  0.1500  32  64 0 0.50 0 0
i "GM_Muted_Trumpet"  122.8333  0.4600  66  81 0 0.42 0 0
i "GM_Standard_Kit"  122.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  122.8356  0.4250  58  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  122.8359  0.4250  67  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  122.8382  0.4250  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  122.8430  0.4250  64  50 0 0.38 0 0
i "GM_Acoustic_Bass"  123.0000  0.4750  31  71 0 0.50 0 0
i "GM_Standard_Kit"  123.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  123.0000  0.3000  36  58 0 0.50 0 0
i "GM_Muted_Trumpet"  123.3333  0.1533  65  89 0 0.42 0 0
i "GM_Acoustic_Bass"  123.5000  0.4500  42  76 0 0.50 0 0
i "GM_Muted_Trumpet"  123.5000  0.3067  67  99 0 0.42 0 0
i "GM_Standard_Kit"  123.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  123.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"  123.5000  0.2000  37  60 0 0.45 0 0
i "GM_Muted_Trumpet"  123.8333  0.1533  69  83 0 0.42 0 0
i "GM_Standard_Kit"  123.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  123.8353  0.1417  70  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  123.8380  0.1417  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  123.8440  0.1417  74  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  123.8448  0.1417  67  54 0 0.38 0 0
i "GM_Acoustic_Bass"  124.0000  0.4750  41  70 0 0.50 0 0
i "GM_French_Horn"  124.0000  0.4600  60  99 0 0.57 0 0
i "GM_Standard_Kit"  124.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  124.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Bass"  124.5000  0.4750  36  77 0 0.50 0 0
i "GM_French_Horn"  124.5000  0.3067  64  94 0 0.57 0 0
i "GM_Standard_Kit"  124.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  124.5000  0.2000  44  50 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  124.5004  0.2833  69  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  124.5058  0.2833  72  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  124.5087  0.2833  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  124.5090  0.2833  64  51 0 0.38 0 0
i "GM_French_Horn"  124.8333  0.1533  67  88 0 0.57 0 0
i "GM_Standard_Kit"  124.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  124.8339  0.4250  69  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  124.8351  0.4250  64  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  124.8354  0.4250  72  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  124.8443  0.4250  67  57 0 0.38 0 0
i "GM_Acoustic_Bass"  125.0000  0.4750  36  71 0 0.50 0 0
i "GM_French_Horn"  125.0000  0.3067  64  97 0 0.57 0 0
i "GM_Standard_Kit"  125.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  125.0000  0.3000  36  55 0 0.50 0 0
i "GM_French_Horn"  125.3333  0.1533  59  79 0 0.57 0 0
i "GM_Acoustic_Bass"  125.5000  0.4500  50  76 0 0.50 0 0
i "GM_French_Horn"  125.5000  0.3067  58  89 0 0.57 0 0
i "GM_Standard_Kit"  125.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  125.5000  0.2000  44  49 0 0.30 0 0
i "GM_French_Horn"  125.8333  0.1533  62  84 0 0.57 0 0
i "GM_Standard_Kit"  125.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  125.8336  0.1417  69  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  125.8368  0.1417  67  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  125.8409  0.1417  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  125.8451  0.1417  72  59 0 0.38 0 0
i "GM_Acoustic_Bass"  126.0000  0.4750  43  72 0 0.50 0 0
i "GM_Standard_Kit"  126.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  126.0000  0.3000  36  56 0 0.50 0 0
i "GM_Brass_Section"  126.3333  0.1533  65  84 0 0.71 0 0
i "GM_Standard_Kit"  126.3333  0.2000  38  53 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  126.3365  0.1417  74  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  126.3380  0.1417  65  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  126.3397  0.1417  69  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  126.3436  0.1417  70  50 0 0.38 0 0
i "GM_Acoustic_Bass"  126.5000  0.4750  43  72 0 0.50 0 0
i "GM_Brass_Section"  126.5000  0.3067  67  94 0 0.71 0 0
i "GM_Standard_Kit"  126.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  126.5000  0.2000  44  51 0 0.30 0 0
i "GM_Brass_Section"  126.8333  0.4600  65  81 0 0.71 0 0
i "GM_Standard_Kit"  126.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"  126.8333  0.2000  38  50 0 0.45 0 0
i "GM_Acoustic_Bass"  127.0000  0.4750  40  78 0 0.50 0 0
i "GM_Standard_Kit"  127.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  127.0000  0.3000  36  56 0 0.50 0 0
i "GM_Standard_Kit"  127.0000  0.3000  48  81 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  127.0012  0.4250  67  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  127.0032  0.4250  62  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  127.0042  0.4250  58  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  127.0106  0.4250  64  57 0 0.38 0 0
i "GM_Brass_Section"  127.3333  0.1533  69  83 0 0.71 0 0
i "GM_Standard_Kit"  127.3333  0.2000  38  47 0 0.45 0 0
i "GM_Standard_Kit"  127.3333  0.3000  47  79 0 0.45 0 0
i "GM_Acoustic_Bass"  127.5000  0.4500  50  76 0 0.50 0 0
i "GM_Brass_Section"  127.5000  0.3067  70  99 0 0.71 0 0
i "GM_Standard_Kit"  127.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  127.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"  127.5000  0.3000  45  80 0 0.50 0 0
i "GM_Brass_Section"  127.8333  0.1533  71  79 0 0.71 0 0
i "GM_Standard_Kit"  127.8333  0.3000  51  46 0 0.65 0 0
i "GM_Standard_Kit"  127.8333  0.2000  38  49 0 0.45 0 0
i "GM_Standard_Kit"  127.8333  0.3000  43  78 0 0.55 0 0
i "GM_Acoustic_Grand_Piano"  127.8411  0.1417  64  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  127.8422  0.1417  67  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  127.8433  0.1417  58  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  127.8445  0.1417  62  51 0 0.38 0 0
i "GM_Acoustic_Bass"  128.0000  0.4750  43  73 0 0.50 0 0
i "GM_Standard_Kit"  128.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  128.0000  0.3000  36  57 0 0.50 0 0
i "GM_SynthBrass_1"  128.0000  0.4600  65  92 0 0.36 0 0
i "GM_Acoustic_Grand_Piano"  128.3370  0.4250  69  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  128.3406  0.4250  65  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  128.3426  0.4250  58  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  128.3432  0.4250  62  53 0 0.38 0 0
i "GM_Acoustic_Bass"  128.5000  0.4750  41  74 0 0.50 0 0
i "GM_Standard_Kit"  128.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  128.5000  0.2000  44  50 0 0.30 0 0
i "GM_SynthBrass_1"  128.5000  0.3067  67  94 0 0.36 0 0
i "GM_Standard_Kit"  128.8333  0.3000  51  50 0 0.65 0 0
i "GM_SynthBrass_1"  128.8333  0.1533  64  82 0 0.36 0 0
i "GM_Acoustic_Bass"  129.0000  0.4750  38  74 0 0.50 0 0
i "GM_Standard_Kit"  129.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  129.0000  0.3000  36  58 0 0.50 0 0
i "GM_SynthBrass_1"  129.0000  0.3067  62  92 0 0.36 0 0
i "GM_SynthBrass_1"  129.3333  0.1533  55  83 0 0.36 0 0
i "GM_Acoustic_Grand_Piano"  129.3342  0.1417  62  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  129.3360  0.1417  65  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  129.3376  0.1417  58  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  129.3409  0.1417  69  51 0 0.38 0 0
i "GM_Acoustic_Bass"  129.5000  0.4500  35  76 0 0.50 0 0
i "GM_Standard_Kit"  129.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  129.5000  0.2000  44  48 0 0.30 0 0
i "GM_Standard_Kit"  129.5000  0.2000  37  60 0 0.45 0 0
i "GM_SynthBrass_1"  129.5000  0.3067  53  99 0 0.36 0 0
i "GM_Acoustic_Grand_Piano"  129.5005  0.4250  74  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  129.5033  0.4250  65  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  129.5067  0.4250  70  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  129.5117  0.4250  69  58 0 0.38 0 0
i "GM_Standard_Kit"  129.8333  0.3000  51  48 0 0.65 0 0
i "GM_SynthBrass_1"  129.8333  0.1533  52  85 0 0.36 0 0
i "GM_Acoustic_Bass"  130.0000  0.4750  36  76 0 0.50 0 0
i "GM_Standard_Kit"  130.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  130.0000  0.3000  36  59 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  130.0053  0.4250  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  130.0067  0.4250  74  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  130.0093  0.4250  70  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  130.0095  0.4250  67  52 0 0.38 0 0
i "GM_SynthBrass_2"  130.3333  0.1533  67  84 0 0.50 0 0
i "GM_Acoustic_Bass"  130.5000  0.4750  40  73 0 0.50 0 0
i "GM_Standard_Kit"  130.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  130.5000  0.2000  44  53 0 0.30 0 0
i "GM_SynthBrass_2"  130.5000  0.3067  65  96 0 0.50 0 0
i "GM_Standard_Kit"  130.8333  0.3000  51  49 0 0.65 0 0
i "GM_SynthBrass_2"  130.8333  0.1533  69  81 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  130.8335  0.1417  73  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  130.8376  0.1417  70  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  130.8420  0.1417  67  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  130.8444  0.1417  64  58 0 0.38 0 0
i "GM_Acoustic_Bass"  131.0000  0.4750  40  76 0 0.50 0 0
i "GM_Standard_Kit"  131.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  131.0000  0.3000  36  55 0 0.50 0 0
i "GM_SynthBrass_2"  131.0000  0.4600  70  96 0 0.50 0 0
i "GM_Acoustic_Bass"  131.5000  0.4500  40  74 0 0.50 0 0
i "GM_Standard_Kit"  131.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  131.5000  0.2000  44  47 0 0.30 0 0
i "GM_SynthBrass_2"  131.5000  0.3067  70  94 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  131.5020  0.4250  61  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  131.5037  0.4250  67  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  131.5038  0.4250  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  131.5067  0.4250  58  59 0 0.38 0 0
i "GM_Standard_Kit"  131.8333  0.3000  51  50 0 0.65 0 0
i "GM_Standard_Kit"  131.8333  0.2000  38  53 0 0.45 0 0
i "GM_SynthBrass_2"  131.8333  0.1533  76  81 0 0.50 0 0
i "GM_Acoustic_Bass"  132.0000  0.4750  41  76 0 0.50 0 0
i "GM_Soprano_Sax"  132.0000  0.4600  72  89 0 0.65 0 0
i "GM_Standard_Kit"  132.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  132.0000  0.3000  36  55 0 0.50 0 0
i "GM_Standard_Kit"  132.0000  0.5000  49  74 0 0.70 0 0
i "GM_Acoustic_Bass"  132.5000  0.4750  45  72 0 0.50 0 0
i "GM_Soprano_Sax"  132.5000  0.3067  72  91 0 0.65 0 0
i "GM_Standard_Kit"  132.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  132.5000  0.2000  44  50 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  132.5024  0.2833  57  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  132.5064  0.2833  60  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  132.5075  0.2833  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  132.5103  0.2833  64  54 0 0.38 0 0
i "GM_Acoustic_Bass"  132.8333  0.1500  44  64 0 0.50 0 0
i "GM_Soprano_Sax"  132.8333  0.1533  70  86 0 0.65 0 0
i "GM_Standard_Kit"  132.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  132.8334  0.4250  67  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  132.8426  0.4250  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  132.8439  0.4250  72  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  132.8442  0.4250  69  55 0 0.38 0 0
i "GM_Acoustic_Bass"  133.0000  0.4750  48  70 0 0.50 0 0
i "GM_Soprano_Sax"  133.0000  0.3067  74  90 0 0.65 0 0
i "GM_Standard_Kit"  133.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  133.0000  0.3000  36  55 0 0.50 0 0
i "GM_Soprano_Sax"  133.3333  0.1533  74  80 0 0.65 0 0
i "GM_Standard_Kit"  133.3333  0.2000  38  54 0 0.45 0 0
i "GM_Acoustic_Bass"  133.5000  0.4500  37  71 0 0.50 0 0
i "GM_Soprano_Sax"  133.5000  0.3067  69  98 0 0.65 0 0
i "GM_Standard_Kit"  133.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  133.5000  0.2000  44  48 0 0.30 0 0
i "GM_Soprano_Sax"  133.8333  0.1533  64  89 0 0.65 0 0
i "GM_Standard_Kit"  133.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  133.8388  0.1417  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  133.8418  0.1417  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  133.8444  0.1417  64  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  133.8447  0.1417  57  56 0 0.38 0 0
i "GM_Acoustic_Bass"  134.0000  0.4750  38  76 0 0.50 0 0
i "GM_Standard_Kit"  134.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  134.0000  0.3000  36  53 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  134.0009  0.4250  65  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  134.0013  0.4250  60  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  134.0067  0.4250  69  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  134.0110  0.4250  64  49 0 0.38 0 0
i "GM_Alto_Sax"  134.3333  0.1533  60  88 0 0.29 0 0
i "GM_Standard_Kit"  134.3333  0.2000  38  54 0 0.45 0 0
i "GM_Acoustic_Bass"  134.5000  0.4750  38  72 0 0.50 0 0
i "GM_Alto_Sax"  134.5000  0.3067  60  97 0 0.29 0 0
i "GM_Standard_Kit"  134.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  134.5000  0.2000  44  47 0 0.30 0 0
i "GM_Alto_Sax"  134.8333  0.4600  56  82 0 0.29 0 0
i "GM_Standard_Kit"  134.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  134.8334  0.1417  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  134.8388  0.1417  60  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  134.8399  0.1417  57  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  134.8418  0.1417  53  59 0 0.38 0 0
i "GM_Acoustic_Bass"  135.0000  0.4750  38  71 0 0.50 0 0
i "GM_Standard_Kit"  135.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  135.0000  0.3000  36  56 0 0.50 0 0
i "GM_Alto_Sax"  135.3333  0.1533  49  83 0 0.29 0 0
i "GM_Standard_Kit"  135.3333  0.2000  38  56 0 0.45 0 0
i "GM_Acoustic_Bass"  135.5000  0.4500  42  72 0 0.50 0 0
i "GM_Alto_Sax"  135.5000  0.3067  50  91 0 0.29 0 0
i "GM_Standard_Kit"  135.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  135.5000  0.2000  44  50 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  135.5022  0.4250  53  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  135.5025  0.4250  60  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  135.5088  0.4250  64  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  135.5097  0.4250  57  56 0 0.38 0 0
i "GM_Alto_Sax"  135.8333  0.1533  53  79 0 0.29 0 0
i "GM_Standard_Kit"  135.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Bass"  136.0000  0.4750  43  71 0 0.50 0 0
i "GM_Standard_Kit"  136.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  136.0000  0.3000  36  54 0 0.50 0 0
i "GM_Tenor_Sax"  136.0000  0.3067  62  90 0 0.44 0 0
i "GM_Tenor_Sax"  136.3333  0.1533  57  84 0 0.44 0 0
i "GM_Acoustic_Bass"  136.5000  0.4750  43  70 0 0.50 0 0
i "GM_Standard_Kit"  136.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  136.5000  0.2000  44  53 0 0.30 0 0
i "GM_Tenor_Sax"  136.5000  0.4600  58  94 0 0.44 0 0
i "GM_Acoustic_Grand_Piano"  136.5003  0.2833  70  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  136.5011  0.2833  74  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  136.5085  0.2833  65  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  136.5095  0.2833  69  54 0 0.38 0 0
i "GM_Standard_Kit"  136.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  136.8366  0.4250  69  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  136.8412  0.4250  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  136.8425  0.4250  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  136.8451  0.4250  58  59 0 0.38 0 0
i "GM_Acoustic_Bass"  137.0000  0.4750  46  70 0 0.50 0 0
i "GM_Standard_Kit"  137.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  137.0000  0.3000  36  57 0 0.50 0 0
i "GM_Tenor_Sax"  137.0000  0.3067  57  91 0 0.44 0 0
i "GM_Tenor_Sax"  137.3333  0.1533  55  87 0 0.44 0 0
i "GM_Acoustic_Bass"  137.5000  0.4500  35  74 0 0.50 0 0
i "GM_Standard_Kit"  137.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  137.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"  137.5000  0.2000  37  60 0 0.45 0 0
i "GM_Tenor_Sax"  137.5000  0.4600  57  97 0 0.44 0 0
i "GM_Standard_Kit"  137.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  137.8334  0.1417  69  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  137.8374  0.1417  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  137.8383  0.1417  58  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  137.8440  0.1417  65  54 0 0.38 0 0
i "GM_Baritone_Sax"  138.0000  0.4750  36  87 0 0.58 0 0
i "GM_Standard_Kit"  138.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  138.0000  0.3000  36  59 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  138.0011  0.4250  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  138.0041  0.4250  62  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  138.0077  0.4250  67  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  138.0090  0.4250  58  52 0 0.38 0 0
i "GM_Baritone_Sax"  138.5000  0.4750  36  84 0 0.58 0 0
i "GM_Standard_Kit"  138.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  138.5000  0.2000  44  48 0 0.30 0 0
i "GM_Standard_Kit"  138.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  138.8341  0.1417  67  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  138.8370  0.1417  70  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  138.8412  0.1417  64  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  138.8421  0.1417  73  57 0 0.38 0 0
i "GM_Baritone_Sax"  139.0000  0.4750  36  87 0 0.58 0 0
i "GM_Standard_Kit"  139.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  139.0000  0.3000  36  53 0 0.50 0 0
i "GM_Standard_Kit"  139.3333  0.2000  38  55 0 0.45 0 0
i "GM_Baritone_Sax"  139.5000  0.4500  48  81 0 0.58 0 0
i "GM_Standard_Kit"  139.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  139.5000  0.2000  44  49 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  139.5009  0.4250  58  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  139.5014  0.4250  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  139.5078  0.4250  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  139.5083  0.4250  67  53 0 0.38 0 0
i "GM_Baritone_Sax"  139.8333  0.1333  43  84 0 0.58 0 0
i "GM_Standard_Kit"  139.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Bass"  140.0000  0.4750  41  73 0 0.50 0 0
i "GM_Oboe"  140.0000  0.3067  72  99 0 0.73 0 0
i "GM_Standard_Kit"  140.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  140.0000  0.3000  36  59 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  140.0011  0.4250  69  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  140.0012  0.4250  64  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  140.0027  0.4250  72  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  140.0046  0.4250  67  59 0 0.38 0 0
i "GM_Oboe"  140.3333  0.1533  70  84 0 0.73 0 0
i "GM_Standard_Kit"  140.3333  0.2000  38  50 0 0.45 0 0
i "GM_Acoustic_Bass"  140.5000  0.4750  41  72 0 0.50 0 0
i "GM_Oboe"  140.5000  0.3067  72  93 0 0.73 0 0
i "GM_Standard_Kit"  140.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  140.5000  0.2000  44  47 0 0.30 0 0
i "GM_Oboe"  140.8333  0.1533  71  89 0 0.73 0 0
i "GM_Standard_Kit"  140.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  140.8335  0.1417  64  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  140.8350  0.1417  72  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  140.8377  0.1417  69  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  140.8446  0.1417  67  54 0 0.38 0 0
i "GM_Acoustic_Bass"  141.0000  0.4750  36  74 0 0.50 0 0
i "GM_Oboe"  141.0000  0.3067  72  92 0 0.73 0 0
i "GM_Standard_Kit"  141.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  141.0000  0.3000  36  59 0 0.50 0 0
i "GM_Oboe"  141.3333  0.1533  74  80 0 0.73 0 0
i "GM_Acoustic_Bass"  141.5000  0.4500  40  70 0 0.50 0 0
i "GM_Oboe"  141.5000  0.4600  76  90 0 0.73 0 0
i "GM_Standard_Kit"  141.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  141.5000  0.2000  44  50 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  141.5034  0.4250  72  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  141.5044  0.4250  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  141.5080  0.4250  67  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  141.5109  0.4250  69  51 0 0.38 0 0
i "GM_Standard_Kit"  141.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Bass"  142.0000  0.4750  41  76 0 0.50 0 0
i "GM_English_Horn"  142.0000  0.3067  63  95 0 0.37 0 0
i "GM_Standard_Kit"  142.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  142.0000  0.3000  36  53 0 0.50 0 0
i "GM_English_Horn"  142.3333  0.1533  69  84 0 0.37 0 0
i "GM_Standard_Kit"  142.3333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  142.3342  0.1417  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  142.3390  0.1417  63  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  142.3409  0.1417  72  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  142.3428  0.1417  67  51 0 0.38 0 0
i "GM_Acoustic_Bass"  142.5000  0.4750  41  76 0 0.50 0 0
i "GM_English_Horn"  142.5000  0.4600  65  92 0 0.37 0 0
i "GM_Standard_Kit"  142.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  142.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"  142.8333  0.3000  51  48 0 0.65 0 0
i "GM_Standard_Kit"  142.8333  0.2000  38  54 0 0.45 0 0
i "GM_Acoustic_Bass"  143.0000  0.4750  41  78 0 0.50 0 0
i "GM_English_Horn"  143.0000  0.3067  67  90 0 0.37 0 0
i "GM_Standard_Kit"  143.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  143.0000  0.3000  36  53 0 0.50 0 0
i "GM_Standard_Kit"  143.0000  0.3000  48  79 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  143.0008  0.4250  63  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  143.0058  0.4250  67  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  143.0061  0.4250  69  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  143.0078  0.4250  72  57 0 0.38 0 0
i "GM_English_Horn"  143.3333  0.1533  65  81 0 0.37 0 0
i "GM_Standard_Kit"  143.3333  0.2000  38  46 0 0.45 0 0
i "GM_Standard_Kit"  143.3333  0.3000  47  75 0 0.45 0 0
i "GM_Acoustic_Bass"  143.5000  0.4500  47  73 0 0.50 0 0
i "GM_English_Horn"  143.5000  0.4600  69  94 0 0.37 0 0
i "GM_Standard_Kit"  143.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  143.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"  143.5000  0.3000  45  81 0 0.50 0 0
i "GM_Standard_Kit"  143.8333  0.3000  51  46 0 0.65 0 0
i "GM_Standard_Kit"  143.8333  0.2000  38  47 0 0.45 0 0
i "GM_Standard_Kit"  143.8333  0.3000  43  81 0 0.55 0 0
i "GM_Acoustic_Grand_Piano"  143.8398  0.1417  66  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  143.8406  0.1417  72  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  143.8416  0.1417  63  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  143.8426  0.1417  69  59 0 0.38 0 0
i "GM_Acoustic_Bass"  144.0000  0.4750  46  73 0 0.50 0 0
i "GM_Standard_Kit"  144.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  144.0000  0.3000  36  55 0 0.50 0 0
i "GM_Bassoon"  144.3333  0.1533  50  85 0 0.51 0 0
i "GM_Standard_Kit"  144.3333  0.2000  38  53 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  144.3362  0.4250  72  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  144.3382  0.4250  62  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  144.3383  0.4250  65  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  144.3402  0.4250  69  51 0 0.38 0 0
i "GM_Acoustic_Bass"  144.5000  0.4750  43  73 0 0.50 0 0
i "GM_Bassoon"  144.5000  0.3067  51  93 0 0.51 0 0
i "GM_Standard_Kit"  144.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  144.5000  0.2000  44  48 0 0.30 0 0
i "GM_Bassoon"  144.8333  0.1533  51  81 0 0.51 0 0
i "GM_Standard_Kit"  144.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Bass"  145.0000  0.4750  46  77 0 0.50 0 0
i "GM_Bassoon"  145.0000  0.4600  50  95 0 0.51 0 0
i "GM_Standard_Kit"  145.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  145.0000  0.3000  36  56 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  145.3350  0.1417  72  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  145.3401  0.1417  69  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  145.3406  0.1417  65  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  145.3406  0.1417  62  53 0 0.38 0 0
i "GM_Acoustic_Bass"  145.5000  0.4500  47  73 0 0.50 0 0
i "GM_Bassoon"  145.5000  0.3067  51  90 0 0.51 0 0
i "GM_Standard_Kit"  145.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  145.5000  0.2000  44  47 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  145.5018  0.4250  65  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  145.5033  0.4250  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  145.5070  0.4250  72  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  145.5120  0.4250  69  51 0 0.38 0 0
i "GM_Bassoon"  145.8333  0.1533  51  80 0 0.51 0 0
i "GM_Standard_Kit"  145.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Bass"  146.0000  0.4750  46  77 0 0.50 0 0
i "GM_Standard_Kit"  146.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  146.0000  0.3000  36  56 0 0.50 0 0
i "GM_Clarinet"  146.3333  0.1533  68  81 0 0.66 0 0
i "GM_Acoustic_Bass"  146.5000  0.4750  43  78 0 0.50 0 0
i "GM_Clarinet"  146.5000  0.3067  68  92 0 0.66 0 0
i "GM_Standard_Kit"  146.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  146.5000  0.2000  44  47 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  146.5031  0.2833  72  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  146.5044  0.2833  68  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  146.5077  0.2833  65  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  146.5103  0.2833  61  53 0 0.38 0 0
i "GM_Clarinet"  146.8333  0.4600  70  86 0 0.66 0 0
i "GM_Standard_Kit"  146.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  146.8359  0.4250  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  146.8387  0.4250  72  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  146.8408  0.4250  61  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  146.8429  0.4250  68  49 0 0.38 0 0
i "GM_Acoustic_Bass"  147.0000  0.4750  46  71 0 0.50 0 0
i "GM_Standard_Kit"  147.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  147.0000  0.3000  36  59 0 0.50 0 0
i "GM_Clarinet"  147.3333  0.1533  63  89 0 0.66 0 0
i "GM_Acoustic_Bass"  147.5000  0.4500  48  74 0 0.50 0 0
i "GM_Clarinet"  147.5000  0.3067  63  97 0 0.66 0 0
i "GM_Standard_Kit"  147.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  147.5000  0.2000  44  51 0 0.30 0 0
i "GM_Clarinet"  147.8333  0.1533  65  89 0 0.66 0 0
i "GM_Standard_Kit"  147.8333  0.3000  51  48 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  147.8389  0.1417  55  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  147.8428  0.1417  58  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  147.8448  0.1417  65  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  147.8451  0.1417  61  50 0 0.38 0 0
i "GM_Acoustic_Bass"  148.0000  0.4750  41  72 0 0.50 0 0
i "GM_Piccolo"  148.0000  0.5000  84  92 0 0.30 0 0
i "GM_Standard_Kit"  148.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  148.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  148.3388  0.4250  69  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  148.3411  0.4250  64  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  148.3432  0.4250  67  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  148.3438  0.4250  72  58 0 0.38 0 0
i "GM_Acoustic_Bass"  148.5000  0.4750  43  71 0 0.50 0 0
i "GM_Piccolo"  148.5000  0.5000  84  94 0 0.30 0 0
i "GM_Standard_Kit"  148.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  148.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"  148.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Bass"  149.0000  0.4750  45  73 0 0.50 0 0
i "GM_Piccolo"  149.0000  0.5000  86  93 0 0.30 0 0
i "GM_Standard_Kit"  149.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  149.0000  0.3000  36  58 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  149.3337  0.1417  67  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  149.3357  0.1417  57  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  149.3405  0.1417  60  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  149.3420  0.1417  64  53 0 0.38 0 0
i "GM_Acoustic_Bass"  149.5000  0.4500  45  73 0 0.50 0 0
i "GM_Piccolo"  149.5000  0.5000  84  93 0 0.30 0 0
i "GM_Standard_Kit"  149.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  149.5000  0.2000  44  49 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  149.5000  0.4250  60  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  149.5002  0.4250  67  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  149.5010  0.4250  57  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  149.5021  0.4250  64  52 0 0.38 0 0
i "GM_Standard_Kit"  149.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Bass"  150.0000  0.4750  38  78 0 0.50 0 0
i "GM_Flute"  150.0000  0.3067  74  99 0 0.45 0 0
i "GM_Standard_Kit"  150.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  150.0000  0.3000  36  54 0 0.50 0 0
i "GM_Flute"  150.3333  0.4600  73  79 0 0.45 0 0
i "GM_Acoustic_Bass"  150.5000  0.4750  40  76 0 0.50 0 0
i "GM_Standard_Kit"  150.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  150.5000  0.2000  44  52 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  150.5023  0.2833  54  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  150.5057  0.2833  64  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  150.5075  0.2833  60  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  150.5096  0.2833  57  52 0 0.38 0 0
i "GM_Flute"  150.8333  0.1533  74  89 0 0.45 0 0
i "GM_Standard_Kit"  150.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  150.8346  0.4250  57  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  150.8388  0.4250  60  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  150.8393  0.4250  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  150.8445  0.4250  54  52 0 0.38 0 0
i "GM_Acoustic_Bass"  151.0000  0.4750  38  73 0 0.50 0 0
i "GM_Flute"  151.0000  0.3067  74  93 0 0.45 0 0
i "GM_Standard_Kit"  151.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  151.0000  0.3000  36  59 0 0.50 0 0
i "GM_Flute"  151.3333  0.1533  73  88 0 0.45 0 0
i "GM_Acoustic_Bass"  151.5000  0.4500  44  71 0 0.50 0 0
i "GM_Flute"  151.5000  0.4600  74  89 0 0.45 0 0
i "GM_Standard_Kit"  151.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  151.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"  151.8333  0.3000  51  45 0 0.65 0 0
i "GM_Standard_Kit"  151.8333  0.2000  38  55 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  151.8337  0.1417  54  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  151.8359  0.1417  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  151.8360  0.1417  57  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  151.8407  0.1417  64  51 0 0.38 0 0
i "GM_Acoustic_Bass"  152.0000  0.4750  43  77 0 0.50 0 0
i "GM_Standard_Kit"  152.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  152.0000  0.3000  36  53 0 0.50 0 0
i "GM_Recorder"  152.3333  0.1533  77  80 0 0.59 0 0
i "GM_Acoustic_Grand_Piano"  152.3387  0.4250  58  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  152.3398  0.4250  69  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  152.3426  0.4250  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  152.3446  0.4250  62  55 0 0.38 0 0
i "GM_Acoustic_Bass"  152.5000  0.4750  40  71 0 0.50 0 0
i "GM_Recorder"  152.5000  0.3067  70  89 0 0.59 0 0
i "GM_Standard_Kit"  152.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  152.5000  0.2000  44  48 0 0.30 0 0
i "GM_Acoustic_Bass"  152.8333  0.1500  39  64 0 0.50 0 0
i "GM_Recorder"  152.8333  0.4600  69  80 0 0.59 0 0
i "GM_Standard_Kit"  152.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Bass"  153.0000  0.4750  34  76 0 0.50 0 0
i "GM_Standard_Kit"  153.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  153.0000  0.3000  36  54 0 0.50 0 0
i "GM_Recorder"  153.3333  0.1533  69  81 0 0.59 0 0
i "GM_Acoustic_Grand_Piano"  153.3344  0.1417  62  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  153.3346  0.1417  58  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  153.3349  0.1417  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  153.3349  0.1417  65  57 0 0.38 0 0
i "GM_Acoustic_Bass"  153.5000  0.4500  37  71 0 0.50 0 0
i "GM_Recorder"  153.5000  0.3067  70  94 0 0.59 0 0
i "GM_Standard_Kit"  153.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  153.5000  0.2000  44  50 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  153.5036  0.4250  58  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  153.5062  0.4250  69  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  153.5092  0.4250  65  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  153.5102  0.4250  62  59 0 0.38 0 0
i "GM_Recorder"  153.8333  0.1533  69  87 0 0.59 0 0
i "GM_Standard_Kit"  153.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Bass"  154.0000  0.4750  36  77 0 0.50 0 0
i "GM_Pan_Flute"  154.0000  0.3067  79  99 0 0.74 0 0
i "GM_Standard_Kit"  154.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  154.0000  0.3000  36  54 0 0.50 0 0
i "GM_Pan_Flute"  154.3333  0.4600  72  83 0 0.74 0 0
i "GM_Acoustic_Grand_Piano"  154.3340  0.4250  58  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  154.3375  0.4250  64  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  154.3406  0.4250  67  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  154.3437  0.4250  62  58 0 0.38 0 0
i "GM_Acoustic_Bass"  154.5000  0.4750  38  73 0 0.50 0 0
i "GM_Standard_Kit"  154.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  154.5000  0.2000  44  50 0 0.30 0 0
i "GM_Acoustic_Bass"  154.8333  0.1500  40  64 0 0.50 0 0
i "GM_Pan_Flute"  154.8333  0.1533  74  83 0 0.74 0 0
i "GM_Standard_Kit"  154.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Bass"  155.0000  0.4750  40  75 0 0.50 0 0
i "GM_Pan_Flute"  155.0000  0.3067  76  99 0 0.74 0 0
i "GM_Standard_Kit"  155.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  155.0000  0.3000  36  57 0 0.50 0 0
i "GM_Pan_Flute"  155.3333  0.1533  82  81 0 0.74 0 0
i "GM_Acoustic_Grand_Piano"  155.3361  0.1417  58  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  155.3378  0.1417  67  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  155.3432  0.1417  61  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  155.3447  0.1417  64  53 0 0.38 0 0
i "GM_Acoustic_Bass"  155.5000  0.4500  42  72 0 0.50 0 0
i "GM_Pan_Flute"  155.5000  0.4600  76  99 0 0.74 0 0
i "GM_Standard_Kit"  155.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  155.5000  0.2000  44  48 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  155.5002  0.4250  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  155.5013  0.4250  58  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  155.5049  0.4250  64  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  155.5092  0.4250  67  58 0 0.38 0 0
i "GM_Standard_Kit"  155.8333  0.3000  51  48 0 0.65 0 0
i "GM_Standard_Kit"  155.8333  0.2000  38  48 0 0.45 0 0
i "GM_Acoustic_Bass"  156.0000  0.4750  41  71 0 0.50 0 0
i "GM_Blown_Bottle"  156.0000  0.4600  72  98 0 0.38 0 0
i "GM_Standard_Kit"  156.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  156.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Bass"  156.5000  0.4750  41  75 0 0.50 0 0
i "GM_Blown_Bottle"  156.5000  0.3067  72  91 0 0.38 0 0
i "GM_Standard_Kit"  156.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  156.5000  0.2000  44  51 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  156.5024  0.2833  57  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  156.5037  0.2833  67  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  156.5077  0.2833  60  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  156.5096  0.2833  64  55 0 0.38 0 0
i "GM_Blown_Bottle"  156.8333  0.1533  68  83 0 0.38 0 0
i "GM_Standard_Kit"  156.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  156.8372  0.4250  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  156.8402  0.4250  72  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  156.8421  0.4250  67  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  156.8422  0.4250  69  54 0 0.38 0 0
i "GM_Acoustic_Bass"  157.0000  0.4750  41  75 0 0.50 0 0
i "GM_Blown_Bottle"  157.0000  0.3067  72  90 0 0.38 0 0
i "GM_Standard_Kit"  157.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  157.0000  0.3000  36  56 0 0.50 0 0
i "GM_Blown_Bottle"  157.3333  0.1533  68  85 0 0.38 0 0
i "GM_Acoustic_Bass"  157.5000  0.4500  42  71 0 0.50 0 0
i "GM_Blown_Bottle"  157.5000  0.3067  67  92 0 0.38 0 0
i "GM_Standard_Kit"  157.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  157.5000  0.2000  44  50 0 0.30 0 0
i "GM_Blown_Bottle"  157.8333  0.1533  69  81 0 0.38 0 0
i "GM_Standard_Kit"  157.8333  0.3000  51  51 0 0.65 0 0
i "GM_Standard_Kit"  157.8333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  157.8335  0.1417  60  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  157.8361  0.1417  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  157.8377  0.1417  67  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  157.8391  0.1417  57  55 0 0.38 0 0
i "GM_Acoustic_Bass"  158.0000  0.4750  43  70 0 0.50 0 0
i "GM_Shakuhachi"  158.0000  0.4600  70  96 0 0.53 0 0
i "GM_Standard_Kit"  158.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  158.0000  0.3000  36  57 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  158.0016  0.4250  65  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  158.0018  0.4250  58  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  158.0072  0.4250  69  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  158.0096  0.4250  62  55 0 0.38 0 0
i "GM_Acoustic_Bass"  158.5000  0.4750  43  78 0 0.50 0 0
i "GM_Shakuhachi"  158.5000  0.3067  65  93 0 0.53 0 0
i "GM_Standard_Kit"  158.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  158.5000  0.2000  44  53 0 0.30 0 0
i "GM_Shakuhachi"  158.8333  0.1533  70  79 0 0.53 0 0
i "GM_Standard_Kit"  158.8333  0.3000  51  51 0 0.65 0 0
i "GM_Standard_Kit"  158.8333  0.2000  38  56 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  158.8359  0.1417  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  158.8390  0.1417  69  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  158.8426  0.1417  70  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  158.8442  0.1417  74  51 0 0.38 0 0
i "GM_Acoustic_Bass"  159.0000  0.4750  40  78 0 0.50 0 0
i "GM_Shakuhachi"  159.0000  0.3067  67  96 0 0.53 0 0
i "GM_Standard_Kit"  159.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  159.0000  0.3000  36  56 0 0.50 0 0
i "GM_Standard_Kit"  159.0000  0.3000  48  73 0 0.40 0 0
i "GM_Shakuhachi"  159.3333  0.1533  67  87 0 0.53 0 0
i "GM_Standard_Kit"  159.3333  0.3000  47  81 0 0.45 0 0
i "GM_Acoustic_Bass"  159.5000  0.4500  44  72 0 0.50 0 0
i "GM_Shakuhachi"  159.5000  0.3067  64  94 0 0.53 0 0
i "GM_Standard_Kit"  159.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  159.5000  0.2000  44  48 0 0.30 0 0
i "GM_Standard_Kit"  159.5000  0.3000  45  77 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  159.5028  0.4250  70  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  159.5062  0.4250  67  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  159.5065  0.4250  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  159.5108  0.4250  73  52 0 0.38 0 0
i "GM_Shakuhachi"  159.8333  0.1533  60  84 0 0.53 0 0
i "GM_Standard_Kit"  159.8333  0.3000  51  50 0 0.65 0 0
i "GM_Standard_Kit"  159.8333  0.2000  38  54 0 0.45 0 0
i "GM_Standard_Kit"  159.8333  0.3000  43  72 0 0.55 0 0
i "GM_Acoustic_Bass"  160.0000  0.4750  43  75 0 0.50 0 0
i "GM_Standard_Kit"  160.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  160.0000  0.3000  36  56 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  160.0009  0.4250  70  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  160.0060  0.4250  69  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  160.0071  0.4250  65  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  160.0116  0.4250  74  55 0 0.38 0 0
i "GM_Whistle"  160.3333  0.1667  82  87 0 0.67 0 0
i "GM_Acoustic_Bass"  160.5000  0.4750  46  72 0 0.50 0 0
i "GM_Standard_Kit"  160.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  160.5000  0.2000  44  48 0 0.30 0 0
i "GM_Whistle"  160.5000  0.5000  79  99 0 0.67 0 0
i "GM_Standard_Kit"  160.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  160.8374  0.1417  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  160.8376  0.1417  58  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  160.8411  0.1417  65  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  160.8437  0.1417  69  58 0 0.38 0 0
i "GM_Acoustic_Bass"  161.0000  0.4750  50  77 0 0.50 0 0
i "GM_Standard_Kit"  161.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  161.0000  0.3000  36  55 0 0.50 0 0
i "GM_Standard_Kit"  161.3333  0.2000  38  47 0 0.45 0 0
i "GM_Whistle"  161.3333  0.1667  81  85 0 0.67 0 0
i "GM_Acoustic_Bass"  161.5000  0.4500  37  77 0 0.50 0 0
i "GM_Standard_Kit"  161.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  161.5000  0.2000  44  53 0 0.30 0 0
i "GM_Standard_Kit"  161.5000  0.2000  37  60 0 0.45 0 0
i "GM_Whistle"  161.5000  0.5000  77  94 0 0.67 0 0
i "GM_Acoustic_Grand_Piano"  161.5005  0.4250  58  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  161.5043  0.4250  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  161.5048  0.4250  69  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  161.5085  0.4250  65  59 0 0.38 0 0
i "GM_Standard_Kit"  161.8333  0.3000  51  46 0 0.65 0 0
i "GM_Standard_Kit"  161.8333  0.2000  38  48 0 0.45 0 0
i "GM_Acoustic_Bass"  162.0000  0.4750  36  74 0 0.50 0 0
i "GM_Standard_Kit"  162.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  162.0000  0.3000  36  53 0 0.50 0 0
i "GM_Ocarina"  162.3333  0.1533  79  82 0 0.31 0 0
i "GM_Acoustic_Bass"  162.5000  0.4750  36  75 0 0.50 0 0
i "GM_Ocarina"  162.5000  0.3067  81  95 0 0.31 0 0
i "GM_Standard_Kit"  162.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  162.5000  0.2000  44  48 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  162.5002  0.2833  58  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  162.5008  0.2833  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  162.5065  0.2833  64  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  162.5107  0.2833  67  53 0 0.38 0 0
i "GM_Ocarina"  162.8333  0.4600  79  83 0 0.31 0 0
i "GM_Standard_Kit"  162.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  162.8336  0.4250  67  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  162.8351  0.4250  73  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  162.8358  0.4250  70  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  162.8446  0.4250  64  55 0 0.38 0 0
i "GM_Acoustic_Bass"  163.0000  0.4750  40  71 0 0.50 0 0
i "GM_Standard_Kit"  163.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  163.0000  0.3000  36  54 0 0.50 0 0
i "GM_Ocarina"  163.3333  0.1533  75  79 0 0.31 0 0
i "GM_Standard_Kit"  163.3333  0.2000  38  53 0 0.45 0 0
i "GM_Acoustic_Bass"  163.5000  0.4500  42  74 0 0.50 0 0
i "GM_Ocarina"  163.5000  0.3067  72  91 0 0.31 0 0
i "GM_Standard_Kit"  163.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  163.5000  0.2000  44  49 0 0.30 0 0
i "GM_Ocarina"  163.8333  0.1533  70  89 0 0.31 0 0
i "GM_Standard_Kit"  163.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  163.8365  0.1417  58  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  163.8399  0.1417  64  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  163.8426  0.1417  67  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  163.8447  0.1417  62  57 0 0.38 0 0
i "GM_Acoustic_Bass"  164.0000  0.4750  41  72 0 0.50 0 0
i "GM_Standard_Kit"  164.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  164.0000  0.3000  36  55 0 0.50 0 0
i "GM_Standard_Kit"  164.0000  0.5000  49  74 0 0.70 0 0
i "GM_Lead_1_square"  164.3333  0.1533  72  85 0 0.46 0 0
i "GM_Standard_Kit"  164.3333  0.2000  38  48 0 0.45 0 0
i "GM_Acoustic_Bass"  164.5000  0.4750  41  77 0 0.50 0 0
i "GM_Lead_1_square"  164.5000  0.3067  70  98 0 0.46 0 0
i "GM_Standard_Kit"  164.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  164.5000  0.2000  44  50 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  164.5048  0.2833  69  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  164.5076  0.2833  67  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  164.5103  0.2833  72  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  164.5106  0.2833  64  58 0 0.38 0 0
i "GM_Lead_1_square"  164.8333  0.1533  76  87 0 0.46 0 0
i "GM_Standard_Kit"  164.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  164.8334  0.4250  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  164.8352  0.4250  60  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  164.8393  0.4250  57  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  164.8446  0.4250  67  54 0 0.38 0 0
i "GM_Acoustic_Bass"  165.0000  0.4750  40  77 0 0.50 0 0
i "GM_Lead_1_square"  165.0000  0.4600  77  91 0 0.46 0 0
i "GM_Standard_Kit"  165.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  165.0000  0.3000  36  56 0 0.50 0 0
i "GM_Acoustic_Bass"  165.5000  0.4500  45  70 0 0.50 0 0
i "GM_Lead_1_square"  165.5000  0.3067  81  93 0 0.46 0 0
i "GM_Standard_Kit"  165.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  165.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"  165.5000  0.2000  37  60 0 0.45 0 0
i "GM_Lead_1_square"  165.8333  0.1533  81  86 0 0.46 0 0
i "GM_Standard_Kit"  165.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  165.8382  0.1417  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  165.8402  0.1417  67  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  165.8418  0.1417  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  165.8448  0.1417  72  58 0 0.38 0 0
i "GM_Acoustic_Bass"  166.0000  0.4750  38  74 0 0.50 0 0
i "GM_Lead_2_sawtooth"  166.0000  0.3067  74  95 0 0.60 0 0
i "GM_Standard_Kit"  166.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  166.0000  0.3000  36  56 0 0.50 0 0
i "GM_Lead_2_sawtooth"  166.3333  0.1533  74  87 0 0.60 0 0
i "GM_Acoustic_Grand_Piano"  166.3358  0.1417  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  166.3359  0.1417  57  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  166.3364  0.1417  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  166.3393  0.1417  53  53 0 0.38 0 0
i "GM_Acoustic_Bass"  166.5000  0.4750  41  77 0 0.50 0 0
i "GM_Lead_2_sawtooth"  166.5000  0.4600  77  90 0 0.60 0 0
i "GM_Standard_Kit"  166.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  166.5000  0.2000  44  47 0 0.30 0 0
i "GM_Standard_Kit"  166.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Bass"  167.0000  0.4750  41  77 0 0.50 0 0
i "GM_Lead_2_sawtooth"  167.0000  0.3067  77  89 0 0.60 0 0
i "GM_Standard_Kit"  167.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  167.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  167.0048  0.4250  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  167.0077  0.4250  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  167.0091  0.4250  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  167.0092  0.4250  60  59 0 0.38 0 0
i "GM_Lead_2_sawtooth"  167.3333  0.1533  79  80 0 0.60 0 0
i "GM_Acoustic_Bass"  167.5000  0.4500  50  75 0 0.50 0 0
i "GM_Lead_2_sawtooth"  167.5000  0.4600  84  98 0 0.60 0 0
i "GM_Standard_Kit"  167.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  167.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"  167.5000  0.2000  37  60 0 0.45 0 0
i "GM_Standard_Kit"  167.8333  0.3000  51  51 0 0.65 0 0
i "GM_Standard_Kit"  167.8333  0.2000  38  48 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  167.8339  0.1417  53  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  167.8340  0.1417  60  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  167.8422  0.1417  64  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  167.8431  0.1417  57  53 0 0.38 0 0
i "GM_Acoustic_Bass"  168.0000  0.4750  43  70 0 0.50 0 0
i "GM_Lead_3_calliope"  168.0000  0.3067  74  94 0 0.75 0 0
i "GM_Standard_Kit"  168.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  168.0000  0.3000  36  59 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  168.0007  0.4250  65  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  168.0028  0.4250  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  168.0050  0.4250  58  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  168.0097  0.4250  62  59 0 0.38 0 0
i "GM_Lead_3_calliope"  168.3333  0.1533  74  80 0 0.75 0 0
i "GM_Acoustic_Bass"  168.5000  0.4750  45  74 0 0.50 0 0
i "GM_Lead_3_calliope"  168.5000  0.4600  74  91 0 0.75 0 0
i "GM_Standard_Kit"  168.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  168.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"  168.8333  0.3000  51  50 0 0.65 0 0
i "GM_Standard_Kit"  168.8333  0.2000  38  49 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  168.8396  0.1417  70  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  168.8400  0.1417  74  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  168.8432  0.1417  65  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  168.8444  0.1417  69  51 0 0.38 0 0
i "GM_Acoustic_Bass"  169.0000  0.4750  50  78 0 0.50 0 0
i "GM_Lead_3_calliope"  169.0000  0.3067  77  94 0 0.75 0 0
i "GM_Standard_Kit"  169.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  169.0000  0.3000  36  57 0 0.50 0 0
i "GM_Lead_3_calliope"  169.3333  0.1533  76  79 0 0.75 0 0
i "GM_Acoustic_Bass"  169.5000  0.4500  43  77 0 0.50 0 0
i "GM_Lead_3_calliope"  169.5000  0.4600  77  90 0 0.75 0 0
i "GM_Standard_Kit"  169.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  169.5000  0.2000  44  48 0 0.30 0 0
i "GM_Standard_Kit"  169.5000  0.2000  37  60 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  169.5056  0.4250  62  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  169.5066  0.4250  69  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  169.5068  0.4250  65  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  169.5110  0.4250  58  56 0 0.38 0 0
i "GM_Standard_Kit"  169.8333  0.3000  51  45 0 0.65 0 0
i "GM_Standard_Kit"  169.8333  0.2000  38  50 0 0.45 0 0
i "GM_Acoustic_Bass"  170.0000  0.4750  36  75 0 0.50 0 0
i "GM_Lead_4_chiff"  170.0000  0.3067  76  95 0 0.39 0 0
i "GM_Standard_Kit"  170.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  170.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  170.0014  0.4250  67  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  170.0034  0.4250  74  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  170.0062  0.4250  64  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  170.0080  0.4250  70  59 0 0.38 0 0
i "GM_Lead_4_chiff"  170.3333  0.1533  71  85 0 0.39 0 0
i "GM_Acoustic_Bass"  170.5000  0.4750  38  74 0 0.50 0 0
i "GM_Lead_4_chiff"  170.5000  0.4600  72  97 0 0.39 0 0
i "GM_Standard_Kit"  170.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  170.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"  170.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  170.8344  0.1417  67  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  170.8365  0.1417  64  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  170.8371  0.1417  70  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  170.8417  0.1417  73  57 0 0.38 0 0
i "GM_Acoustic_Bass"  171.0000  0.4750  36  71 0 0.50 0 0
i "GM_Lead_4_chiff"  171.0000  0.3067  74  89 0 0.39 0 0
i "GM_Standard_Kit"  171.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  171.0000  0.3000  36  56 0 0.50 0 0
i "GM_Lead_4_chiff"  171.3333  0.1533  74  85 0 0.39 0 0
i "GM_Acoustic_Bass"  171.5000  0.4500  42  70 0 0.50 0 0
i "GM_Lead_4_chiff"  171.5000  0.4600  76  94 0 0.39 0 0
i "GM_Standard_Kit"  171.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  171.5000  0.2000  44  52 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  171.5002  0.4250  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  171.5012  0.4250  70  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  171.5032  0.4250  74  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  171.5119  0.4250  67  52 0 0.38 0 0
i "GM_Standard_Kit"  171.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Bass"  172.0000  0.4750  41  78 0 0.50 0 0
i "GM_Lead_5_charang"  172.0000  0.7667  65  97 0 0.54 0 0
i "GM_Standard_Kit"  172.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  172.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  172.0029  0.4250  60  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  172.0029  0.4250  57  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  172.0047  0.4250  67  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  172.0100  0.4250  64  58 0 0.38 0 0
i "GM_Standard_Kit"  172.3333  0.2000  38  54 0 0.45 0 0
i "GM_Acoustic_Bass"  172.5000  0.4750  45  77 0 0.50 0 0
i "GM_Standard_Kit"  172.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  172.5000  0.2000  44  48 0 0.30 0 0
i "GM_Lead_5_charang"  172.8333  0.1533  71  81 0 0.54 0 0
i "GM_Standard_Kit"  172.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  172.8362  0.1417  72  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  172.8388  0.1417  69  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  172.8425  0.1417  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  172.8450  0.1417  67  49 0 0.38 0 0
i "GM_Acoustic_Bass"  173.0000  0.4750  45  73 0 0.50 0 0
i "GM_Lead_5_charang"  173.0000  0.3067  72  94 0 0.54 0 0
i "GM_Standard_Kit"  173.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  173.0000  0.3000  36  54 0 0.50 0 0
i "GM_Lead_5_charang"  173.3333  0.1533  71  87 0 0.54 0 0
i "GM_Acoustic_Bass"  173.5000  0.4500  42  72 0 0.50 0 0
i "GM_Lead_5_charang"  173.5000  0.3067  69  96 0 0.54 0 0
i "GM_Standard_Kit"  173.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  173.5000  0.2000  44  48 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  173.5010  0.4250  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  173.5024  0.4250  57  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  173.5078  0.4250  67  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  173.5091  0.4250  64  54 0 0.38 0 0
i "GM_Lead_5_charang"  173.8333  0.1533  67  79 0 0.54 0 0
i "GM_Standard_Kit"  173.8333  0.3000  51  49 0 0.65 0 0
i "GM_Standard_Kit"  173.8333  0.2000  38  55 0 0.45 0 0
i "GM_Acoustic_Bass"  174.0000  0.4750  41  76 0 0.50 0 0
i "GM_Lead_6_voice"  174.0000  0.3067  72  90 0 0.68 0 0
i "GM_Standard_Kit"  174.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  174.0000  0.3000  36  58 0 0.50 0 0
i "GM_Lead_6_voice"  174.3333  0.1533  74  82 0 0.68 0 0
i "GM_Standard_Kit"  174.3333  0.2000  38  50 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  174.3342  0.4250  67  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  174.3342  0.4250  69  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  174.3356  0.4250  72  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  174.3383  0.4250  63  55 0 0.38 0 0
i "GM_Acoustic_Bass"  174.5000  0.4750  43  76 0 0.50 0 0
i "GM_Lead_6_voice"  174.5000  0.3067  77  94 0 0.68 0 0
i "GM_Standard_Kit"  174.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  174.5000  0.2000  44  51 0 0.30 0 0
i "GM_Acoustic_Bass"  174.8333  0.1500  45  64 0 0.50 0 0
i "GM_Lead_6_voice"  174.8333  0.1533  79  83 0 0.68 0 0
i "GM_Standard_Kit"  174.8333  0.3000  51  45 0 0.65 0 0
i "GM_Standard_Kit"  174.8333  0.2000  38  56 0 0.45 0 0
i "GM_Acoustic_Bass"  175.0000  0.4750  45  75 0 0.50 0 0
i "GM_Lead_6_voice"  175.0000  0.3067  81  96 0 0.68 0 0
i "GM_Standard_Kit"  175.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  175.0000  0.3000  36  58 0 0.50 0 0
i "GM_Standard_Kit"  175.0000  0.3000  48  79 0 0.40 0 0
i "GM_Lead_6_voice"  175.3333  0.1533  76  85 0 0.68 0 0
i "GM_Standard_Kit"  175.3333  0.2000  38  53 0 0.45 0 0
i "GM_Standard_Kit"  175.3333  0.3000  47  72 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  175.3345  0.1417  63  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  175.3379  0.1417  57  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  175.3392  0.1417  60  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  175.3401  0.1417  66  56 0 0.38 0 0
i "GM_Acoustic_Bass"  175.5000  0.4500  45  74 0 0.50 0 0
i "GM_Lead_6_voice"  175.5000  0.4600  76  91 0 0.68 0 0
i "GM_Standard_Kit"  175.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  175.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"  175.5000  0.2000  37  60 0 0.45 0 0
i "GM_Standard_Kit"  175.5000  0.3000  45  75 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  175.5015  0.4250  63  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  175.5058  0.4250  67  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  175.5079  0.4250  69  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  175.5084  0.4250  72  58 0 0.38 0 0
i "GM_Standard_Kit"  175.8333  0.3000  51  45 0 0.65 0 0
i "GM_Standard_Kit"  175.8333  0.2000  38  47 0 0.45 0 0
i "GM_Standard_Kit"  175.8333  0.3000  43  82 0 0.55 0 0
i "GM_Acoustic_Bass"  176.0000  0.4750  46  78 0 0.50 0 0
i "GM_Lead_7_fifths"  176.0000  0.3067  70  96 0 0.32 0 0
i "GM_Standard_Kit"  176.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  176.0000  0.3000  36  53 0 0.50 0 0
i "GM_Lead_7_fifths"  176.3333  0.4600  70  86 0 0.32 0 0
i "GM_Standard_Kit"  176.3333  0.2000  38  50 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  176.3336  0.4250  69  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  176.3394  0.4250  65  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  176.3408  0.4250  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  176.3413  0.4250  72  51 0 0.38 0 0
i "GM_Acoustic_Bass"  176.5000  0.4750  41  78 0 0.50 0 0
i "GM_Standard_Kit"  176.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  176.5000  0.2000  44  53 0 0.30 0 0
i "GM_Acoustic_Bass"  176.8333  0.1500  43  64 0 0.50 0 0
i "GM_Lead_7_fifths"  176.8333  0.1533  72  82 0 0.32 0 0
i "GM_Standard_Kit"  176.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"  176.8333  0.2000  38  55 0 0.45 0 0
i "GM_Acoustic_Bass"  177.0000  0.4750  45  75 0 0.50 0 0
i "GM_Lead_7_fifths"  177.0000  0.3067  77  99 0 0.32 0 0
i "GM_Standard_Kit"  177.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  177.0000  0.3000  36  58 0 0.50 0 0
i "GM_Lead_7_fifths"  177.3333  0.1533  82  79 0 0.32 0 0
i "GM_Acoustic_Grand_Piano"  177.3348  0.1417  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  177.3395  0.1417  72  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  177.3397  0.1417  62  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  177.3418  0.1417  69  54 0 0.38 0 0
i "GM_Acoustic_Bass"  177.5000  0.4500  45  75 0 0.50 0 0
i "GM_Lead_7_fifths"  177.5000  0.4600  81  94 0 0.32 0 0
i "GM_Standard_Kit"  177.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  177.5000  0.2000  44  50 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  177.5038  0.4250  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  177.5048  0.4250  60  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  177.5065  0.4250  57  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  177.5098  0.4250  62  56 0 0.38 0 0
i "GM_Standard_Kit"  177.8333  0.3000  51  45 0 0.65 0 0
i "GM_Standard_Kit"  177.8333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Bass"  178.0000  0.4750  46  72 0 0.50 0 0
i "GM_Standard_Kit"  178.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  178.0000  0.3000  36  55 0 0.50 0 0
i "GM_Lead_8_bass_lead"  178.3333  0.1533  68  79 0 0.47 0 0
i "GM_Acoustic_Grand_Piano"  178.3352  0.4250  56  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  178.3367  0.4250  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  178.3419  0.4250  61  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  178.3450  0.4250  60  51 0 0.38 0 0
i "GM_Acoustic_Bass"  178.5000  0.4750  46  75 0 0.50 0 0
i "GM_Lead_8_bass_lead"  178.5000  0.3067  61  94 0 0.47 0 0
i "GM_Standard_Kit"  178.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  178.5000  0.2000  44  52 0 0.30 0 0
i "GM_Acoustic_Bass"  178.8333  0.1500  47  64 0 0.50 0 0
i "GM_Lead_8_bass_lead"  178.8333  0.4600  60  82 0 0.47 0 0
i "GM_Standard_Kit"  178.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Bass"  179.0000  0.4750  49  75 0 0.50 0 0
i "GM_Standard_Kit"  179.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  179.0000  0.3000  36  59 0 0.50 0 0
i "GM_Lead_8_bass_lead"  179.3333  0.1533  58  82 0 0.47 0 0
i "GM_Acoustic_Grand_Piano"  179.3338  0.1417  61  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  179.3384  0.1417  67  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  179.3426  0.1417  70  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  179.3440  0.1417  64  55 0 0.38 0 0
i "GM_Acoustic_Bass"  179.5000  0.4500  42  77 0 0.50 0 0
i "GM_Lead_8_bass_lead"  179.5000  0.3067  51  92 0 0.47 0 0
i "GM_Standard_Kit"  179.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  179.5000  0.2000  44  53 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  179.5047  0.4250  65  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  179.5061  0.4250  58  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  179.5108  0.4250  55  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  179.5119  0.4250  61  49 0 0.38 0 0
i "GM_Lead_8_bass_lead"  179.8333  0.1533  54  88 0 0.47 0 0
i "GM_Standard_Kit"  179.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Bass"  180.0000  0.4750  41  76 0 0.50 0 0
i "GM_Pad_1_new_age"  180.0000  1.9600  64  70 0 0.62 0 0
i "GM_Pad_1_new_age"  180.0000  1.9600  67  70 0 0.62 0 0
i "GM_Pad_1_new_age"  180.0000  1.9600  69  70 0 0.62 0 0
i "GM_Pad_1_new_age"  180.0000  1.9600  72  70 0 0.62 0 0
i "GM_Standard_Kit"  180.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  180.0000  0.3000  36  53 0 0.50 0 0
i "GM_Standard_Kit"  180.3333  0.2000  38  49 0 0.45 0 0
i "GM_Acoustic_Bass"  180.5000  0.4750  45  73 0 0.50 0 0
i "GM_Standard_Kit"  180.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  180.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"  180.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Bass"  181.0000  0.4750  48  70 0 0.50 0 0
i "GM_Standard_Kit"  181.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  181.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Bass"  181.5000  0.4500  45  78 0 0.50 0 0
i "GM_Standard_Kit"  181.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  181.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"  181.5000  0.2000  37  60 0 0.45 0 0
i "GM_Standard_Kit"  181.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Bass"  182.0000  0.4750  38  76 0 0.50 0 0
i "GM_Pad_2_warm"  182.0000  1.9600  54  70 0 0.26 0 0
i "GM_Pad_2_warm"  182.0000  1.9600  57  70 0 0.26 0 0
i "GM_Pad_2_warm"  182.0000  1.9600  60  70 0 0.26 0 0
i "GM_Pad_2_warm"  182.0000  1.9600  63  70 0 0.26 0 0
i "GM_Standard_Kit"  182.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  182.0000  0.3000  36  58 0 0.50 0 0
i "GM_Acoustic_Bass"  182.5000  0.4750  38  74 0 0.50 0 0
i "GM_Standard_Kit"  182.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  182.5000  0.2000  44  47 0 0.30 0 0
i "GM_Standard_Kit"  182.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Bass"  183.0000  0.4750  33  71 0 0.50 0 0
i "GM_Standard_Kit"  183.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  183.0000  0.3000  36  56 0 0.50 0 0
i "GM_Standard_Kit"  183.3333  0.2000  38  53 0 0.45 0 0
i "GM_Acoustic_Bass"  183.5000  0.4500  44  77 0 0.50 0 0
i "GM_Standard_Kit"  183.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  183.5000  0.2000  44  47 0 0.30 0 0
i "GM_Standard_Kit"  183.8333  0.3000  51  48 0 0.65 0 0
i "GM_Acoustic_Bass"  184.0000  0.4750  43  78 0 0.50 0 0
i "GM_Pad_3_polysynth"  184.0000  1.9600  65  70 0 0.40 0 0
i "GM_Pad_3_polysynth"  184.0000  1.9600  69  70 0 0.40 0 0
i "GM_Pad_3_polysynth"  184.0000  1.9600  70  70 0 0.40 0 0
i "GM_Pad_3_polysynth"  184.0000  1.9600  74  70 0 0.40 0 0
i "GM_Standard_Kit"  184.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  184.0000  0.3000  36  57 0 0.50 0 0
i "GM_Acoustic_Bass"  184.5000  0.4750  38  71 0 0.50 0 0
i "GM_Standard_Kit"  184.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  184.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"  184.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Bass"  185.0000  0.4750  34  73 0 0.50 0 0
i "GM_Standard_Kit"  185.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  185.0000  0.3000  36  56 0 0.50 0 0
i "GM_Acoustic_Bass"  185.5000  0.4500  37  75 0 0.50 0 0
i "GM_Standard_Kit"  185.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  185.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"  185.5000  0.2000  37  60 0 0.45 0 0
i "GM_Standard_Kit"  185.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Bass"  186.0000  0.4750  36  71 0 0.50 0 0
i "GM_Pad_4_choir"  186.0000  1.9600  58  70 0 0.55 0 0
i "GM_Pad_4_choir"  186.0000  1.9600  62  70 0 0.55 0 0
i "GM_Pad_4_choir"  186.0000  1.9600  64  70 0 0.55 0 0
i "GM_Pad_4_choir"  186.0000  1.9600  67  70 0 0.55 0 0
i "GM_Standard_Kit"  186.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  186.0000  0.3000  36  57 0 0.50 0 0
i "GM_Acoustic_Bass"  186.5000  0.4750  38  76 0 0.50 0 0
i "GM_Standard_Kit"  186.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  186.5000  0.2000  44  53 0 0.30 0 0
i "GM_Acoustic_Bass"  186.8333  0.1500  39  64 0 0.50 0 0
i "GM_Standard_Kit"  186.8333  0.3000  51  49 0 0.65 0 0
i "GM_Standard_Kit"  186.8333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Bass"  187.0000  0.4750  43  70 0 0.50 0 0
i "GM_Standard_Kit"  187.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  187.0000  0.3000  36  58 0 0.50 0 0
i "GM_Acoustic_Bass"  187.5000  0.4500  40  73 0 0.50 0 0
i "GM_Standard_Kit"  187.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  187.5000  0.2000  44  47 0 0.30 0 0
i "GM_Standard_Kit"  187.5000  0.2000  37  60 0 0.45 0 0
i "GM_Standard_Kit"  187.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Bass"  188.0000  0.4750  41  70 0 0.50 0 0
i "GM_Pad_5_bowed"  188.0000  1.9600  57  70 0 0.69 0 0
i "GM_Pad_5_bowed"  188.0000  1.9600  60  70 0 0.69 0 0
i "GM_Pad_5_bowed"  188.0000  1.9600  64  70 0 0.69 0 0
i "GM_Pad_5_bowed"  188.0000  1.9600  67  70 0 0.69 0 0
i "GM_Standard_Kit"  188.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  188.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Bass"  188.5000  0.4750  45  73 0 0.50 0 0
i "GM_Standard_Kit"  188.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  188.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"  188.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Bass"  189.0000  0.4750  48  72 0 0.50 0 0
i "GM_Standard_Kit"  189.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  189.0000  0.3000  36  59 0 0.50 0 0
i "GM_Standard_Kit"  189.3333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Bass"  189.5000  0.4500  44  78 0 0.50 0 0
i "GM_Standard_Kit"  189.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  189.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"  189.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Bass"  190.0000  0.4750  43  73 0 0.50 0 0
i "GM_Pad_6_metallic"  190.0000  0.9800  58  70 0 0.34 0 0
i "GM_Pad_6_metallic"  190.0000  0.9800  62  70 0 0.34 0 0
i "GM_Pad_6_metallic"  190.0000  0.9800  65  70 0 0.34 0 0
i "GM_Pad_6_metallic"  190.0000  0.9800  69  70 0 0.34 0 0
i "GM_Standard_Kit"  190.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  190.0000  0.3000  36  55 0 0.50 0 0
i "GM_Standard_Kit"  190.3333  0.2000  38  50 0 0.45 0 0
i "GM_Acoustic_Bass"  190.5000  0.4750  38  75 0 0.50 0 0
i "GM_Standard_Kit"  190.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  190.5000  0.2000  44  53 0 0.30 0 0
i "GM_Standard_Kit"  190.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Bass"  191.0000  0.4750  43  77 0 0.50 0 0
i "GM_Pad_6_metallic"  191.0000  0.9800  52  70 0 0.34 0 0
i "GM_Pad_6_metallic"  191.0000  0.9800  55  70 0 0.34 0 0
i "GM_Pad_6_metallic"  191.0000  0.9800  58  70 0 0.34 0 0
i "GM_Pad_6_metallic"  191.0000  0.9800  62  70 0 0.34 0 0
i "GM_Standard_Kit"  191.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  191.0000  0.3000  36  57 0 0.50 0 0
i "GM_Standard_Kit"  191.0000  0.3000  48  75 0 0.40 0 0
i "GM_Standard_Kit"  191.3333  0.3000  47  80 0 0.45 0 0
i "GM_Acoustic_Bass"  191.5000  0.4500  50  72 0 0.50 0 0
i "GM_Standard_Kit"  191.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  191.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"  191.5000  0.3000  45  81 0 0.50 0 0
i "GM_Standard_Kit"  191.8333  0.3000  51  49 0 0.65 0 0
i "GM_Standard_Kit"  191.8333  0.2000  38  50 0 0.45 0 0
i "GM_Standard_Kit"  191.8333  0.3000  43  81 0 0.55 0 0
i "GM_Acoustic_Bass"  192.0000  0.4750  43  73 0 0.50 0 0
i "GM_Pad_7_halo"  192.0000  1.9600  58  70 0 0.48 0 0
i "GM_Pad_7_halo"  192.0000  1.9600  62  70 0 0.48 0 0
i "GM_Pad_7_halo"  192.0000  1.9600  65  70 0 0.48 0 0
i "GM_Pad_7_halo"  192.0000  1.9600  69  70 0 0.48 0 0
i "GM_Standard_Kit"  192.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  192.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Bass"  192.5000  0.4750  43  77 0 0.50 0 0
i "GM_Standard_Kit"  192.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  192.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"  192.8333  0.3000  51  49 0 0.65 0 0
i "GM_Standard_Kit"  192.8333  0.2000  38  46 0 0.45 0 0
i "GM_Acoustic_Bass"  193.0000  0.4750  46  75 0 0.50 0 0
i "GM_Standard_Kit"  193.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  193.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Bass"  193.5000  0.4500  43  75 0 0.50 0 0
i "GM_Standard_Kit"  193.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  193.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"  193.5000  0.2000  37  60 0 0.45 0 0
i "GM_Standard_Kit"  193.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Bass"  194.0000  0.4750  36  77 0 0.50 0 0
i "GM_Pad_8_sweep"  194.0000  1.9600  58  70 0 0.63 0 0
i "GM_Pad_8_sweep"  194.0000  1.9600  61  70 0 0.63 0 0
i "GM_Pad_8_sweep"  194.0000  1.9600  64  70 0 0.63 0 0
i "GM_Pad_8_sweep"  194.0000  1.9600  67  70 0 0.63 0 0
i "GM_Standard_Kit"  194.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  194.0000  0.3000  36  53 0 0.50 0 0
i "GM_Standard_Kit"  194.3333  0.2000  38  47 0 0.45 0 0
i "GM_Acoustic_Bass"  194.5000  0.4750  33  78 0 0.50 0 0
i "GM_Standard_Kit"  194.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  194.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"  194.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Bass"  195.0000  0.4750  36  73 0 0.50 0 0
i "GM_Standard_Kit"  195.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  195.0000  0.3000  36  53 0 0.50 0 0
i "GM_Acoustic_Bass"  195.5000  0.4500  42  71 0 0.50 0 0
i "GM_Standard_Kit"  195.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  195.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"  195.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Bass"  196.0000  0.4750  41  78 0 0.50 0 0
i "GM_FX_1_rain"  196.0000  1.8000  72  84 0 0.27 0 0
i "GM_Standard_Kit"  196.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  196.0000  0.3000  36  56 0 0.50 0 0
i "GM_Standard_Kit"  196.0000  0.5000  49  74 0 0.70 0 0
i "GM_Acoustic_Bass"  196.5000  0.4750  43  74 0 0.50 0 0
i "GM_Standard_Kit"  196.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  196.5000  0.2000  44  51 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  196.5042  0.2833  72  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  196.5048  0.2833  69  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  196.5060  0.2833  64  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  196.5075  0.2833  67  54 0 0.38 0 0
i "GM_Standard_Kit"  196.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  196.8352  0.4250  64  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  196.8358  0.4250  72  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  196.8384  0.4250  67  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  196.8390  0.4250  69  57 0 0.38 0 0
i "GM_Acoustic_Bass"  197.0000  0.4750  45  73 0 0.50 0 0
i "GM_Standard_Kit"  197.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  197.0000  0.3000  36  59 0 0.50 0 0
i "GM_Acoustic_Bass"  197.5000  0.4500  39  75 0 0.50 0 0
i "GM_Standard_Kit"  197.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  197.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"  197.8333  0.3000  51  50 0 0.65 0 0
i "GM_Standard_Kit"  197.8333  0.2000  38  50 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  197.8365  0.1417  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  197.8367  0.1417  67  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  197.8376  0.1417  57  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  197.8410  0.1417  64  56 0 0.38 0 0
i "GM_Acoustic_Bass"  198.0000  0.4750  38  72 0 0.50 0 0
i "GM_FX_2_soundtrack"  198.0000  1.9600  53  70 0 0.42 0 0
i "GM_FX_2_soundtrack"  198.0000  1.9600  57  70 0 0.42 0 0
i "GM_FX_2_soundtrack"  198.0000  1.9600  60  70 0 0.42 0 0
i "GM_FX_2_soundtrack"  198.0000  1.9600  64  70 0 0.42 0 0
i "GM_Standard_Kit"  198.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  198.0000  0.3000  36  59 0 0.50 0 0
i "GM_Acoustic_Bass"  198.5000  0.4750  36  74 0 0.50 0 0
i "GM_Standard_Kit"  198.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  198.5000  0.2000  44  47 0 0.30 0 0
i "GM_Standard_Kit"  198.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Bass"  199.0000  0.4750  41  77 0 0.50 0 0
i "GM_Standard_Kit"  199.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  199.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Bass"  199.5000  0.4500  44  76 0 0.50 0 0
i "GM_Standard_Kit"  199.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  199.5000  0.2000  44  53 0 0.30 0 0
i "GM_Standard_Kit"  199.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Bass"  200.0000  0.4750  43  78 0 0.50 0 0
i "GM_FX_3_crystal"  200.0000  0.5000  77  93 0 0.56 0 0
i "GM_Standard_Kit"  200.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  200.0000  0.3000  36  54 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  200.3354  0.1417  74  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  200.3359  0.1417  65  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  200.3361  0.1417  70  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  200.3409  0.1417  69  58 0 0.38 0 0
i "GM_Acoustic_Bass"  200.5000  0.4750  46  78 0 0.50 0 0
i "GM_Standard_Kit"  200.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  200.5000  0.2000  44  48 0 0.30 0 0
i "GM_FX_3_crystal"  200.8333  0.1667  78  82 0 0.56 0 0
i "GM_Standard_Kit"  200.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Bass"  201.0000  0.4750  46  73 0 0.50 0 0
i "GM_FX_3_crystal"  201.0000  0.5000  82  90 0 0.56 0 0
i "GM_Standard_Kit"  201.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  201.0000  0.3000  36  58 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  201.0013  0.4250  65  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  201.0030  0.4250  74  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  201.0083  0.4250  70  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  201.0118  0.4250  69  51 0 0.38 0 0
i "GM_Standard_Kit"  201.3333  0.2000  38  55 0 0.45 0 0
i "GM_Acoustic_Bass"  201.5000  0.4500  37  70 0 0.50 0 0
i "GM_Standard_Kit"  201.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  201.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"  201.5000  0.2000  37  60 0 0.45 0 0
i "GM_FX_3_crystal"  201.8333  0.1667  76  80 0 0.56 0 0
i "GM_Standard_Kit"  201.8333  0.3000  51  49 0 0.65 0 0
i "GM_Standard_Kit"  201.8333  0.2000  38  49 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  201.8343  0.1417  65  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  201.8357  0.1417  62  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  201.8433  0.1417  69  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  201.8434  0.1417  58  49 0 0.38 0 0
i "GM_Acoustic_Bass"  202.0000  0.4750  36  71 0 0.50 0 0
i "GM_FX_4_atmosphere"  202.0000  1.9600  58  70 0 0.71 0 0
i "GM_FX_4_atmosphere"  202.0000  1.9600  61  70 0 0.71 0 0
i "GM_FX_4_atmosphere"  202.0000  1.9600  64  70 0 0.71 0 0
i "GM_FX_4_atmosphere"  202.0000  1.9600  67  70 0 0.71 0 0
i "GM_Standard_Kit"  202.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  202.0000  0.3000  36  53 0 0.50 0 0
i "GM_Acoustic_Bass"  202.5000  0.4750  31  76 0 0.50 0 0
i "GM_Standard_Kit"  202.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  202.5000  0.2000  44  48 0 0.30 0 0
i "GM_Standard_Kit"  202.8333  0.3000  51  48 0 0.65 0 0
i "GM_Acoustic_Bass"  203.0000  0.4750  40  74 0 0.50 0 0
i "GM_Standard_Kit"  203.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  203.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Bass"  203.5000  0.4500  40  76 0 0.50 0 0
i "GM_Standard_Kit"  203.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  203.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"  203.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Bass"  204.0000  0.4750  41  77 0 0.50 0 0
i "GM_FX_5_brightness"  204.0000  1.9600  57  70 0 0.35 0 0
i "GM_FX_5_brightness"  204.0000  1.9600  60  70 0 0.35 0 0
i "GM_FX_5_brightness"  204.0000  1.9600  64  70 0 0.35 0 0
i "GM_FX_5_brightness"  204.0000  1.9600  67  70 0 0.35 0 0
i "GM_Standard_Kit"  204.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  204.0000  0.3000  36  57 0 0.50 0 0
i "GM_Acoustic_Bass"  204.5000  0.4750  38  73 0 0.50 0 0
i "GM_Standard_Kit"  204.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  204.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"  204.8333  0.3000  51  45 0 0.65 0 0
i "GM_Standard_Kit"  204.8333  0.2000  38  46 0 0.45 0 0
i "GM_Acoustic_Bass"  205.0000  0.4750  41  76 0 0.50 0 0
i "GM_Standard_Kit"  205.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  205.0000  0.3000  36  57 0 0.50 0 0
i "GM_Acoustic_Bass"  205.5000  0.4500  48  73 0 0.50 0 0
i "GM_Standard_Kit"  205.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  205.5000  0.2000  44  48 0 0.30 0 0
i "GM_Standard_Kit"  205.5000  0.2000  37  60 0 0.45 0 0
i "GM_Standard_Kit"  205.8333  0.3000  51  48 0 0.65 0 0
i "GM_Acoustic_Bass"  206.0000  0.4750  41  71 0 0.50 0 0
i "GM_FX_6_goblins"  206.0000  1.8000  56  84 0 0.49 0 0
i "GM_Standard_Kit"  206.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  206.0000  0.3000  36  56 0 0.50 0 0
i "GM_Standard_Kit"  206.3333  0.2000  38  56 0 0.45 0 0
i "GM_Acoustic_Bass"  206.5000  0.4750  39  74 0 0.50 0 0
i "GM_Standard_Kit"  206.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  206.5000  0.2000  44  47 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  206.5046  0.2833  63  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  206.5058  0.2833  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  206.5063  0.2833  57  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  206.5111  0.2833  66  55 0 0.38 0 0
i "GM_Acoustic_Bass"  206.8333  0.1500  41  64 0 0.50 0 0
i "GM_Standard_Kit"  206.8333  0.3000  51  50 0 0.65 0 0
i "GM_Standard_Kit"  206.8333  0.2000  38  47 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  206.8367  0.4250  69  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  206.8381  0.4250  66  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  206.8391  0.4250  63  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  206.8404  0.4250  72  59 0 0.38 0 0
i "GM_Acoustic_Bass"  207.0000  0.4750  41  76 0 0.50 0 0
i "GM_Standard_Kit"  207.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  207.0000  0.3000  36  58 0 0.50 0 0
i "GM_Standard_Kit"  207.0000  0.3000  48  76 0 0.40 0 0
i "GM_Standard_Kit"  207.3333  0.2000  38  50 0 0.45 0 0
i "GM_Standard_Kit"  207.3333  0.3000  47  80 0 0.45 0 0
i "GM_Acoustic_Bass"  207.5000  0.4500  41  78 0 0.50 0 0
i "GM_Standard_Kit"  207.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  207.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"  207.5000  0.3000  45  74 0 0.50 0 0
i "GM_Standard_Kit"  207.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"  207.8333  0.2000  38  46 0 0.45 0 0
i "GM_Standard_Kit"  207.8333  0.3000  43  73 0 0.55 0 0
i "GM_Acoustic_Grand_Piano"  207.8352  0.1417  57  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  207.8377  0.1417  63  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  207.8396  0.1417  67  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  207.8425  0.1417  60  53 0 0.38 0 0
i "GM_Acoustic_Bass"  208.0000  0.4750  46  71 0 0.50 0 0
i "GM_FX_7_echoes"  208.0000  0.7667  74  96 0 0.64 0 0
i "GM_Standard_Kit"  208.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  208.0000  0.3000  36  53 0 0.50 0 0
i "GM_Acoustic_Bass"  208.5000  0.4750  46  76 0 0.50 0 0
i "GM_Standard_Kit"  208.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  208.5000  0.2000  44  47 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  208.5002  0.2833  62  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  208.5010  0.2833  69  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  208.5060  0.2833  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  208.5066  0.2833  72  58 0 0.38 0 0
i "GM_FX_7_echoes"  208.8333  0.1533  73  86 0 0.64 0 0
i "GM_Standard_Kit"  208.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  208.8350  0.4250  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  208.8362  0.4250  69  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  208.8386  0.4250  65  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  208.8401  0.4250  72  50 0 0.38 0 0
i "GM_Acoustic_Bass"  209.0000  0.4750  45  76 0 0.50 0 0
i "GM_FX_7_echoes"  209.0000  0.3067  74  99 0 0.64 0 0
i "GM_Standard_Kit"  209.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  209.0000  0.3000  36  53 0 0.50 0 0
i "GM_FX_7_echoes"  209.3333  0.1533  69  87 0 0.64 0 0
i "GM_Acoustic_Bass"  209.5000  0.4500  47  72 0 0.50 0 0
i "GM_FX_7_echoes"  209.5000  0.3067  65  94 0 0.64 0 0
i "GM_Standard_Kit"  209.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  209.5000  0.2000  44  50 0 0.30 0 0
i "GM_FX_7_echoes"  209.8333  0.1533  67  84 0 0.64 0 0
i "GM_Standard_Kit"  209.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  209.8370  0.1417  57  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  209.8385  0.1417  62  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  209.8417  0.1417  65  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  209.8437  0.1417  60  50 0 0.38 0 0
i "GM_Acoustic_Bass"  210.0000  0.4750  46  78 0 0.50 0 0
i "GM_FX_8_sci_fi"  210.0000  1.8000  63  84 0 0.28 0 0
i "GM_Standard_Kit"  210.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  210.0000  0.3000  36  56 0 0.50 0 0
i "GM_Acoustic_Bass"  210.5000  0.4750  46  74 0 0.50 0 0
i "GM_Standard_Kit"  210.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  210.5000  0.2000  44  48 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  210.5012  0.2833  60  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  210.5021  0.2833  56  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  210.5057  0.2833  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  210.5096  0.2833  61  51 0 0.38 0 0
i "GM_Standard_Kit"  210.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  210.8339  0.4250  56  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  210.8357  0.4250  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  210.8380  0.4250  61  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  210.8448  0.4250  60  55 0 0.38 0 0
i "GM_Acoustic_Bass"  211.0000  0.4750  49  74 0 0.50 0 0
i "GM_Standard_Kit"  211.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  211.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Bass"  211.5000  0.4500  48  73 0 0.50 0 0
i "GM_Standard_Kit"  211.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  211.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"  211.8333  0.3000  51  49 0 0.65 0 0
i "GM_Standard_Kit"  211.8333  0.2000  38  54 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  211.8356  0.1417  67  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  211.8381  0.1417  65  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  211.8382  0.1417  61  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  211.8449  0.1417  70  54 0 0.38 0 0
i "GM_Acoustic_Bass"  212.0000  0.4750  41  74 0 0.50 0 0
i "GM_Sitar"  212.0000  0.3067  65  90 0 0.43 0 0
i "GM_Standard_Kit"  212.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  212.0000  0.3000  36  53 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  212.0040  0.4250  64  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  212.0063  0.4250  67  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  212.0086  0.4250  69  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  212.0118  0.4250  72  54 0 0.38 0 0
i "GM_Sitar"  212.3333  0.1533  69  87 0 0.43 0 0
i "GM_Acoustic_Bass"  212.5000  0.4750  38  72 0 0.50 0 0
i "GM_Sitar"  212.5000  0.3067  69  89 0 0.43 0 0
i "GM_Standard_Kit"  212.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  212.5000  0.2000  44  52 0 0.30 0 0
i "GM_Sitar"  212.8333  0.1533  67  80 0 0.43 0 0
i "GM_Standard_Kit"  212.8333  0.3000  51  45 0 0.65 0 0
i "GM_Standard_Kit"  212.8333  0.2000  38  53 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  212.8358  0.1417  67  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  212.8370  0.1417  64  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  212.8379  0.1417  72  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  212.8447  0.1417  69  52 0 0.38 0 0
i "GM_Acoustic_Bass"  213.0000  0.4750  36  72 0 0.50 0 0
i "GM_Sitar"  213.0000  0.3067  60  99 0 0.43 0 0
i "GM_Standard_Kit"  213.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  213.0000  0.3000  36  58 0 0.50 0 0
i "GM_Sitar"  213.3333  0.1533  65  85 0 0.43 0 0
i "GM_Acoustic_Bass"  213.5000  0.4500  37  72 0 0.50 0 0
i "GM_Sitar"  213.5000  0.4600  65  95 0 0.43 0 0
i "GM_Standard_Kit"  213.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  213.5000  0.2000  44  52 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  213.5048  0.4250  72  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  213.5094  0.4250  67  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  213.5103  0.4250  64  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  213.5115  0.4250  69  52 0 0.38 0 0
i "GM_Standard_Kit"  213.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Bass"  214.0000  0.4750  38  78 0 0.50 0 0
i "GM_Banjo"  214.0000  0.3067  66  95 0 0.57 0 0
i "GM_Standard_Kit"  214.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  214.0000  0.3000  36  58 0 0.50 0 0
i "GM_Banjo"  214.3333  0.1533  62  81 0 0.57 0 0
i "GM_Acoustic_Bass"  214.5000  0.4750  38  70 0 0.50 0 0
i "GM_Banjo"  214.5000  0.3067  69  92 0 0.57 0 0
i "GM_Standard_Kit"  214.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  214.5000  0.2000  44  53 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  214.5021  0.2833  66  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  214.5030  0.2833  69  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  214.5091  0.2833  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  214.5110  0.2833  64  58 0 0.38 0 0
i "GM_Banjo"  214.8333  0.1533  71  79 0 0.57 0 0
i "GM_Standard_Kit"  214.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  214.8356  0.4250  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  214.8358  0.4250  54  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  214.8392  0.4250  57  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  214.8453  0.4250  64  56 0 0.38 0 0
i "GM_Acoustic_Bass"  215.0000  0.4750  36  74 0 0.50 0 0
i "GM_Banjo"  215.0000  0.3067  66  98 0 0.57 0 0
i "GM_Standard_Kit"  215.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  215.0000  0.3000  36  55 0 0.50 0 0
i "GM_Banjo"  215.3333  0.1533  71  84 0 0.57 0 0
i "GM_Acoustic_Bass"  215.5000  0.4500  44  78 0 0.50 0 0
i "GM_Banjo"  215.5000  0.4600  72  89 0 0.57 0 0
i "GM_Standard_Kit"  215.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  215.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"  215.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  215.8341  0.1417  64  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  215.8354  0.1417  60  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  215.8409  0.1417  54  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  215.8431  0.1417  57  49 0 0.38 0 0
i "GM_Acoustic_Bass"  216.0000  0.4750  43  71 0 0.50 0 0
i "GM_Shamisen"  216.0000  0.3067  67  96 0 0.72 0 0
i "GM_Standard_Kit"  216.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  216.0000  0.3000  36  59 0 0.50 0 0
i "GM_Shamisen"  216.3333  0.1533  67  88 0 0.72 0 0
i "GM_Acoustic_Grand_Piano"  216.3339  0.1417  65  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  216.3413  0.1417  69  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  216.3421  0.1417  58  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  216.3438  0.1417  62  53 0 0.38 0 0
i "GM_Acoustic_Bass"  216.5000  0.4750  46  71 0 0.50 0 0
i "GM_Shamisen"  216.5000  0.3067  67  98 0 0.72 0 0
i "GM_Standard_Kit"  216.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  216.5000  0.2000  44  50 0 0.30 0 0
i "GM_Shamisen"  216.8333  0.1533  70  87 0 0.72 0 0
i "GM_Standard_Kit"  216.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Bass"  217.0000  0.4750  46  77 0 0.50 0 0
i "GM_Shamisen"  217.0000  0.3067  72  89 0 0.72 0 0
i "GM_Standard_Kit"  217.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  217.0000  0.3000  36  53 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  217.0042  0.4250  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  217.0045  0.4250  65  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  217.0075  0.4250  69  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  217.0099  0.4250  58  52 0 0.38 0 0
i "GM_Shamisen"  217.3333  0.1533  70  82 0 0.72 0 0
i "GM_Standard_Kit"  217.3333  0.2000  38  50 0 0.45 0 0
i "GM_Acoustic_Bass"  217.5000  0.4500  43  76 0 0.50 0 0
i "GM_Shamisen"  217.5000  0.4600  69  92 0 0.72 0 0
i "GM_Standard_Kit"  217.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  217.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"  217.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  217.8362  0.1417  62  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  217.8373  0.1417  58  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  217.8381  0.1417  65  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  217.8429  0.1417  69  59 0 0.38 0 0
i "GM_Acoustic_Bass"  218.0000  0.4750  36  73 0 0.50 0 0
i "GM_Koto"  218.0000  0.7667  64  91 0 0.36 0 0
i "GM_Standard_Kit"  218.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  218.0000  0.3000  36  57 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  218.3381  0.4250  70  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  218.3415  0.4250  73  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  218.3434  0.4250  67  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  218.3446  0.4250  64  51 0 0.38 0 0
i "GM_Acoustic_Bass"  218.5000  0.4750  40  75 0 0.50 0 0
i "GM_Standard_Kit"  218.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  218.5000  0.2000  44  52 0 0.30 0 0
i "GM_Acoustic_Bass"  218.8333  0.1500  41  64 0 0.50 0 0
i "GM_Koto"  218.8333  0.1533  70  81 0 0.36 0 0
i "GM_Standard_Kit"  218.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Bass"  219.0000  0.4750  43  75 0 0.50 0 0
i "GM_Koto"  219.0000  0.3067  70  94 0 0.36 0 0
i "GM_Standard_Kit"  219.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  219.0000  0.3000  36  59 0 0.50 0 0
i "GM_Koto"  219.3333  0.1533  76  89 0 0.36 0 0
i "GM_Acoustic_Grand_Piano"  219.3352  0.1417  64  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  219.3417  0.1417  70  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  219.3439  0.1417  74  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  219.3445  0.1417  67  57 0 0.38 0 0
i "GM_Acoustic_Bass"  219.5000  0.4500  40  78 0 0.50 0 0
i "GM_Koto"  219.5000  0.3067  79  93 0 0.36 0 0
i "GM_Standard_Kit"  219.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  219.5000  0.2000  44  51 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  219.5026  0.4250  67  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  219.5058  0.4250  64  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  219.5097  0.4250  70  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  219.5108  0.4250  74  49 0 0.38 0 0
i "GM_Koto"  219.8333  0.1533  75  84 0 0.36 0 0
i "GM_Standard_Kit"  219.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Bass"  220.0000  0.4750  41  78 0 0.50 0 0
i "GM_Kalimba"  220.0000  0.3067  69  95 0 0.51 0 0
i "GM_Standard_Kit"  220.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  220.0000  0.3000  36  54 0 0.50 0 0
i "GM_Kalimba"  220.3333  0.1533  65  86 0 0.51 0 0
i "GM_Acoustic_Grand_Piano"  220.3343  0.1417  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  220.3388  0.1417  67  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  220.3408  0.1417  72  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  220.3438  0.1417  69  55 0 0.38 0 0
i "GM_Acoustic_Bass"  220.5000  0.4750  45  71 0 0.50 0 0
i "GM_Kalimba"  220.5000  0.3067  67  93 0 0.51 0 0
i "GM_Standard_Kit"  220.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  220.5000  0.2000  44  53 0 0.30 0 0
i "GM_Acoustic_Bass"  220.8333  0.1500  46  64 0 0.50 0 0
i "GM_Kalimba"  220.8333  0.1533  68  87 0 0.51 0 0
i "GM_Standard_Kit"  220.8333  0.3000  51  50 0 0.65 0 0
i "GM_Standard_Kit"  220.8333  0.2000  38  56 0 0.45 0 0
i "GM_Acoustic_Bass"  221.0000  0.4750  48  73 0 0.50 0 0
i "GM_Kalimba"  221.0000  0.4600  64  97 0 0.51 0 0
i "GM_Standard_Kit"  221.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  221.0000  0.3000  36  59 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  221.0029  0.4250  60  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  221.0048  0.4250  57  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  221.0064  0.4250  67  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  221.0086  0.4250  64  56 0 0.38 0 0
i "GM_Acoustic_Bass"  221.5000  0.4500  42  70 0 0.50 0 0
i "GM_Kalimba"  221.5000  0.4600  60  95 0 0.51 0 0
i "GM_Standard_Kit"  221.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  221.5000  0.2000  44  47 0 0.30 0 0
i "GM_Standard_Kit"  221.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  221.8341  0.1417  64  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  221.8359  0.1417  69  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  221.8367  0.1417  67  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  221.8387  0.1417  72  52 0 0.38 0 0
i "GM_Acoustic_Bass"  222.0000  0.4750  43  72 0 0.50 0 0
i "GM_Bag_pipe"  222.0000  0.3067  65  95 0 0.65 0 0
i "GM_Standard_Kit"  222.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  222.0000  0.3000  36  58 0 0.50 0 0
i "GM_Bag_pipe"  222.3333  0.1533  62  88 0 0.65 0 0
i "GM_Standard_Kit"  222.3333  0.2000  38  48 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  222.3385  0.4250  58  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  222.3390  0.4250  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  222.3421  0.4250  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  222.3421  0.4250  69  50 0 0.38 0 0
i "GM_Acoustic_Bass"  222.5000  0.4750  46  78 0 0.50 0 0
i "GM_Bag_pipe"  222.5000  0.4600  65  94 0 0.65 0 0
i "GM_Standard_Kit"  222.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  222.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"  222.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"  222.8333  0.2000  38  50 0 0.45 0 0
i "GM_Acoustic_Bass"  223.0000  0.4750  46  74 0 0.50 0 0
i "GM_Bag_pipe"  223.0000  0.3067  67  96 0 0.65 0 0
i "GM_Standard_Kit"  223.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  223.0000  0.3000  36  58 0 0.50 0 0
i "GM_Standard_Kit"  223.0000  0.3000  48  76 0 0.40 0 0
i "GM_Bag_pipe"  223.3333  0.1533  60  88 0 0.65 0 0
i "GM_Standard_Kit"  223.3333  0.2000  38  51 0 0.45 0 0
i "GM_Standard_Kit"  223.3333  0.3000  47  81 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  223.3371  0.1417  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  223.3383  0.1417  67  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  223.3413  0.1417  70  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  223.3447  0.1417  74  59 0 0.38 0 0
i "GM_Acoustic_Bass"  223.5000  0.4500  50  77 0 0.50 0 0
i "GM_Bag_pipe"  223.5000  0.4600  57  89 0 0.65 0 0
i "GM_Standard_Kit"  223.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  223.5000  0.2000  44  52 0 0.30 0 0
i "GM_Standard_Kit"  223.5000  0.3000  45  79 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  223.5013  0.4250  58  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  223.5037  0.4250  62  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  223.5070  0.4250  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  223.5091  0.4250  67  55 0 0.38 0 0
i "GM_Standard_Kit"  223.8333  0.3000  51  45 0 0.65 0 0
i "GM_Standard_Kit"  223.8333  0.2000  38  53 0 0.45 0 0
i "GM_Standard_Kit"  223.8333  0.3000  43  81 0 0.55 0 0
i "GM_Acoustic_Bass"  224.0000  0.4750  43  71 0 0.50 0 0
i "GM_Fiddle"  224.0000  0.7667  74  92 0 0.29 0 0
i "GM_Standard_Kit"  224.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  224.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  224.3337  0.4250  70  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  224.3343  0.4250  69  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  224.3360  0.4250  65  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  224.3408  0.4250  74  53 0 0.38 0 0
i "GM_Acoustic_Bass"  224.5000  0.4750  45  78 0 0.50 0 0
i "GM_Standard_Kit"  224.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  224.5000  0.2000  44  50 0 0.30 0 0
i "GM_Fiddle"  224.8333  0.1533  70  85 0 0.29 0 0
i "GM_Standard_Kit"  224.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Bass"  225.0000  0.4750  46  71 0 0.50 0 0
i "GM_Fiddle"  225.0000  0.3067  70  96 0 0.29 0 0
i "GM_Standard_Kit"  225.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  225.0000  0.3000  36  56 0 0.50 0 0
i "GM_Fiddle"  225.3333  0.1533  74  84 0 0.29 0 0
i "GM_Standard_Kit"  225.3333  0.2000  38  48 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  225.3355  0.1417  70  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  225.3365  0.1417  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  225.3387  0.1417  65  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  225.3447  0.1417  74  54 0 0.38 0 0
i "GM_Acoustic_Bass"  225.5000  0.4500  35  78 0 0.50 0 0
i "GM_Fiddle"  225.5000  0.3067  70  92 0 0.29 0 0
i "GM_Standard_Kit"  225.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  225.5000  0.2000  44  53 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  225.5008  0.4250  65  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  225.5072  0.4250  58  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  225.5097  0.4250  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  225.5117  0.4250  69  59 0 0.38 0 0
i "GM_Fiddle"  225.8333  0.1533  72  86 0 0.29 0 0
i "GM_Standard_Kit"  225.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Bass"  226.0000  0.4750  36  76 0 0.50 0 0
i "GM_Shanai"  226.0000  0.3067  70  99 0 0.44 0 0
i "GM_Standard_Kit"  226.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  226.0000  0.3000  36  57 0 0.50 0 0
i "GM_Shanai"  226.3333  0.1533  74  79 0 0.44 0 0
i "GM_Standard_Kit"  226.3333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  226.3368  0.4250  74  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  226.3410  0.4250  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  226.3414  0.4250  70  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  226.3430  0.4250  67  58 0 0.38 0 0
i "GM_Acoustic_Bass"  226.5000  0.4750  34  77 0 0.50 0 0
i "GM_Shanai"  226.5000  0.3067  72  94 0 0.44 0 0
i "GM_Standard_Kit"  226.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  226.5000  0.2000  44  53 0 0.30 0 0
i "GM_Shanai"  226.8333  0.1533  79  84 0 0.44 0 0
i "GM_Standard_Kit"  226.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Bass"  227.0000  0.4750  36  75 0 0.50 0 0
i "GM_Shanai"  227.0000  0.4600  82  97 0 0.44 0 0
i "GM_Standard_Kit"  227.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  227.0000  0.3000  36  59 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  227.3369  0.1417  70  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  227.3374  0.1417  67  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  227.3403  0.1417  74  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  227.3452  0.1417  64  55 0 0.38 0 0
i "GM_Acoustic_Bass"  227.5000  0.4500  42  70 0 0.50 0 0
i "GM_Shanai"  227.5000  0.4600  82  93 0 0.44 0 0
i "GM_Standard_Kit"  227.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  227.5000  0.2000  44  47 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  227.5014  0.4250  58  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  227.5018  0.4250  62  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  227.5036  0.4250  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  227.5050  0.4250  67  59 0 0.38 0 0
i "GM_Standard_Kit"  227.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Bass"  228.0000  0.4750  41  70 0 0.50 0 0
i "GM_Standard_Kit"  228.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  228.0000  0.3000  36  57 0 0.50 0 0
i "GM_Standard_Kit"  228.0000  0.5000  49  74 0 0.70 0 0
i "GM_Tinkle_Bell"  228.0000  0.8333  89  99 0 0.58 0 0
i "GM_Acoustic_Grand_Piano"  228.3357  0.4250  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  228.3362  0.4250  57  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  228.3362  0.4250  67  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  228.3440  0.4250  60  49 0 0.38 0 0
i "GM_Acoustic_Bass"  228.5000  0.4750  45  74 0 0.50 0 0
i "GM_Standard_Kit"  228.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  228.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"  228.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"  228.8333  0.2000  38  51 0 0.45 0 0
i "GM_Tinkle_Bell"  228.8333  0.1667  88  81 0 0.58 0 0
i "GM_Acoustic_Bass"  229.0000  0.4750  48  75 0 0.50 0 0
i "GM_Standard_Kit"  229.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  229.0000  0.3000  36  54 0 0.50 0 0
i "GM_Tinkle_Bell"  229.0000  0.5000  89  96 0 0.58 0 0
i "GM_Acoustic_Grand_Piano"  229.3356  0.1417  69  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  229.3361  0.1417  72  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  229.3375  0.1417  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  229.3378  0.1417  67  49 0 0.38 0 0
i "GM_Acoustic_Bass"  229.5000  0.4500  37  73 0 0.50 0 0
i "GM_Standard_Kit"  229.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  229.5000  0.2000  44  47 0 0.30 0 0
i "GM_Tinkle_Bell"  229.5000  0.5000  89  95 0 0.58 0 0
i "GM_Acoustic_Grand_Piano"  229.5005  0.4250  67  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  229.5018  0.4250  72  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  229.5023  0.4250  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  229.5042  0.4250  69  56 0 0.38 0 0
i "GM_Standard_Kit"  229.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Bass"  230.0000  0.4750  38  71 0 0.50 0 0
i "GM_Agogo"  230.0000  0.3067  77  98 0 0.73 0 0
i "GM_Standard_Kit"  230.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  230.0000  0.3000  36  57 0 0.50 0 0
i "GM_Agogo"  230.3333  0.1533  81  79 0 0.73 0 0
i "GM_Acoustic_Bass"  230.5000  0.4750  40  71 0 0.50 0 0
i "GM_Agogo"  230.5000  0.3067  84  93 0 0.73 0 0
i "GM_Standard_Kit"  230.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  230.5000  0.2000  44  48 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  230.5036  0.2833  57  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  230.5046  0.2833  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  230.5057  0.2833  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  230.5090  0.2833  53  49 0 0.38 0 0
i "GM_Acoustic_Bass"  230.8333  0.1500  42  64 0 0.50 0 0
i "GM_Agogo"  230.8333  0.1533  83  82 0 0.73 0 0
i "GM_Standard_Kit"  230.8333  0.3000  51  47 0 0.65 0 0
i "GM_Standard_Kit"  230.8333  0.2000  38  49 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  230.8343  0.4250  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  230.8356  0.4250  64  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  230.8415  0.4250  69  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  230.8431  0.4250  60  49 0 0.38 0 0
i "GM_Acoustic_Bass"  231.0000  0.4750  36  75 0 0.50 0 0
i "GM_Agogo"  231.0000  0.4600  81  99 0 0.73 0 0
i "GM_Standard_Kit"  231.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  231.0000  0.3000  36  57 0 0.50 0 0
i "GM_Acoustic_Bass"  231.5000  0.4500  50  71 0 0.50 0 0
i "GM_Agogo"  231.5000  0.4600  84  91 0 0.73 0 0
i "GM_Standard_Kit"  231.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  231.5000  0.2000  44  48 0 0.30 0 0
i "GM_Standard_Kit"  231.8333  0.3000  51  48 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  231.8397  0.1417  60  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  231.8406  0.1417  64  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  231.8448  0.1417  57  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  231.8450  0.1417  53  50 0 0.38 0 0
i "GM_Acoustic_Bass"  232.0000  0.4750  43  72 0 0.50 0 0
i "GM_Standard_Kit"  232.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  232.0000  0.3000  36  57 0 0.50 0 0
i "GM_Steel_Drums"  232.0000  0.3067  65  97 0 0.37 0 0
i "GM_Steel_Drums"  232.3333  0.4600  69  81 0 0.37 0 0
i "GM_Acoustic_Grand_Piano"  232.3362  0.4250  58  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  232.3398  0.4250  69  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  232.3402  0.4250  65  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  232.3445  0.4250  62  54 0 0.38 0 0
i "GM_Acoustic_Bass"  232.5000  0.4750  46  72 0 0.50 0 0
i "GM_Standard_Kit"  232.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  232.5000  0.2000  44  52 0 0.30 0 0
i "GM_Acoustic_Bass"  232.8333  0.1500  48  64 0 0.50 0 0
i "GM_Standard_Kit"  232.8333  0.3000  51  47 0 0.65 0 0
i "GM_Steel_Drums"  232.8333  0.1533  67  80 0 0.37 0 0
i "GM_Acoustic_Bass"  233.0000  0.4750  46  78 0 0.50 0 0
i "GM_Standard_Kit"  233.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  233.0000  0.3000  36  53 0 0.50 0 0
i "GM_Steel_Drums"  233.0000  0.3067  74  90 0 0.37 0 0
i "GM_Steel_Drums"  233.3333  0.1533  76  87 0 0.37 0 0
i "GM_Acoustic_Grand_Piano"  233.3350  0.1417  58  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  233.3361  0.1417  65  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  233.3373  0.1417  62  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  233.3384  0.1417  69  49 0 0.38 0 0
i "GM_Acoustic_Bass"  233.5000  0.4500  37  74 0 0.50 0 0
i "GM_Standard_Kit"  233.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  233.5000  0.2000  44  47 0 0.30 0 0
i "GM_Steel_Drums"  233.5000  0.4600  72  99 0 0.37 0 0
i "GM_Acoustic_Grand_Piano"  233.5084  0.4250  65  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  233.5091  0.4250  69  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  233.5104  0.4250  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  233.5110  0.4250  58  56 0 0.38 0 0
i "GM_Standard_Kit"  233.8333  0.3000  51  48 0 0.65 0 0
i "GM_Acoustic_Bass"  234.0000  0.4750  36  78 0 0.50 0 0
i "GM_Standard_Kit"  234.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  234.0000  0.3000  36  56 0 0.50 0 0
i "GM_Woodblock"  234.0000  0.4000  60  89 0 0.52 0 0
i "GM_Standard_Kit"  234.3333  0.2000  38  49 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  234.3354  0.1417  58  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  234.3377  0.1417  62  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  234.3401  0.1417  64  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  234.3438  0.1417  67  53 0 0.38 0 0
i "GM_Acoustic_Bass"  234.5000  0.4750  38  76 0 0.50 0 0
i "GM_Standard_Kit"  234.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  234.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"  234.8333  0.3000  51  47 0 0.65 0 0
i "GM_Woodblock"  234.8333  0.4000  67  88 0 0.52 0 0
i "GM_Acoustic_Bass"  235.0000  0.4750  40  77 0 0.50 0 0
i "GM_Standard_Kit"  235.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  235.0000  0.3000  36  57 0 0.50 0 0
i "GM_Woodblock"  235.0000  0.4000  60  87 0 0.52 0 0
i "GM_Acoustic_Grand_Piano"  235.0053  0.4250  67  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  235.0054  0.4250  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  235.0100  0.4250  61  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  235.0109  0.4250  58  52 0 0.38 0 0
i "GM_Acoustic_Bass"  235.5000  0.4500  40  75 0 0.50 0 0
i "GM_Standard_Kit"  235.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  235.5000  0.2000  44  53 0 0.30 0 0
i "GM_Woodblock"  235.5000  0.4000  67  90 0 0.52 0 0
i "GM_Standard_Kit"  235.8333  0.3000  51  48 0 0.65 0 0
i "GM_Standard_Kit"  235.8333  0.2000  38  54 0 0.45 0 0
i "GM_Woodblock"  235.8333  0.4000  60  79 0 0.52 0 0
i "GM_Acoustic_Grand_Piano"  235.8347  0.1417  58  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  235.8384  0.1417  67  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  235.8431  0.1417  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  235.8443  0.1417  64  49 0 0.38 0 0
i "GM_Acoustic_Bass"  236.0000  0.4750  41  72 0 0.50 0 0
i "GM_Standard_Kit"  236.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  236.0000  0.3000  36  58 0 0.50 0 0
i "GM_Taiko_Drum"  236.0000  0.4000  41  91 0 0.66 0 0
i "GM_Acoustic_Grand_Piano"  236.0015  0.4250  67  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  236.0025  0.4250  69  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  236.0064  0.4250  72  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  236.0101  0.4250  64  56 0 0.38 0 0
i "GM_Acoustic_Bass"  236.5000  0.4750  38  71 0 0.50 0 0
i "GM_Standard_Kit"  236.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  236.5000  0.2000  44  51 0 0.30 0 0
i "GM_Taiko_Drum"  236.5000  0.4000  48  84 0 0.66 0 0
i "GM_Standard_Kit"  236.8333  0.3000  51  45 0 0.65 0 0
i "GM_Taiko_Drum"  236.8333  0.4000  48  84 0 0.66 0 0
i "GM_Acoustic_Grand_Piano"  236.8364  0.1417  64  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  236.8369  0.1417  72  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  236.8415  0.1417  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  236.8427  0.1417  69  51 0 0.38 0 0
i "GM_Acoustic_Bass"  237.0000  0.4750  36  71 0 0.50 0 0
i "GM_Standard_Kit"  237.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  237.0000  0.3000  36  53 0 0.50 0 0
i "GM_Standard_Kit"  237.3333  0.2000  38  47 0 0.45 0 0
i "GM_Taiko_Drum"  237.3333  0.4000  41  90 0 0.66 0 0
i "GM_Acoustic_Bass"  237.5000  0.4500  42  76 0 0.50 0 0
i "GM_Standard_Kit"  237.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  237.5000  0.2000  44  52 0 0.30 0 0
i "GM_Taiko_Drum"  237.5000  0.4000  48  92 0 0.66 0 0
i "GM_Acoustic_Grand_Piano"  237.5016  0.4250  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  237.5070  0.4250  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  237.5087  0.4250  67  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  237.5109  0.4250  57  51 0 0.38 0 0
i "GM_Standard_Kit"  237.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Bass"  238.0000  0.4750  41  75 0 0.50 0 0
i "GM_Melodic_Tom"  238.0000  0.4000  41  88 0 0.31 0 0
i "GM_Standard_Kit"  238.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  238.0000  0.3000  36  58 0 0.50 0 0
i "GM_Standard_Kit"  238.3333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  238.3399  0.1417  63  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  238.3405  0.1417  67  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  238.3415  0.1417  72  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  238.3432  0.1417  69  54 0 0.38 0 0
i "GM_Acoustic_Bass"  238.5000  0.4750  38  70 0 0.50 0 0
i "GM_Melodic_Tom"  238.5000  0.4000  48  90 0 0.31 0 0
i "GM_Standard_Kit"  238.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  238.5000  0.2000  44  51 0 0.30 0 0
i "GM_Melodic_Tom"  238.8333  0.4000  48  89 0 0.31 0 0
i "GM_Standard_Kit"  238.8333  0.3000  51  51 0 0.65 0 0
i "GM_Standard_Kit"  238.8333  0.2000  38  53 0 0.45 0 0
i "GM_Acoustic_Bass"  239.0000  0.4750  33  72 0 0.50 0 0
i "GM_Standard_Kit"  239.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  239.0000  0.3000  36  54 0 0.50 0 0
i "GM_Standard_Kit"  239.0000  0.3000  48  75 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  239.0020  0.4250  60  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  239.0069  0.4250  57  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  239.0099  0.4250  67  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  239.0104  0.4250  63  50 0 0.38 0 0
i "GM_Melodic_Tom"  239.3333  0.4000  41  89 0 0.31 0 0
i "GM_Standard_Kit"  239.3333  0.2000  38  54 0 0.45 0 0
i "GM_Standard_Kit"  239.3333  0.3000  47  74 0 0.45 0 0
i "GM_Acoustic_Bass"  239.5000  0.4500  45  74 0 0.50 0 0
i "GM_Melodic_Tom"  239.5000  0.4000  41  90 0 0.31 0 0
i "GM_Standard_Kit"  239.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  239.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"  239.5000  0.3000  45  74 0 0.50 0 0
i "GM_Standard_Kit"  239.8333  0.3000  51  46 0 0.65 0 0
i "GM_Standard_Kit"  239.8333  0.3000  43  82 0 0.55 0 0
i "GM_Acoustic_Grand_Piano"  239.8362  0.1417  57  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  239.8364  0.1417  66  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  239.8388  0.1417  63  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  239.8424  0.1417  60  54 0 0.38 0 0
i "GM_Acoustic_Bass"  240.0000  0.4750  46  76 0 0.50 0 0
i "GM_Standard_Kit"  240.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  240.0000  0.3000  36  55 0 0.50 0 0
i "GM_Synth_Drum"  240.0000  0.4000  46  82 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  240.0029  0.4250  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  240.0062  0.4250  65  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  240.0066  0.4250  69  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  240.0107  0.4250  72  56 0 0.38 0 0
i "GM_Standard_Kit"  240.3333  0.2000  38  51 0 0.45 0 0
i "GM_Synth_Drum"  240.3333  0.4000  53  80 0 0.45 0 0
i "GM_Acoustic_Bass"  240.5000  0.4750  48  73 0 0.50 0 0
i "GM_Standard_Kit"  240.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  240.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"  240.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  240.8336  0.1417  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  240.8338  0.1417  62  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  240.8406  0.1417  72  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  240.8434  0.1417  69  49 0 0.38 0 0
i "GM_Acoustic_Bass"  241.0000  0.4750  45  72 0 0.50 0 0
i "GM_Standard_Kit"  241.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  241.0000  0.3000  36  57 0 0.50 0 0
i "GM_Synth_Drum"  241.0000  0.4000  46  80 0 0.45 0 0
i "GM_Standard_Kit"  241.3333  0.2000  38  55 0 0.45 0 0
i "GM_Synth_Drum"  241.3333  0.4000  53  80 0 0.45 0 0
i "GM_Acoustic_Bass"  241.5000  0.4500  41  71 0 0.50 0 0
i "GM_Standard_Kit"  241.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  241.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"  241.5000  0.2000  37  60 0 0.45 0 0
i "GM_Synth_Drum"  241.5000  0.4000  53  84 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  241.5037  0.4250  62  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  241.5061  0.4250  65  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  241.5078  0.4250  72  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  241.5095  0.4250  69  55 0 0.38 0 0
i "GM_Standard_Kit"  241.8333  0.3000  51  47 0 0.65 0 0
i "GM_Synth_Drum"  241.8333  0.4000  46  80 0 0.45 0 0
i "GM_Acoustic_Bass"  242.0000  0.4750  46  71 0 0.50 0 0
i "GM_Reverse_Cymbal"  242.0000  1.8000  60  84 0 0.60 0 0
i "GM_Standard_Kit"  242.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  242.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  242.3355  0.1417  61  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  242.3371  0.1417  68  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  242.3423  0.1417  72  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  242.3429  0.1417  65  53 0 0.38 0 0
i "GM_Acoustic_Bass"  242.5000  0.4750  44  74 0 0.50 0 0
i "GM_Standard_Kit"  242.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  242.5000  0.2000  44  48 0 0.30 0 0
i "GM_Standard_Kit"  242.8333  0.3000  51  46 0 0.65 0 0
i "GM_Acoustic_Bass"  243.0000  0.4750  46  75 0 0.50 0 0
i "GM_Standard_Kit"  243.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  243.0000  0.3000  36  59 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  243.0018  0.4250  65  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  243.0041  0.4250  70  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  243.0042  0.4250  61  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  243.0055  0.4250  67  49 0 0.38 0 0
i "GM_Acoustic_Bass"  243.5000  0.4500  42  70 0 0.50 0 0
i "GM_Standard_Kit"  243.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  243.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"  243.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  243.8376  0.1417  58  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  243.8382  0.1417  61  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  243.8423  0.1417  55  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  243.8425  0.1417  64  57 0 0.38 0 0
i "GM_Acoustic_Bass"  244.0000  0.4750  41  72 0 0.50 0 0
i "GM_Guitar_Fret_Noise"  244.0000  1.8000  60  84 0 0.74 0 0
i "GM_Standard_Kit"  244.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  244.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  244.0019  0.4250  67  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  244.0027  0.4250  57  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  244.0045  0.4250  64  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  244.0090  0.4250  60  51 0 0.38 0 0
i "GM_Standard_Kit"  244.3333  0.2000  38  54 0 0.45 0 0
i "GM_Acoustic_Bass"  244.5000  0.4750  41  72 0 0.50 0 0
i "GM_Standard_Kit"  244.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  244.5000  0.2000  44  53 0 0.30 0 0
i "GM_Standard_Kit"  244.8333  0.3000  51  48 0 0.65 0 0
i "GM_Standard_Kit"  244.8333  0.2000  38  50 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  244.8334  0.1417  67  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  244.8400  0.1417  72  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  244.8415  0.1417  69  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  244.8450  0.1417  64  53 0 0.38 0 0
i "GM_Acoustic_Bass"  245.0000  0.4750  41  77 0 0.50 0 0
i "GM_Standard_Kit"  245.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  245.0000  0.3000  36  58 0 0.50 0 0
i "GM_Acoustic_Bass"  245.5000  0.4500  45  70 0 0.50 0 0
i "GM_Standard_Kit"  245.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  245.5000  0.2000  44  53 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  245.5016  0.4250  64  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  245.5044  0.4250  57  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  245.5082  0.4250  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  245.5097  0.4250  67  57 0 0.38 0 0
i "GM_Standard_Kit"  245.8333  0.3000  51  45 0 0.65 0 0
i "GM_Standard_Kit"  245.8333  0.2000  38  54 0 0.45 0 0
i "GM_Acoustic_Bass"  246.0000  0.4750  38  70 0 0.50 0 0
i "GM_Breath_Noise"  246.0000  1.8000  60  84 0 0.38 0 0
i "GM_Standard_Kit"  246.0000  0.3000  51  61 0 0.65 0 0
i "GM_Standard_Kit"  246.0000  0.3000  36  59 0 0.50 0 0
i "GM_Standard_Kit"  246.3333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  246.3370  0.4250  69  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  246.3411  0.4250  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  246.3442  0.4250  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  246.3445  0.4250  66  58 0 0.38 0 0
i "GM_Acoustic_Bass"  246.5000  0.4750  33  70 0 0.50 0 0
i "GM_Standard_Kit"  246.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  246.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"  246.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Bass"  247.0000  0.4750  33  71 0 0.50 0 0
i "GM_Standard_Kit"  247.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  247.0000  0.3000  36  57 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  247.3375  0.1417  69  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  247.3383  0.1417  66  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  247.3432  0.1417  64  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  247.3450  0.1417  60  52 0 0.38 0 0
i "GM_Acoustic_Bass"  247.5000  0.4500  50  76 0 0.50 0 0
i "GM_Standard_Kit"  247.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  247.5000  0.2000  44  51 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  247.5003  0.4250  60  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  247.5029  0.4250  57  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  247.5034  0.4250  64  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  247.5115  0.4250  54  52 0 0.38 0 0
i "GM_Standard_Kit"  247.8333  0.3000  51  50 0 0.65 0 0
i "GM_Acoustic_Bass"  248.0000  0.4750  43  74 0 0.50 0 0
i "GM_Seashore"  248.0000  1.8000  60  84 0 0.53 0 0
i "GM_Standard_Kit"  248.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  248.0000  0.3000  36  58 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  248.3366  0.1417  69  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  248.3373  0.1417  74  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  248.3437  0.1417  65  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  248.3451  0.1417  70  50 0 0.38 0 0
i "GM_Acoustic_Bass"  248.5000  0.4750  43  71 0 0.50 0 0
i "GM_Standard_Kit"  248.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  248.5000  0.2000  44  50 0 0.30 0 0
i "GM_Standard_Kit"  248.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Bass"  249.0000  0.4750  41  72 0 0.50 0 0
i "GM_Standard_Kit"  249.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  249.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  249.0040  0.4250  74  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  249.0072  0.4250  69  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  249.0110  0.4250  65  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  249.0114  0.4250  70  54 0 0.38 0 0
i "GM_Acoustic_Bass"  249.5000  0.4500  43  78 0 0.50 0 0
i "GM_Standard_Kit"  249.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  249.5000  0.2000  44  51 0 0.30 0 0
i "GM_Standard_Kit"  249.8333  0.3000  51  49 0 0.65 0 0
i "GM_Standard_Kit"  249.8333  0.2000  38  53 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  249.8350  0.1417  65  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  249.8389  0.1417  70  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  249.8404  0.1417  69  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  249.8451  0.1417  74  57 0 0.38 0 0
i "GM_Acoustic_Bass"  250.0000  0.4750  36  78 0 0.50 0 0
i "GM_Bird_Tweet"  250.0000  1.8000  90  84 0 0.68 0 0
i "GM_Standard_Kit"  250.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  250.0000  0.3000  36  55 0 0.50 0 0
i "GM_Standard_Kit"  250.3333  0.2000  38  51 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  250.3400  0.4250  67  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  250.3403  0.4250  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  250.3405  0.4250  74  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  250.3412  0.4250  70  50 0 0.38 0 0
i "GM_Acoustic_Bass"  250.5000  0.4750  31  74 0 0.50 0 0
i "GM_Standard_Kit"  250.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  250.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"  250.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Bass"  251.0000  0.4750  34  76 0 0.50 0 0
i "GM_Standard_Kit"  251.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  251.0000  0.3000  36  57 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  251.3375  0.1417  58  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  251.3387  0.1417  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  251.3448  0.1417  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  251.3450  0.1417  67  57 0 0.38 0 0
i "GM_Acoustic_Bass"  251.5000  0.4500  40  74 0 0.50 0 0
i "GM_Standard_Kit"  251.5000  0.3000  51  68 0 0.65 0 0
i "GM_Standard_Kit"  251.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"  251.5000  0.2000  37  60 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  251.5049  0.4250  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  251.5069  0.4250  67  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  251.5080  0.4250  61  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  251.5118  0.4250  58  56 0 0.38 0 0
i "GM_Standard_Kit"  251.8333  0.3000  51  49 0 0.65 0 0
i "GM_Acoustic_Bass"  252.0000  0.4750  41  73 0 0.50 0 0
i "GM_Standard_Kit"  252.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  252.0000  0.3000  36  54 0 0.50 0 0
i "GM_Telephone_Ring"  252.0000  1.8000  60  84 0 0.32 0 0
i "GM_Acoustic_Grand_Piano"  252.3341  0.4250  57  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  252.3346  0.4250  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  252.3358  0.4250  67  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  252.3362  0.4250  60  58 0 0.38 0 0
i "GM_Acoustic_Bass"  252.5000  0.4750  41  78 0 0.50 0 0
i "GM_Standard_Kit"  252.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  252.5000  0.2000  44  51 0 0.30 0 0
i "GM_Acoustic_Bass"  252.8333  0.1500  42  64 0 0.50 0 0
i "GM_Standard_Kit"  252.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Bass"  253.0000  0.4750  41  70 0 0.50 0 0
i "GM_Standard_Kit"  253.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  253.0000  0.3000  36  59 0 0.50 0 0
i "GM_Standard_Kit"  253.3333  0.2000  38  55 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  253.3345  0.1417  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  253.3346  0.1417  57  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  253.3386  0.1417  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  253.3452  0.1417  64  54 0 0.38 0 0
i "GM_Acoustic_Bass"  253.5000  0.4500  42  75 0 0.50 0 0
i "GM_Standard_Kit"  253.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  253.5000  0.2000  44  47 0 0.30 0 0
i "GM_Standard_Kit"  253.5000  0.2000  37  60 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  253.5022  0.4250  67  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  253.5046  0.4250  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  253.5084  0.4250  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  253.5095  0.4250  57  56 0 0.38 0 0
i "GM_Standard_Kit"  253.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Bass"  254.0000  0.4750  43  76 0 0.50 0 0
i "GM_Helicopter"  254.0000  1.8000  60  84 0 0.46 0 0
i "GM_Standard_Kit"  254.0000  0.3000  51  64 0 0.65 0 0
i "GM_Standard_Kit"  254.0000  0.3000  36  58 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  254.0052  0.4250  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  254.0053  0.4250  58  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  254.0060  0.4250  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  254.0095  0.4250  69  51 0 0.38 0 0
i "GM_Acoustic_Bass"  254.5000  0.4750  45  77 0 0.50 0 0
i "GM_Standard_Kit"  254.5000  0.3000  51  70 0 0.65 0 0
i "GM_Standard_Kit"  254.5000  0.2000  44  47 0 0.30 0 0
i "GM_Standard_Kit"  254.8333  0.3000  51  45 0 0.65 0 0
i "GM_Standard_Kit"  254.8333  0.2000  38  52 0 0.45 0 0
i "GM_Acoustic_Grand_Piano"  254.8341  0.1417  62  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  254.8347  0.1417  65  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  254.8361  0.1417  58  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  254.8423  0.1417  69  59 0 0.38 0 0
i "GM_Acoustic_Bass"  255.0000  0.4750  46  75 0 0.50 0 0
i "GM_Standard_Kit"  255.0000  0.3000  51  62 0 0.65 0 0
i "GM_Standard_Kit"  255.0000  0.3000  36  54 0 0.50 0 0
i "GM_Standard_Kit"  255.0000  0.3000  48  78 0 0.40 0 0
i "GM_Standard_Kit"  255.3333  0.2000  38  53 0 0.45 0 0
i "GM_Standard_Kit"  255.3333  0.3000  47  82 0 0.45 0 0
i "GM_Acoustic_Bass"  255.5000  0.4500  44  73 0 0.50 0 0
i "GM_Standard_Kit"  255.5000  0.3000  51  69 0 0.65 0 0
i "GM_Standard_Kit"  255.5000  0.2000  44  47 0 0.30 0 0
i "GM_Standard_Kit"  255.5000  0.3000  45  74 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  255.5000  0.4250  58  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  255.5052  0.4250  64  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  255.5070  0.4250  61  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  255.5118  0.4250  67  59 0 0.38 0 0
i "GM_Standard_Kit"  255.8333  0.3000  51  48 0 0.65 0 0
i "GM_Standard_Kit"  255.8333  0.3000  43  81 0 0.55 0 0
i "GM_Acoustic_Bass"  256.0000  0.4750  43  73 0 0.50 0 0
i "GM_Applause"  256.0000  1.8000  60  84 0 0.61 0 0
i "GM_Standard_Kit"  256.0000  0.3000  51  60 0 0.65 0 0
i "GM_Standard_Kit"  256.0000  0.3000  36  55 0 0.50 0 0
i "GM_Acoustic_Bass"  256.5000  0.4750  43  70 0 0.50 0 0
i "GM_Standard_Kit"  256.5000  0.3000  51  66 0 0.65 0 0
i "GM_Standard_Kit"  256.5000  0.2000  44  49 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  256.5043  0.2833  65  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  256.5071  0.2833  74  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  256.5084  0.2833  70  51 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  256.5110  0.2833  69  58 0 0.38 0 0
i "GM_Standard_Kit"  256.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  256.8371  0.4250  65  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  256.8374  0.4250  74  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  256.8390  0.4250  70  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  256.8425  0.4250  69  57 0 0.38 0 0
i "GM_Acoustic_Bass"  257.0000  0.4750  43  70 0 0.50 0 0
i "GM_Standard_Kit"  257.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  257.0000  0.3000  36  58 0 0.50 0 0
i "GM_Acoustic_Bass"  257.5000  0.4500  37  78 0 0.50 0 0
i "GM_Standard_Kit"  257.5000  0.3000  51  67 0 0.65 0 0
i "GM_Standard_Kit"  257.5000  0.2000  44  48 0 0.30 0 0
i "GM_Standard_Kit"  257.5000  0.2000  37  60 0 0.45 0 0
i "GM_Standard_Kit"  257.8333  0.3000  51  48 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  257.8341  0.1417  58  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  257.8396  0.1417  65  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  257.8428  0.1417  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  257.8442  0.1417  62  49 0 0.38 0 0
i "GM_Acoustic_Bass"  258.0000  0.4750  36  73 0 0.50 0 0
i "GM_Gunshot"  258.0000  1.8000  60  84 0 0.25 0 0
i "GM_Standard_Kit"  258.0000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  258.0000  0.3000  36  56 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  258.3360  0.1417  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  258.3375  0.1417  74  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  258.3452  0.1417  70  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  258.3453  0.1417  67  55 0 0.38 0 0
i "GM_Acoustic_Bass"  258.5000  0.4750  38  70 0 0.50 0 0
i "GM_Standard_Kit"  258.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  258.5000  0.2000  44  49 0 0.30 0 0
i "GM_Standard_Kit"  258.8333  0.3000  51  51 0 0.65 0 0
i "GM_Acoustic_Bass"  259.0000  0.4750  34  72 0 0.50 0 0
i "GM_Standard_Kit"  259.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  259.0000  0.3000  36  53 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  259.0024  0.4250  58  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  259.0025  0.4250  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  259.0040  0.4250  64  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  259.0062  0.4250  62  52 0 0.38 0 0
i "GM_Acoustic_Bass"  259.5000  0.4500  48  70 0 0.50 0 0
i "GM_Standard_Kit"  259.5000  0.3000  51  71 0 0.65 0 0
i "GM_Standard_Kit"  259.5000  0.2000  44  47 0 0.30 0 0
i "GM_Standard_Kit"  259.8333  0.3000  51  45 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  259.8361  0.1417  70  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  259.8370  0.1417  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  259.8380  0.1417  73  50 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  259.8422  0.1417  67  58 0 0.38 0 0
i "GM_Acoustic_Bass"  260.0000  0.4750  41  73 0 0.50 0 0
i "GM_Standard_Kit"  260.0000  0.3000  51  59 0 0.65 0 0
i "GM_Standard_Kit"  260.0000  0.3000  36  58 0 0.50 0 0
i "GM_Acoustic_Bass"  260.5000  0.4750  43  72 0 0.50 0 0
i "GM_Standard_Kit"  260.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  260.5000  0.2000  44  47 0 0.30 0 0
i "GM_Acoustic_Grand_Piano"  260.5036  0.2833  64  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  260.5065  0.2833  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  260.5080  0.2833  67  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  260.5103  0.2833  57  52 0 0.38 0 0
i "GM_Standard_Kit"  260.8333  0.3000  51  47 0 0.65 0 0
i "GM_Acoustic_Grand_Piano"  260.8342  0.4250  69  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  260.8411  0.4250  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  260.8421  0.4250  72  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  260.8428  0.4250  67  51 0 0.38 0 0
i "GM_Acoustic_Bass"  261.0000  0.4750  48  72 0 0.50 0 0
i "GM_Standard_Kit"  261.0000  0.3000  51  63 0 0.65 0 0
i "GM_Standard_Kit"  261.0000  0.3000  36  53 0 0.50 0 0
i "GM_Standard_Kit"  261.0000  0.3000  48  81 0 0.40 0 0
i "GM_Standard_Kit"  261.3333  0.2000  38  55 0 0.45 0 0
i "GM_Standard_Kit"  261.3333  0.3000  47  81 0 0.45 0 0
i "GM_Acoustic_Bass"  261.5000  0.4500  39  74 0 0.50 0 0
i "GM_Standard_Kit"  261.5000  0.3000  51  65 0 0.65 0 0
i "GM_Standard_Kit"  261.5000  0.2000  44  53 0 0.30 0 0
i "GM_Standard_Kit"  261.5000  0.3000  45  78 0 0.50 0 0
i "GM_Standard_Kit"  261.8333  0.3000  51  48 0 0.65 0 0
i "GM_Standard_Kit"  261.8333  0.3000  43  78 0 0.55 0 0
i "GM_Acoustic_Grand_Piano"  261.8379  0.1417  67  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  261.8393  0.1417  60  49 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  261.8398  0.1417  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  261.8435  0.1417  57  51 0 0.38 0 0
i "GM_Acoustic_Bass"  262.0000  3.0000  41  86 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  262.0000  3.0000  57  72 0 0.38 0 0
i "GM_Standard_Kit"  262.0000  0.5000  49  90 0 0.70 0 0
i "GM_Standard_Kit"  262.0000  0.5000  36  70 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  262.0080  2.9920  60  72 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  262.0160  2.9840  64  72 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  262.0240  2.9760  67  72 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  262.0320  2.9680  72  72 0 0.38 0 0
i "GM_Vibraphone"  262.3333  2.8000  69  70 0 0.60 0 0
i "GM_Vibraphone"  262.3333  2.8000  72  70 0 0.60 0 0
i "GM_Vibraphone"  262.3333  2.8000  76  70 0 0.60 0 0
e 270.000
</CsScore>
</CsoundSynthesizer>
