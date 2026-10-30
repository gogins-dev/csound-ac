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

The score is a big-band / prog-rock showcase (variable tempos; bars of 8, 12 or 16 eighths) in which every General MIDI program
takes a turn over electric bass, rock kit, voice-led punches, and
occasional brass shouts.

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

gk_MasterOutput_level init -12 ; The whole band plays, so the master is turned down.
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
; Big-band / prog-rock. Tempos: intro 132, groove 144, shout 156, break 100, tag 138.
; Bars of 8, 12 or 16 eighths, subdivided as 2+2+2+2, 3+3+2, 5+3, 3+3+3+3, 5+3+5+3, …
; Harmony in E minor / G major with secondary dominants; voicings are voice-led.
; i "instrument" time duration key velocity front_back left_right bottom_top phase
i "GM_Standard_Kit"    0.0000  0.2200  36  57 0 0.50 0 0
i "GM_Standard_Kit"    0.0000  0.1200  42  47 0 0.35 0 0
i "GM_Standard_Kit"    0.0000  0.5000  49  86 0 0.72 0 0
i "GM_Standard_Kit"    0.0000  0.3500  57  68 0 0.78 0 0
i "GM_Standard_Kit"    0.2273  0.1200  42  30 0 0.35 0 0
i "GM_Standard_Kit"    0.4545  0.1200  42  30 0 0.35 0 0
i "GM_Standard_Kit"    0.6818  0.1200  42  34 0 0.35 0 0
i "GM_Standard_Kit"    0.9091  0.1200  42  30 0 0.35 0 0
i "GM_Standard_Kit"    1.1364  0.2200  36  55 0 0.50 0 0
i "GM_Standard_Kit"    1.1364  0.1800  38  64 0 0.48 0 0
i "GM_Standard_Kit"    1.1364  0.1200  42  42 0 0.35 0 0
i "GM_Standard_Kit"    1.3636  0.1200  42  33 0 0.35 0 0
i "GM_Standard_Kit"    1.5909  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"    1.8182  0.4182  40  81 0 0.50 0 0
i "GM_Standard_Kit"    1.8182  0.2200  36  57 0 0.50 0 0
i "GM_Standard_Kit"    1.8182  0.1200  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"    2.0455  0.2045  36  69 0 0.50 0 0
i "GM_Standard_Kit"    2.0455  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"    2.2727  0.4182  33  85 0 0.50 0 0
i "GM_Standard_Kit"    2.2727  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"    2.2727  0.1800  38  72 0 0.48 0 0
i "GM_Standard_Kit"    2.2727  0.1200  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"    2.5000  0.2045  36  71 0 0.50 0 0
i "GM_Standard_Kit"    2.5000  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"    2.5000  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"    2.7273  0.4182  35  80 0 0.50 0 0
i "GM_Standard_Kit"    2.7273  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"    2.7273  0.1200  42  48 0 0.35 0 0
i "GM_Standard_Kit"    2.9545  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"    3.1818  0.2045  37  70 0 0.50 0 0
i "GM_Standard_Kit"    3.1818  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"    3.4091  0.2091  35  81 0 0.50 0 0
i "GM_Standard_Kit"    3.4091  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"    3.4091  0.1800  38  71 0 0.48 0 0
i "GM_Standard_Kit"    3.4091  0.1200  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"    3.6364  0.4182  35  80 0 0.50 0 0
i "GM_Rock_Organ"    3.6364  1.7455  59  43 0 0.55 0 0
i "GM_Rock_Organ"    3.6364  1.7455  63  45 0 0.55 0 0
i "GM_Rock_Organ"    3.6364  1.7455  66  43 0 0.55 0 0
i "GM_Rock_Organ"    3.6364  1.7455  69  46 0 0.55 0 0
i "GM_Standard_Kit"    3.6364  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"    3.6364  0.1200  42  49 0 0.35 0 0
i "GM_Standard_Kit"    3.6364  0.5000  49  86 0 0.72 0 0
i "GM_Electric_Bass_finger"    3.8636  0.2045  37  72 0 0.50 0 0
i "GM_Standard_Kit"    3.8636  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"    4.0909  0.4182  35  84 0 0.50 0 0
i "GM_Standard_Kit"    4.0909  0.2200  36  68 0 0.50 0 0
i "GM_Standard_Kit"    4.0909  0.1800  38  72 0 0.48 0 0
i "GM_Standard_Kit"    4.0909  0.1200  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"    4.3182  0.2045  37  73 0 0.50 0 0
i "GM_Standard_Kit"    4.3182  0.1200  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"    4.5455  0.4182  35  80 0 0.50 0 0
i "GM_Standard_Kit"    4.5455  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"    4.5455  0.1200  42  53 0 0.35 0 0
i "GM_Electric_Bass_finger"    4.7727  0.4091  33  72 0 0.50 0 0
i "GM_Standard_Kit"    4.7727  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"    5.0000  0.1200  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"    5.2273  0.2091  35  83 0 0.50 0 0
i "GM_Standard_Kit"    5.2273  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"    5.2273  0.1800  38  74 0 0.48 0 0
i "GM_Standard_Kit"    5.2273  0.1200  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"    5.4545  0.4182  35  83 0 0.50 0 0
i "GM_Rock_Organ"    5.4545  2.6182  59  48 0 0.55 0 0
i "GM_Rock_Organ"    5.4545  2.6182  62  47 0 0.55 0 0
i "GM_Rock_Organ"    5.4545  2.6182  64  45 0 0.55 0 0
i "GM_Rock_Organ"    5.4545  2.6182  67  47 0 0.55 0 0
i "GM_Standard_Kit"    5.4545  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"    5.4545  0.1200  42  52 0 0.35 0 0
i "GM_Electric_Bass_finger"    5.6818  0.2045  36  71 0 0.50 0 0
i "GM_Standard_Kit"    5.6818  0.1200  42  40 0 0.35 0 0
i "GM_Electric_Bass_finger"    5.9091  0.2045  38  68 0 0.50 0 0
i "GM_Standard_Kit"    5.9091  0.1200  42  36 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"    5.9094  0.2500  67  64 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    5.9099  0.2500  62  61 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    5.9108  0.2500  59  61 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    5.9120  0.2500  64  62 0 0.40 0 0
i "GM_Electric_Bass_finger"    6.1364  0.4182  40  83 0 0.50 0 0
i "GM_Standard_Kit"    6.1364  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"    6.1364  0.1800  38  77 0 0.48 0 0
i "GM_Standard_Kit"    6.1364  0.1200  42  52 0 0.35 0 0
i "GM_Electric_Bass_finger"    6.3636  0.2045  38  69 0 0.50 0 0
i "GM_Standard_Kit"    6.3636  0.1200  42  35 0 0.35 0 0
i "GM_Standard_Kit"    6.5909  0.1200  42  39 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"    6.5927  0.2500  59  56 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    6.5928  0.2500  62  64 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    6.5953  0.2500  64  56 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    6.5963  0.2500  67  58 0 0.40 0 0
i "GM_Electric_Bass_finger"    6.8182  0.4182  40  82 0 0.50 0 0
i "GM_Standard_Kit"    6.8182  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"    6.8182  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"    6.8182  0.1500  50  76 0 0.40 0 0
i "GM_Electric_Bass_finger"    7.0455  0.2045  38  69 0 0.50 0 0
i "GM_Standard_Kit"    7.0455  0.1200  42  39 0 0.35 0 0
i "GM_Standard_Kit"    7.0455  0.1500  48  78 0 0.43 0 0
i "GM_Standard_Kit"    7.2727  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"    7.2727  0.1500  47  75 0 0.46 0 0
i "GM_Electric_Bass_finger"    7.5000  0.4182  40  82 0 0.50 0 0
i "GM_Standard_Kit"    7.5000  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"    7.5000  0.1800  38  76 0 0.48 0 0
i "GM_Standard_Kit"    7.5000  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"    7.5000  0.1500  45  80 0 0.49 0 0
i "GM_Acoustic_Grand_Piano"    7.5003  0.2500  67  59 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    7.5004  0.2500  62  60 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    7.5005  0.2500  59  61 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    7.5048  0.2500  64  59 0 0.40 0 0
i "GM_Electric_Bass_finger"    7.7273  0.2045  38  71 0 0.50 0 0
i "GM_Standard_Kit"    7.7273  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"    7.7273  0.1500  43  78 0 0.52 0 0
i "GM_Electric_Bass_finger"    7.9545  0.2045  40  70 0 0.50 0 0
i "GM_Standard_Kit"    7.9545  0.1200  46  35 0 0.35 0 0
i "GM_Standard_Kit"    7.9545  0.1500  41  78 0 0.55 0 0
i "GM_Standard_Kit"    7.9545  0.2000  49  82 0 0.70 0 0
i "GM_Electric_Bass_finger"    8.1818  0.3833  43  81 0 0.50 0 0
i "GM_Standard_Kit"    8.1818  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"    8.1818  0.1200  42  50 0 0.35 0 0
i "GM_Standard_Kit"    8.1818  0.5000  49  86 0 0.72 0 0
i "GM_Acoustic_Grand_Piano"    8.3902  0.1875  71  95 0 0.40 0 0
i "GM_Electric_Bass_finger"    8.3902  0.1875  45  67 0 0.50 0 0
i "GM_Standard_Kit"    8.3902  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"    8.5985  0.3833  43  80 0 0.50 0 0
i "GM_Standard_Kit"    8.5985  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"    8.5985  0.1800  38  66 0 0.48 0 0
i "GM_Standard_Kit"    8.5985  0.1200  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"    8.5994  0.2917  59  70 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    8.6000  0.2917  67  73 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    8.6012  0.2917  60  68 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    8.6016  0.2917  64  76 0 0.40 0 0
i "GM_Electric_Bass_finger"    8.8068  0.3750  45  73 0 0.50 0 0
i "GM_Standard_Kit"    8.8068  0.1200  42  35 0 0.35 0 0
i "GM_Standard_Kit"    9.0152  0.1200  46  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"    9.2235  0.1875  67  99 0 0.40 0 0
i "GM_Electric_Bass_finger"    9.2235  0.3833  43  79 0 0.50 0 0
i "GM_Standard_Kit"    9.2235  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"    9.2235  0.1200  42  48 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"    9.2248  0.2917  59  71 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    9.2259  0.2917  67  70 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    9.2260  0.2917  64  75 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    9.2292  0.2917  60  73 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    9.4318  0.3750  65  92 0 0.40 0 0
i "GM_Electric_Bass_finger"    9.4318  0.3750  43  73 0 0.50 0 0
i "GM_Standard_Kit"    9.4318  0.1200  42  35 0 0.35 0 0
i "GM_Standard_Kit"    9.6402  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"    9.8485  0.3833  45  81 0 0.50 0 0
i "GM_Standard_Kit"    9.8485  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"    9.8485  0.1200  42  51 0 0.35 0 0
i "GM_Bright_Acoustic_Piano"   10.0568  0.3750  64  94 0 0.58 0 0
i "GM_Electric_Bass_finger"   10.0568  0.3750  43  72 0 0.50 0 0
i "GM_Standard_Kit"   10.0568  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"   10.2652  0.1200  42  36 0 0.35 0 0
i "GM_Bright_Acoustic_Piano"   10.4735  0.1875  64 102 0 0.58 0 0
i "GM_Electric_Bass_finger"   10.4735  0.3833  45  83 0 0.50 0 0
i "GM_Standard_Kit"   10.4735  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"   10.4735  0.1800  38  69 0 0.48 0 0
i "GM_Standard_Kit"   10.4735  0.1200  42  49 0 0.35 0 0
i "GM_Bright_Acoustic_Piano"   10.6818  0.3750  64  92 0 0.58 0 0
i "GM_Standard_Kit"   10.6818  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"   10.8902  0.1875  43  71 0 0.50 0 0
i "GM_Standard_Kit"   10.8902  0.1200  42  31 0 0.35 0 0
i "GM_Bright_Acoustic_Piano"   11.0985  0.3750  64 103 0 0.58 0 0
i "GM_Electric_Bass_finger"   11.0985  0.3833  45  85 0 0.50 0 0
i "GM_Standard_Kit"   11.0985  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"   11.0985  0.1200  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   11.1020  0.2292  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   11.1028  0.2292  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   11.1035  0.2292  60  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   11.1041  0.2292  57  57 0 0.38 0 0
i "GM_Electric_Bass_finger"   11.3068  0.1875  43  71 0 0.50 0 0
i "GM_Standard_Kit"   11.3068  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"   11.5152  0.3833  42  84 0 0.50 0 0
i "GM_Electric_Grand_Piano"   11.5152  0.3750  64  99 0 0.76 0 0
i "GM_Rock_Organ"   11.5152  1.6000  57  32 0 0.55 0 0
i "GM_Rock_Organ"   11.5152  1.6000  60  32 0 0.55 0 0
i "GM_Rock_Organ"   11.5152  1.6000  64  34 0 0.55 0 0
i "GM_Rock_Organ"   11.5152  1.6000  66  36 0 0.55 0 0
i "GM_Standard_Kit"   11.5152  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"   11.5152  0.1200  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"   11.7235  0.1875  44  70 0 0.50 0 0
i "GM_Standard_Kit"   11.7235  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"   11.9318  0.3833  42  84 0 0.50 0 0
i "GM_Standard_Kit"   11.9318  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"   11.9318  0.1800  38  67 0 0.48 0 0
i "GM_Standard_Kit"   11.9318  0.1200  42  49 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   11.9321  0.2292  66  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   11.9328  0.2292  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   11.9337  0.2292  60  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   11.9351  0.2292  57  55 0 0.38 0 0
i "GM_Electric_Grand_Piano"   12.1402  0.1875  66  90 0 0.76 0 0
i "GM_Standard_Kit"   12.1402  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"   12.1402  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"   12.3485  0.3833  42  81 0 0.50 0 0
i "GM_Electric_Grand_Piano"   12.3485  0.5625  66  98 0 0.76 0 0
i "GM_Standard_Kit"   12.3485  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"   12.3485  0.1200  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"   12.5568  0.3750  44  71 0 0.50 0 0
i "GM_Standard_Kit"   12.5568  0.1200  42  34 0 0.35 0 0
i "GM_Standard_Kit"   12.7652  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"   12.9735  0.1917  42  81 0 0.50 0 0
i "GM_Electric_Grand_Piano"   12.9735  0.1875  66  96 0 0.76 0 0
i "GM_Standard_Kit"   12.9735  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"   12.9735  0.1800  38  69 0 0.48 0 0
i "GM_Standard_Kit"   12.9735  0.1200  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   12.9761  0.2292  57  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   12.9774  0.2292  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   12.9777  0.2292  64  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   12.9786  0.2292  66  54 0 0.38 0 0
i "GM_Electric_Bass_finger"   13.1818  0.3833  42  79 0 0.50 0 0
i "GM_Standard_Kit"   13.1818  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"   13.1818  0.1200  42  49 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   13.1835  0.2292  66  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   13.1866  0.2292  59  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   13.1866  0.2292  57  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   13.1873  0.2292  63  58 0 0.38 0 0
i "GM_Electric_Bass_finger"   13.3902  0.3750  40  73 0 0.50 0 0
i "GM_Honky_tonk_Piano"   13.3902  0.3750  66  89 0 0.38 0 0
i "GM_Standard_Kit"   13.3902  0.1200  42  35 0 0.35 0 0
i "GM_Standard_Kit"   13.5985  0.1200  46  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   13.8068  0.3833  42  85 0 0.50 0 0
i "GM_Standard_Kit"   13.8068  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"   13.8068  0.1800  38  67 0 0.48 0 0
i "GM_Standard_Kit"   13.8068  0.1200  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"   14.0152  0.3750  40  70 0 0.50 0 0
i "GM_Honky_tonk_Piano"   14.0152  0.3750  68  89 0 0.38 0 0
i "GM_Standard_Kit"   14.0152  0.1200  42  35 0 0.35 0 0
i "GM_Standard_Kit"   14.2235  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"   14.2235  0.1200  42  36 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   14.2238  0.2292  63  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   14.2249  0.2292  57  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   14.2261  0.2292  66  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   14.2285  0.2292  59  60 0 0.38 0 0
i "GM_Electric_Bass_finger"   14.4318  0.3833  40  84 0 0.50 0 0
i "GM_Standard_Kit"   14.4318  0.2200  36  60 0 0.50 0 0
i "GM_Standard_Kit"   14.4318  0.1200  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"   14.6402  0.1875  38  68 0 0.50 0 0
i "GM_Honky_tonk_Piano"   14.6402  0.1875  67  93 0 0.38 0 0
i "GM_Standard_Kit"   14.6402  0.1200  42  32 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   14.6404  0.2292  64  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   14.6445  0.2292  59  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   14.6453  0.2292  55  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   14.6455  0.2292  62  60 0 0.38 0 0
i "GM_Electric_Bass_finger"   14.8485  0.3833  40  82 0 0.50 0 0
i "GM_Honky_tonk_Piano"   14.8485  0.3750  67 101 0 0.38 0 0
i "GM_Standard_Kit"   14.8485  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"   14.8485  0.1800  38  73 0 0.48 0 0
i "GM_Standard_Kit"   14.8485  0.1200  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"   15.0568  0.1875  40  69 0 0.50 0 0
i "GM_Standard_Kit"   15.0568  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"   15.2652  0.3833  40  79 0 0.50 0 0
i "GM_Honky_tonk_Piano"   15.2652  0.3750  64 102 0 0.38 0 0
i "GM_Standard_Kit"   15.2652  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"   15.2652  0.1200  42  48 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   15.2653  0.2292  55  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   15.2654  0.2292  59  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   15.2698  0.2292  64  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   15.2705  0.2292  62  52 0 0.38 0 0
i "GM_Standard_Kit"   15.4735  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"   15.6818  0.3833  40  85 0 0.50 0 0
i "GM_Standard_Kit"   15.6818  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"   15.6818  0.1200  42  46 0 0.35 0 0
i "GM_Standard_Kit"   15.8902  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   16.0985  0.1875  42  71 0 0.50 0 0
i "GM_Standard_Kit"   16.0985  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   16.3068  0.3833  40  80 0 0.50 0 0
i "GM_Electric_Piano_1"   16.3068  0.1875  64 100 0 0.56 0 0
i "GM_Standard_Kit"   16.3068  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"   16.3068  0.1800  38  66 0 0.48 0 0
i "GM_Standard_Kit"   16.3068  0.1200  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"   16.5152  0.1875  40  68 0 0.50 0 0
i "GM_Electric_Piano_1"   16.5152  0.3750  69  94 0 0.56 0 0
i "GM_Standard_Kit"   16.5152  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"   16.7235  0.1875  42  68 0 0.50 0 0
i "GM_Standard_Kit"   16.7235  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"   16.9318  0.3833  40  82 0 0.50 0 0
i "GM_Standard_Kit"   16.9318  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"   16.9318  0.1200  42  49 0 0.35 0 0
i "GM_Electric_Piano_1"   16.9329  0.2917  55  68 0 0.56 0 0
i "GM_Electric_Piano_1"   16.9356  0.2917  62  75 0 0.56 0 0
i "GM_Electric_Piano_1"   16.9359  0.2917  64  73 0 0.56 0 0
i "GM_Electric_Piano_1"   16.9362  0.2917  59  74 0 0.56 0 0
i "GM_Electric_Bass_finger"   17.1402  0.1875  38  67 0 0.50 0 0
i "GM_Standard_Kit"   17.1402  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   17.3485  0.3833  38  84 0 0.50 0 0
i "GM_Electric_Piano_2"   17.3485  0.3750  67 103 0 0.74 0 0
i "GM_Standard_Kit"   17.3485  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"   17.3485  0.1200  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   17.3490  0.2292  59  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.3491  0.2292  55  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.3530  0.2292  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.3538  0.2292  66  59 0 0.38 0 0
i "GM_Electric_Bass_finger"   17.5568  0.1875  38  71 0 0.50 0 0
i "GM_Standard_Kit"   17.5568  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"   17.7652  0.3833  38  83 0 0.50 0 0
i "GM_Electric_Piano_2"   17.7652  0.1875  67  95 0 0.74 0 0
i "GM_Standard_Kit"   17.7652  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"   17.7652  0.1800  38  70 0 0.48 0 0
i "GM_Standard_Kit"   17.7652  0.1200  42  49 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   17.7680  0.2292  59  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.7685  0.2292  66  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.7686  0.2292  55  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.7709  0.2292  62  57 0 0.38 0 0
i "GM_Electric_Bass_finger"   17.9735  0.3750  38  72 0 0.50 0 0
i "GM_Electric_Piano_2"   17.9735  0.3750  69  89 0 0.74 0 0
i "GM_Standard_Kit"   17.9735  0.1200  42  34 0 0.35 0 0
i "GM_Standard_Kit"   18.1818  0.1200  46  36 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   18.1823  0.2292  55  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   18.1828  0.2292  66  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   18.1854  0.2292  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   18.1864  0.2292  59  53 0 0.38 0 0
i "GM_Electric_Bass_finger"   18.3902  0.3833  38  85 0 0.50 0 0
i "GM_Standard_Kit"   18.3902  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"   18.3902  0.1200  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"   18.5985  0.1875  38  68 0 0.50 0 0
i "GM_Electric_Piano_2"   18.5985  0.1875  67  92 0 0.74 0 0
i "GM_Standard_Kit"   18.5985  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"   18.8068  0.1917  38  79 0 0.50 0 0
i "GM_Electric_Piano_2"   18.8068  0.1875  67  99 0 0.74 0 0
i "GM_Standard_Kit"   18.8068  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"   18.8068  0.1800  38  73 0 0.48 0 0
i "GM_Standard_Kit"   18.8068  0.1200  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"   19.0152  0.3833  38  80 0 0.50 0 0
i "GM_Harpsichord"   19.0152  0.3750  65  96 0 0.36 0 0
i "GM_Rock_Organ"   19.0152  1.6000  57  32 0 0.55 0 0
i "GM_Rock_Organ"   19.0152  1.6000  60  34 0 0.55 0 0
i "GM_Rock_Organ"   19.0152  1.6000  62  33 0 0.55 0 0
i "GM_Rock_Organ"   19.0152  1.6000  65  33 0 0.55 0 0
i "GM_Standard_Kit"   19.0152  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"   19.0152  0.1200  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   19.0160  0.2292  57  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   19.0185  0.2292  65  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   19.0200  0.2292  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   19.0204  0.2292  60  59 0 0.38 0 0
i "GM_Standard_Kit"   19.2235  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   19.4318  0.3833  38  84 0 0.50 0 0
i "GM_Harpsichord"   19.4318  0.1875  65 102 0 0.36 0 0
i "GM_Standard_Kit"   19.4318  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"   19.4318  0.1800  38  73 0 0.48 0 0
i "GM_Standard_Kit"   19.4318  0.1200  42  47 0 0.35 0 0
i "GM_Harpsichord"   19.6402  0.3750  66  92 0 0.36 0 0
i "GM_Standard_Kit"   19.6402  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"   19.8485  0.1875  36  67 0 0.50 0 0
i "GM_Standard_Kit"   19.8485  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"   20.0568  0.3833  38  81 0 0.50 0 0
i "GM_Harpsichord"   20.0568  0.1875  65 101 0 0.36 0 0
i "GM_Standard_Kit"   20.0568  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"   20.0568  0.1200  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   20.0575  0.2292  65  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.0576  0.2292  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.0607  0.2292  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.0610  0.2292  57  56 0 0.38 0 0
i "GM_Electric_Bass_finger"   20.2652  0.1875  38  73 0 0.50 0 0
i "GM_Harpsichord"   20.2652  0.3750  67  90 0 0.36 0 0
i "GM_Standard_Kit"   20.2652  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   20.4735  0.1875  36  72 0 0.50 0 0
i "GM_Standard_Kit"   20.4735  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"   20.6818  0.3833  38  83 0 0.50 0 0
i "GM_Standard_Kit"   20.6818  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"   20.6818  0.1200  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   20.6825  0.2292  59  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.6844  0.2292  65  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.6850  0.2292  62  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.6876  0.2292  55  57 0 0.38 0 0
i "GM_Clavi"   20.8902  0.7500  67  88 0 0.54 0 0
i "GM_Electric_Bass_finger"   20.8902  0.3750  36  73 0 0.50 0 0
i "GM_Standard_Kit"   20.8902  0.1200  42  33 0 0.35 0 0
i "GM_Standard_Kit"   21.0985  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"   21.3068  0.1875  35  73 0 0.50 0 0
i "GM_Standard_Kit"   21.3068  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"   21.5152  0.1875  35  69 0 0.50 0 0
i "GM_Standard_Kit"   21.5152  0.1200  42  34 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   21.5155  0.2292  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   21.5167  0.2292  65  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   21.5178  0.2292  59  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   21.5201  0.2292  55  52 0 0.38 0 0
i "GM_Clavi"   21.7235  0.9375  67 103 0 0.54 0 0
i "GM_Electric_Bass_finger"   21.7235  0.3833  38  84 0 0.50 0 0
i "GM_Standard_Kit"   21.7235  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"   21.7235  0.1800  38  71 0 0.48 0 0
i "GM_Standard_Kit"   21.7235  0.1200  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"   21.9318  0.1875  38  67 0 0.50 0 0
i "GM_Standard_Kit"   21.9318  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"   22.1402  0.1875  36  73 0 0.50 0 0
i "GM_Standard_Kit"   22.1402  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"   22.3485  0.3750  38  73 0 0.50 0 0
i "GM_Standard_Kit"   22.3485  0.1200  42  32 0 0.35 0 0
i "GM_Standard_Kit"   22.5568  0.1200  46  32 0 0.35 0 0
i "GM_Clavi"   22.7652  0.5625  67 102 0 0.54 0 0
i "GM_Electric_Bass_finger"   22.7652  0.3833  38  83 0 0.50 0 0
i "GM_Standard_Kit"   22.7652  0.2200  36  60 0 0.50 0 0
i "GM_Standard_Kit"   22.7652  0.1200  42  51 0 0.35 0 0
i "GM_Standard_Kit"   22.7652  0.1500  50  84 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"   22.7662  0.2292  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   22.7680  0.2292  59  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   22.7680  0.2292  55  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   22.7695  0.2292  62  59 0 0.38 0 0
i "GM_Electric_Bass_finger"   22.9735  0.1875  36  71 0 0.50 0 0
i "GM_Standard_Kit"   22.9735  0.1200  42  34 0 0.35 0 0
i "GM_Standard_Kit"   22.9735  0.1500  48  84 0 0.43 0 0
i "GM_Standard_Kit"   23.1818  0.1200  42  35 0 0.35 0 0
i "GM_Standard_Kit"   23.1818  0.1500  47  80 0 0.46 0 0
i "GM_Clavi"   23.3902  0.1875  67 101 0 0.54 0 0
i "GM_Electric_Bass_finger"   23.3902  0.3833  38  81 0 0.50 0 0
i "GM_Standard_Kit"   23.3902  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"   23.3902  0.1800  38  66 0 0.48 0 0
i "GM_Standard_Kit"   23.3902  0.1200  42  46 0 0.35 0 0
i "GM_Standard_Kit"   23.3902  0.1500  45  80 0 0.49 0 0
i "GM_Clavi"   23.5985  0.3750  68  91 0 0.54 0 0
i "GM_Electric_Bass_finger"   23.5985  0.3750  38  73 0 0.50 0 0
i "GM_Standard_Kit"   23.5985  0.1200  42  35 0 0.35 0 0
i "GM_Standard_Kit"   23.5985  0.1500  43  81 0 0.52 0 0
i "GM_Standard_Kit"   23.8068  0.1200  42  31 0 0.35 0 0
i "GM_Standard_Kit"   23.8068  0.1500  41  84 0 0.55 0 0
i "GM_Standard_Kit"   23.8068  0.2000  49  82 0 0.70 0 0
i "GM_Electric_Bass_finger"   24.0152  0.3833  36  80 0 0.50 0 0
i "GM_Standard_Kit"   24.0152  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"   24.0152  0.1200  42  51 0 0.35 0 0
i "GM_Standard_Kit"   24.0152  0.5000  49  86 0 0.72 0 0
i "GM_Standard_Kit"   24.0152  0.3500  57  68 0 0.78 0 0
i "GM_Electric_Bass_finger"   24.2235  0.1875  35  71 0 0.50 0 0
i "GM_Standard_Kit"   24.2235  0.1200  42  33 0 0.35 0 0
i "GM_Celesta"   24.4318  0.3958  72  95 0 0.72 0 0
i "GM_Electric_Bass_finger"   24.4318  0.3833  36  80 0 0.50 0 0
i "GM_Standard_Kit"   24.4318  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"   24.4318  0.1800  38  72 0 0.48 0 0
i "GM_Standard_Kit"   24.4318  0.1200  42  48 0 0.35 0 0
i "GM_Standard_Kit"   24.6402  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"   24.8485  0.3833  36  80 0 0.50 0 0
i "GM_Standard_Kit"   24.8485  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"   24.8485  0.1200  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   24.8499  0.2292  55  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   24.8501  0.2292  60  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   24.8516  0.2292  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   24.8540  0.2292  59  59 0 0.38 0 0
i "GM_Electric_Bass_finger"   25.0568  0.3750  38  73 0 0.50 0 0
i "GM_Standard_Kit"   25.0568  0.1200  42  35 0 0.35 0 0
i "GM_Standard_Kit"   25.2652  0.1200  42  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   25.2654  0.2292  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.2663  0.2292  55  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.2684  0.2292  60  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.2692  0.2292  59  57 0 0.38 0 0
i "GM_Celesta"   25.4735  0.1979  72 103 0 0.72 0 0
i "GM_Electric_Bass_finger"   25.4735  0.1917  36  81 0 0.50 0 0
i "GM_Standard_Kit"   25.4735  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"   25.4735  0.1800  38  66 0 0.48 0 0
i "GM_Standard_Kit"   25.4735  0.1200  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"   25.6818  0.3833  36  83 0 0.50 0 0
i "GM_Standard_Kit"   25.6818  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"   25.6818  0.1200  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   25.6839  0.2292  55  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.6845  0.2292  60  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.6849  0.2292  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.6860  0.2292  59  60 0 0.38 0 0
i "GM_Electric_Bass_finger"   25.8902  0.1875  35  73 0 0.50 0 0
i "GM_Glockenspiel"   25.8902  0.1979  89  94 0 0.33 0 0
i "GM_Standard_Kit"   25.8902  0.1200  42  31 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   25.8902  0.2292  55  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.8911  0.2292  64  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.8932  0.2292  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.8936  0.2292  59  58 0 0.38 0 0
i "GM_Electric_Bass_finger"   26.0985  0.3833  36  81 0 0.50 0 0
i "GM_Standard_Kit"   26.0985  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"   26.0985  0.1800  38  66 0 0.48 0 0
i "GM_Standard_Kit"   26.0985  0.1200  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"   26.3068  0.3750  38  70 0 0.50 0 0
i "GM_Glockenspiel"   26.3068  0.3958  88  86 0 0.33 0 0
i "GM_Standard_Kit"   26.3068  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"   26.5152  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   26.7235  0.3833  40  81 0 0.50 0 0
i "GM_Glockenspiel"   26.7235  0.5938  88 102 0 0.33 0 0
i "GM_Standard_Kit"   26.7235  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"   26.7235  0.1200  42  48 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   26.7241  0.2292  64  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   26.7254  0.2292  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   26.7270  0.2292  57  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   26.7286  0.2292  55  52 0 0.38 0 0
i "GM_Electric_Bass_finger"   26.9318  0.1875  41  68 0 0.50 0 0
i "GM_Standard_Kit"   26.9318  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"   27.1402  0.1875  43  68 0 0.50 0 0
i "GM_Standard_Kit"   27.1402  0.1200  46  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   27.3485  0.3833  45  84 0 0.50 0 0
i "GM_Rock_Organ"   27.3485  1.6000  55  32 0 0.55 0 0
i "GM_Rock_Organ"   27.3485  1.6000  57  35 0 0.55 0 0
i "GM_Rock_Organ"   27.3485  1.6000  60  35 0 0.55 0 0
i "GM_Rock_Organ"   27.3485  1.6000  64  36 0 0.55 0 0
i "GM_Standard_Kit"   27.3485  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"   27.3485  0.1200  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"   27.5568  0.1875  47  70 0 0.50 0 0
i "GM_Standard_Kit"   27.5568  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"   27.7652  0.3833  45  85 0 0.50 0 0
i "GM_Standard_Kit"   27.7652  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"   27.7652  0.1800  38  69 0 0.48 0 0
i "GM_Standard_Kit"   27.7652  0.1200  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"   27.9735  0.1875  45  72 0 0.50 0 0
i "GM_Standard_Kit"   27.9735  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"   28.1818  0.1875  47  68 0 0.50 0 0
i "GM_Standard_Kit"   28.1818  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   28.3902  0.3833  45  81 0 0.50 0 0
i "GM_Music_Box"   28.3902  0.5938  88  95 0 0.52 0 0
i "GM_Standard_Kit"   28.3902  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"   28.3902  0.1200  42  48 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   28.3907  0.2292  64  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   28.3907  0.2292  55  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   28.3916  0.2292  60  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   28.3943  0.2292  57  53 0 0.38 0 0
i "GM_Electric_Bass_finger"   28.5985  0.1875  45  70 0 0.50 0 0
i "GM_Standard_Kit"   28.5985  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"   28.8068  0.1875  45  70 0 0.50 0 0
i "GM_Standard_Kit"   28.8068  0.1200  46  33 0 0.35 0 0
i "GM_Electric_Bass_finger"   29.0152  0.3833  45  79 0 0.50 0 0
i "GM_Standard_Kit"   29.0152  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"   29.0152  0.1200  42  47 0 0.35 0 0
i "GM_Vibraphone"   29.0152  0.5625  86  96 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"   29.0179  0.2292  60  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   29.0184  0.2292  57  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   29.0200  0.2292  54  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   29.0207  0.2292  62  53 0 0.38 0 0
i "GM_Electric_Bass_finger"   29.2235  0.1875  43  73 0 0.50 0 0
i "GM_Standard_Kit"   29.2235  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"   29.4318  0.1875  42  69 0 0.50 0 0
i "GM_Standard_Kit"   29.4318  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   29.6402  0.3833  45  79 0 0.50 0 0
i "GM_Standard_Kit"   29.6402  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"   29.6402  0.1800  38  72 0 0.48 0 0
i "GM_Standard_Kit"   29.6402  0.1200  42  51 0 0.35 0 0
i "GM_Vibraphone"   29.6402  0.1875  86  99 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"   29.6416  0.2292  62  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   29.6418  0.2292  60  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   29.6423  0.2292  54  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   29.6456  0.2292  57  59 0 0.38 0 0
i "GM_Standard_Kit"   29.8485  0.1200  42  32 0 0.35 0 0
i "GM_Vibraphone"   29.8485  0.3750  88  92 0 0.70 0 0
i "GM_Electric_Bass_finger"   30.0568  0.1875  43  73 0 0.50 0 0
i "GM_Standard_Kit"   30.0568  0.2200  36  60 0 0.50 0 0
i "GM_Standard_Kit"   30.0568  0.1200  42  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   30.0582  0.2292  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   30.0596  0.2292  57  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   30.0597  0.2292  54  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   30.0599  0.2292  62  52 0 0.38 0 0
i "GM_Electric_Bass_finger"   30.2652  0.3833  45  80 0 0.50 0 0
i "GM_Standard_Kit"   30.2652  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"   30.2652  0.1200  42  50 0 0.35 0 0
i "GM_Vibraphone"   30.2652  0.1875  86  97 0 0.70 0 0
i "GM_Electric_Bass_finger"   30.4735  0.1875  43  72 0 0.50 0 0
i "GM_Standard_Kit"   30.4735  0.1200  42  35 0 0.35 0 0
i "GM_Vibraphone"   30.4735  0.7500  84  90 0 0.70 0 0
i "GM_Standard_Kit"   30.6818  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"   30.8902  0.1875  42  70 0 0.50 0 0
i "GM_Standard_Kit"   30.8902  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"   31.0985  0.1875  40  68 0 0.50 0 0
i "GM_Standard_Kit"   31.0985  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"   31.3068  0.1917  38  79 0 0.50 0 0
i "GM_Standard_Kit"   31.3068  0.2200  36  60 0 0.50 0 0
i "GM_Standard_Kit"   31.3068  0.1800  38  69 0 0.48 0 0
i "GM_Standard_Kit"   31.3068  0.1200  42  50 0 0.35 0 0
i "GM_Vibraphone"   31.3068  0.1875  84 103 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"   31.3085  0.2292  54  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   31.3087  0.2292  57  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   31.3126  0.2292  62  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   31.3128  0.2292  60  55 0 0.38 0 0
i "GM_Electric_Bass_finger"   31.5152  0.3833  38  81 0 0.50 0 0
i "GM_Marimba"   31.5152  0.7500  83 101 0 0.31 0 0
i "GM_Standard_Kit"   31.5152  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"   31.5152  0.1200  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"   31.7235  0.3750  36  67 0 0.50 0 0
i "GM_Standard_Kit"   31.7235  0.1200  42  32 0 0.35 0 0
i "GM_Standard_Kit"   31.9318  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"   32.1402  0.1875  35  67 0 0.50 0 0
i "GM_Standard_Kit"   32.1402  0.1200  46  32 0 0.35 0 0
i "GM_Electric_Bass_finger"   32.3485  0.3833  38  80 0 0.50 0 0
i "GM_Marimba"   32.3485  0.3750  79 102 0 0.31 0 0
i "GM_Standard_Kit"   32.3485  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"   32.3485  0.1800  38  69 0 0.48 0 0
i "GM_Standard_Kit"   32.3485  0.1200  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   32.3495  0.2292  55  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   32.3521  0.2292  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   32.3522  0.2292  59  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   32.3538  0.2292  54  53 0 0.38 0 0
i "GM_Electric_Bass_finger"   32.5568  0.1875  40  73 0 0.50 0 0
i "GM_Standard_Kit"   32.5568  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"   32.7652  0.3833  38  82 0 0.50 0 0
i "GM_Marimba"   32.7652  0.3750  79 102 0 0.31 0 0
i "GM_Standard_Kit"   32.7652  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"   32.7652  0.1200  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   32.7682  0.2292  55  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   32.7697  0.2292  54  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   32.7699  0.2292  59  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   32.7711  0.2292  62  59 0 0.38 0 0
i "GM_Electric_Bass_finger"   32.9735  0.1875  36  70 0 0.50 0 0
i "GM_Standard_Kit"   32.9735  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"   33.1818  0.3833  33  79 0 0.50 0 0
i "GM_Standard_Kit"   33.1818  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"   33.1818  0.1200  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"   33.3902  0.1875  33  70 0 0.50 0 0
i "GM_Standard_Kit"   33.3902  0.1200  42  32 0 0.35 0 0
i "GM_Xylophone"   33.3902  0.5938  79  93 0 0.49 0 0
i "GM_Electric_Bass_finger"   33.5985  0.1875  35  73 0 0.50 0 0
i "GM_Standard_Kit"   33.5985  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   33.8068  0.1875  35  69 0 0.50 0 0
i "GM_Standard_Kit"   33.8068  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"   33.8068  0.1200  46  32 0 0.35 0 0
i "GM_Electric_Bass_finger"   34.0152  0.3833  33  79 0 0.50 0 0
i "GM_Standard_Kit"   34.0152  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"   34.0152  0.1800  38  70 0 0.48 0 0
i "GM_Standard_Kit"   34.0152  0.1200  42  51 0 0.35 0 0
i "GM_Xylophone"   34.0152  0.3958  79  96 0 0.49 0 0
i "GM_Electric_Bass_finger"   34.2235  0.1875  33  72 0 0.50 0 0
i "GM_Standard_Kit"   34.2235  0.1200  42  31 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   34.2236  0.2292  57  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   34.2239  0.2292  55  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   34.2265  0.2292  52  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   34.2270  0.2292  61  60 0 0.38 0 0
i "GM_Electric_Bass_finger"   34.4318  0.3833  33  83 0 0.50 0 0
i "GM_Standard_Kit"   34.4318  0.2200  36  60 0 0.50 0 0
i "GM_Standard_Kit"   34.4318  0.1200  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"   34.6402  0.1875  33  69 0 0.50 0 0
i "GM_Standard_Kit"   34.6402  0.1200  42  32 0 0.35 0 0
i "GM_Xylophone"   34.6402  0.1979  78  90 0 0.49 0 0
i "GM_Electric_Bass_finger"   34.8485  0.3833  33  79 0 0.50 0 0
i "GM_Rock_Organ"   34.8485  1.6000  53  35 0 0.55 0 0
i "GM_Rock_Organ"   34.8485  1.6000  57  36 0 0.55 0 0
i "GM_Rock_Organ"   34.8485  1.6000  60  33 0 0.55 0 0
i "GM_Rock_Organ"   34.8485  1.6000  62  35 0 0.55 0 0
i "GM_Standard_Kit"   34.8485  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"   34.8485  0.1200  42  49 0 0.35 0 0
i "GM_Tubular_Bells"   34.8485  0.3750  69 100 0 0.67 0 0
i "GM_Electric_Bass_finger"   35.0568  0.1875  33  69 0 0.50 0 0
i "GM_Standard_Kit"   35.0568  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"   35.2652  0.3833  33  84 0 0.50 0 0
i "GM_Standard_Kit"   35.2652  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"   35.2652  0.1800  38  67 0 0.48 0 0
i "GM_Standard_Kit"   35.2652  0.1200  42  50 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   35.2678  0.2292  53  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   35.2688  0.2292  57  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   35.2691  0.2292  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   35.2708  0.2292  60  58 0 0.38 0 0
i "GM_Electric_Bass_finger"   35.4735  0.1875  34  70 0 0.50 0 0
i "GM_Standard_Kit"   35.4735  0.1200  42  35 0 0.35 0 0
i "GM_Tubular_Bells"   35.4735  0.1875  68  91 0 0.67 0 0
i "GM_Acoustic_Grand_Piano"   35.4752  0.2292  62  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   35.4763  0.2292  60  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   35.4771  0.2292  53  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   35.4791  0.2292  57  59 0 0.38 0 0
i "GM_Electric_Bass_finger"   35.6818  0.3833  33  83 0 0.50 0 0
i "GM_Standard_Kit"   35.6818  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"   35.6818  0.1200  42  49 0 0.35 0 0
i "GM_Tubular_Bells"   35.6818  0.5625  69 103 0 0.67 0 0
i "GM_Electric_Bass_finger"   35.8902  0.1875  31  69 0 0.50 0 0
i "GM_Standard_Kit"   35.8902  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"   36.0985  0.1875  33  72 0 0.50 0 0
i "GM_Standard_Kit"   36.0985  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"   36.3068  0.1917  33  83 0 0.50 0 0
i "GM_Standard_Kit"   36.3068  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"   36.3068  0.1800  38  70 0 0.48 0 0
i "GM_Standard_Kit"   36.3068  0.1200  42  50 0 0.35 0 0
i "GM_Tubular_Bells"   36.3068  0.1875  65 100 0 0.67 0 0
i "GM_Electric_Bass_finger"   36.5152  0.3833  31  80 0 0.50 0 0
i "GM_Standard_Kit"   36.5152  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"   36.5152  0.1200  42  47 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   36.5152  0.2292  53  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   36.5152  0.2292  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   36.5158  0.2292  59  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   36.5178  0.2292  55  54 0 0.38 0 0
i "GM_Dulcimer"   36.7235  0.1875  65  92 0 0.29 0 0
i "GM_Electric_Bass_finger"   36.7235  0.3750  29  71 0 0.50 0 0
i "GM_Standard_Kit"   36.7235  0.1200  42  35 0 0.35 0 0
i "GM_Dulcimer"   36.9318  0.5625  64  87 0 0.29 0 0
i "GM_Standard_Kit"   36.9318  0.1200  42  31 0 0.35 0 0
i "GM_Standard_Kit"   37.1402  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"   37.3485  0.1200  42  36 0 0.35 0 0
i "GM_Dulcimer"   37.5568  0.1875  65 101 0 0.29 0 0
i "GM_Electric_Bass_finger"   37.5568  0.3833  31  84 0 0.50 0 0
i "GM_Standard_Kit"   37.5568  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"   37.5568  0.1800  38  68 0 0.48 0 0
i "GM_Standard_Kit"   37.5568  0.1200  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   37.5582  0.2292  62  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   37.5587  0.2292  53  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   37.5606  0.2292  55  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   37.5609  0.2292  59  55 0 0.38 0 0
i "GM_Dulcimer"   37.7652  0.7500  65  93 0 0.29 0 0
i "GM_Electric_Bass_finger"   37.7652  0.1875  29  68 0 0.50 0 0
i "GM_Standard_Kit"   37.7652  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"   37.9735  0.1875  31  72 0 0.50 0 0
i "GM_Standard_Kit"   37.9735  0.1200  42  32 0 0.35 0 0
i "GM_Standard_Kit"   38.1818  0.1200  42  33 0 0.35 0 0
i "GM_Standard_Kit"   38.3902  0.1200  42  31 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   38.3905  0.2292  53  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   38.3937  0.2292  55  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   38.3948  0.2292  59  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   38.3956  0.2292  62  53 0 0.38 0 0
i "GM_Dulcimer"   38.5985  0.5625  65  95 0 0.29 0 0
i "GM_Electric_Bass_finger"   38.5985  0.3833  31  80 0 0.50 0 0
i "GM_Standard_Kit"   38.5985  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"   38.5985  0.1200  42  47 0 0.35 0 0
i "GM_Standard_Kit"   38.5985  0.1500  50  83 0 0.40 0 0
i "GM_Electric_Bass_finger"   38.8068  0.1875  29  71 0 0.50 0 0
i "GM_Standard_Kit"   38.8068  0.1200  42  34 0 0.35 0 0
i "GM_Standard_Kit"   38.8068  0.1500  48  76 0 0.43 0 0
i "GM_Electric_Bass_finger"   39.0152  0.1875  31  67 0 0.50 0 0
i "GM_Standard_Kit"   39.0152  0.1200  42  32 0 0.35 0 0
i "GM_Standard_Kit"   39.0152  0.1500  47  76 0 0.46 0 0
i "GM_Electric_Bass_finger"   39.2235  0.3833  31  79 0 0.50 0 0
i "GM_Standard_Kit"   39.2235  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"   39.2235  0.1800  38  67 0 0.48 0 0
i "GM_Standard_Kit"   39.2235  0.1200  42  47 0 0.35 0 0
i "GM_Standard_Kit"   39.2235  0.1500  45  83 0 0.49 0 0
i "GM_Dulcimer"   39.4318  0.3750  66  94 0 0.29 0 0
i "GM_Electric_Bass_finger"   39.4318  0.1875  33  71 0 0.50 0 0
i "GM_Standard_Kit"   39.4318  0.1200  42  34 0 0.35 0 0
i "GM_Standard_Kit"   39.4318  0.1500  43  82 0 0.52 0 0
i "GM_Standard_Kit"   39.6402  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"   39.6402  0.1500  41  76 0 0.55 0 0
i "GM_Standard_Kit"   39.6402  0.2000  49  82 0 0.70 0 0
i "GM_Alto_Sax"   39.8485  0.2212  71  60 0 0.62 0 0
i "GM_Drawbar_Organ"   39.8485  0.1731  67  97 0 0.47 0 0
i "GM_Slap_Bass_1"   39.8485  0.3538  31  82 0 0.50 0 0
i "GM_Standard_Kit"   39.8485  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"   39.8485  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"   39.8485  0.2200  51  48 0 0.70 0 0
i "GM_Standard_Kit"   39.8485  0.5000  49  86 0 0.72 0 0
i "GM_Standard_Kit"   39.8485  0.3500  57  68 0 0.78 0 0
i "GM_Tenor_Sax"   39.8485  0.2212  55  59 0 0.35 0 0
i "GM_Trombone"   39.8485  0.2212  60  56 0 0.28 0 0
i "GM_Trumpet"   39.8485  0.2212  76  59 0 0.72 0 0
i "GM_Electric_Piano_1"   39.8500  0.2115  59  52 0 0.42 0 0
i "GM_Electric_Piano_1"   39.8526  0.2115  60  58 0 0.42 0 0
i "GM_Electric_Piano_1"   39.8530  0.2115  55  53 0 0.42 0 0
i "GM_Electric_Piano_1"   39.8531  0.2115  52  58 0 0.42 0 0
i "GM_Drawbar_Organ"   40.0408  0.5192  68  90 0 0.47 0 0
i "GM_Slap_Bass_1"   40.0408  0.1731  33  71 0 0.50 0 0
i "GM_Standard_Kit"   40.0408  0.1200  42  37 0 0.35 0 0
i "GM_Slap_Bass_1"   40.2331  0.1731  35  73 0 0.50 0 0
i "GM_Standard_Kit"   40.2331  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"   40.4254  0.1200  42  38 0 0.35 0 0
i "GM_Electric_Piano_1"   40.4258  0.2115  59  57 0 0.42 0 0
i "GM_Electric_Piano_1"   40.4263  0.2115  55  56 0 0.42 0 0
i "GM_Electric_Piano_1"   40.4266  0.2115  52  56 0 0.42 0 0
i "GM_Electric_Piano_1"   40.4309  0.2115  60  52 0 0.42 0 0
i "GM_Alto_Sax"   40.6177  0.2212  71  58 0 0.62 0 0
i "GM_Slap_Bass_1"   40.6177  0.3538  36  80 0 0.50 0 0
i "GM_Standard_Kit"   40.6177  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"   40.6177  0.1800  38  77 0 0.48 0 0
i "GM_Standard_Kit"   40.6177  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"   40.6177  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"   40.6177  0.2212  55  55 0 0.35 0 0
i "GM_Trombone"   40.6177  0.2212  60  57 0 0.28 0 0
i "GM_Trumpet"   40.6177  0.2212  76  56 0 0.72 0 0
i "GM_Drawbar_Organ"   40.8100  0.1731  67  93 0 0.47 0 0
i "GM_Slap_Bass_1"   40.8100  0.1731  36  70 0 0.50 0 0
i "GM_Standard_Kit"   40.8100  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"   41.0023  0.3538  36  84 0 0.50 0 0
i "GM_Standard_Kit"   41.0023  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"   41.0023  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"   41.0023  0.2200  51  45 0 0.70 0 0
i "GM_Drawbar_Organ"   41.1946  0.1731  69  94 0 0.47 0 0
i "GM_Slap_Bass_1"   41.1946  0.1731  35  70 0 0.50 0 0
i "GM_Standard_Kit"   41.1946  0.1200  42  39 0 0.35 0 0
i "GM_Alto_Sax"   41.3869  0.2212  71  61 0 0.62 0 0
i "GM_Percussive_Organ"   41.3869  0.5192  67  99 0 0.65 0 0
i "GM_Slap_Bass_1"   41.3869  0.3538  35  83 0 0.50 0 0
i "GM_Standard_Kit"   41.3869  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"   41.3869  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"   41.3869  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"   41.3869  0.2212  55  57 0 0.35 0 0
i "GM_Trombone"   41.3869  0.2212  62  62 0 0.28 0 0
i "GM_Trumpet"   41.3869  0.2212  76  60 0 0.72 0 0
i "GM_Electric_Piano_1"   41.3885  0.2115  55  54 0 0.42 0 0
i "GM_Electric_Piano_1"   41.3894  0.2115  62  57 0 0.42 0 0
i "GM_Electric_Piano_1"   41.3915  0.2115  59  58 0 0.42 0 0
i "GM_Electric_Piano_1"   41.3917  0.2115  64  54 0 0.42 0 0
i "GM_Slap_Bass_1"   41.5793  0.3462  35  67 0 0.50 0 0
i "GM_Standard_Kit"   41.5793  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"   41.7716  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"   41.7716  0.1200  42  38 0 0.35 0 0
i "GM_Alto_Sax"   41.9639  0.2212  71  60 0 0.62 0 0
i "GM_Slap_Bass_1"   41.9639  0.3538  35  82 0 0.50 0 0
i "GM_Standard_Kit"   41.9639  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"   41.9639  0.1800  38  82 0 0.48 0 0
i "GM_Standard_Kit"   41.9639  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"   41.9639  0.2200  51  46 0 0.70 0 0
i "GM_Tenor_Sax"   41.9639  0.2212  55  57 0 0.35 0 0
i "GM_Trombone"   41.9639  0.2212  62  60 0 0.28 0 0
i "GM_Trumpet"   41.9639  0.2212  76  59 0 0.72 0 0
i "GM_Electric_Piano_1"   41.9644  0.2115  62  60 0 0.42 0 0
i "GM_Electric_Piano_1"   41.9664  0.2115  64  57 0 0.42 0 0
i "GM_Electric_Piano_1"   41.9695  0.2115  59  59 0 0.42 0 0
i "GM_Electric_Piano_1"   41.9698  0.2115  55  54 0 0.42 0 0
i "GM_Percussive_Organ"   42.1562  0.1731  66  92 0 0.65 0 0
i "GM_Slap_Bass_1"   42.1562  0.1731  36  67 0 0.50 0 0
i "GM_Standard_Kit"   42.1562  0.1200  42  37 0 0.35 0 0
i "GM_Electric_Piano_1"   42.1574  0.2115  62  59 0 0.42 0 0
i "GM_Electric_Piano_1"   42.1576  0.2115  59  58 0 0.42 0 0
i "GM_Electric_Piano_1"   42.1581  0.2115  55  52 0 0.42 0 0
i "GM_Electric_Piano_1"   42.1597  0.2115  64  52 0 0.42 0 0
i "GM_Alto_Sax"   42.3485  0.2212  71  55 0 0.62 0 0
i "GM_Percussive_Organ"   42.3485  0.1731  64  97 0 0.65 0 0
i "GM_Slap_Bass_1"   42.3485  0.3538  35  80 0 0.50 0 0
i "GM_Standard_Kit"   42.3485  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"   42.3485  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"   42.3485  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"   42.3485  0.2212  55  58 0 0.35 0 0
i "GM_Trombone"   42.3485  0.2212  62  57 0 0.28 0 0
i "GM_Trumpet"   42.3485  0.2212  76  59 0 0.72 0 0
i "GM_Percussive_Organ"   42.5408  0.3462  63  92 0 0.65 0 0
i "GM_Slap_Bass_1"   42.5408  0.1731  35  70 0 0.50 0 0
i "GM_Standard_Kit"   42.5408  0.1200  42  41 0 0.35 0 0
i "GM_Slap_Bass_1"   42.7331  0.1731  35  67 0 0.50 0 0
i "GM_Standard_Kit"   42.7331  0.1200  42  37 0 0.35 0 0
i "GM_Slap_Bass_1"   42.9254  0.3538  33  82 0 0.50 0 0
i "GM_Standard_Kit"   42.9254  0.2200  36  68 0 0.50 0 0
i "GM_Standard_Kit"   42.9254  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"   42.9254  0.2200  51  46 0 0.70 0 0
i "GM_Rock_Organ"   43.1177  0.1731  64  93 0 0.27 0 0
i "GM_Slap_Bass_1"   43.1177  0.1731  31  68 0 0.50 0 0
i "GM_Standard_Kit"   43.1177  0.1200  42  41 0 0.35 0 0
i "GM_Alto_Sax"   43.3100  0.2212  69  57 0 0.62 0 0
i "GM_Rock_Organ"   43.3100  0.3462  64  99 0 0.27 0 0
i "GM_Slap_Bass_1"   43.3100  0.3538  33  79 0 0.50 0 0
i "GM_Standard_Kit"   43.3100  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"   43.3100  0.1800  38  78 0 0.48 0 0
i "GM_Standard_Kit"   43.3100  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"   43.3100  0.2200  51  49 0 0.70 0 0
i "GM_Tenor_Sax"   43.3100  0.2212  55  62 0 0.35 0 0
i "GM_Trombone"   43.3100  0.2212  60  59 0 0.28 0 0
i "GM_Trumpet"   43.3100  0.2212  76  58 0 0.72 0 0
i "GM_Slap_Bass_1"   43.5023  0.1731  35  71 0 0.50 0 0
i "GM_Standard_Kit"   43.5023  0.1200  42  36 0 0.35 0 0
i "GM_Alto_Sax"   43.6946  0.2212  69  57 0 0.62 0 0
i "GM_Rock_Organ"   43.6946  0.5192  67 103 0 0.27 0 0
i "GM_Slap_Bass_1"   43.6946  0.3538  33  80 0 0.50 0 0
i "GM_Standard_Kit"   43.6946  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"   43.6946  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"   43.6946  0.2200  51  46 0 0.70 0 0
i "GM_Tenor_Sax"   43.6946  0.2212  55  62 0 0.35 0 0
i "GM_Trombone"   43.6946  0.2212  60  58 0 0.28 0 0
i "GM_Trumpet"   43.6946  0.2212  76  58 0 0.72 0 0
i "GM_Slap_Bass_1"   43.8869  0.3462  35  70 0 0.50 0 0
i "GM_Standard_Kit"   43.8869  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"   44.0793  0.1200  42  36 0 0.35 0 0
i "GM_Alto_Sax"   44.2716  0.2212  69  55 0 0.62 0 0
i "GM_Rock_Organ"   44.2716  0.1731  64  96 0 0.27 0 0
i "GM_Slap_Bass_1"   44.2716  0.1769  33  83 0 0.50 0 0
i "GM_Standard_Kit"   44.2716  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"   44.2716  0.1800  38  81 0 0.48 0 0
i "GM_Standard_Kit"   44.2716  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"   44.2716  0.2200  51  45 0 0.70 0 0
i "GM_Tenor_Sax"   44.2716  0.2212  55  60 0 0.35 0 0
i "GM_Trombone"   44.2716  0.2212  60  62 0 0.28 0 0
i "GM_Trumpet"   44.2716  0.2212  76  55 0 0.72 0 0
i "GM_Alto_Sax"   44.4639  0.2212  72  61 0 0.62 0 0
i "GM_Church_Organ"   44.4639  0.1731  62  96 0 0.45 0 0
i "GM_Slap_Bass_1"   44.4639  0.3538  33  80 0 0.50 0 0
i "GM_Standard_Kit"   44.4639  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"   44.4639  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"   44.4639  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"   44.4639  0.2212  57  56 0 0.35 0 0
i "GM_Trombone"   44.4639  0.2212  62  55 0 0.28 0 0
i "GM_Trumpet"   44.4639  0.2212  78  58 0 0.72 0 0
i "GM_Electric_Piano_1"   44.4641  0.2115  57  57 0 0.42 0 0
i "GM_Electric_Piano_1"   44.4655  0.2115  54  52 0 0.42 0 0
i "GM_Electric_Piano_1"   44.4668  0.2115  60  55 0 0.42 0 0
i "GM_Electric_Piano_1"   44.4697  0.2115  62  52 0 0.42 0 0
i "GM_Church_Organ"   44.6562  0.6923  61  88 0 0.45 0 0
i "GM_Slap_Bass_1"   44.6562  0.1731  36  70 0 0.50 0 0
i "GM_Standard_Kit"   44.6562  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"   44.8485  0.1731  36  68 0 0.50 0 0
i "GM_Standard_Kit"   44.8485  0.1200  42  37 0 0.35 0 0
i "GM_Slap_Bass_1"   45.0408  0.1731  38  71 0 0.50 0 0
i "GM_Standard_Kit"   45.0408  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"   45.2331  0.1731  40  70 0 0.50 0 0
i "GM_Standard_Kit"   45.2331  0.1200  42  37 0 0.35 0 0
i "GM_Electric_Piano_1"   45.2338  0.2115  60  58 0 0.42 0 0
i "GM_Electric_Piano_1"   45.2345  0.2115  57  60 0 0.42 0 0
i "GM_Electric_Piano_1"   45.2352  0.2115  54  55 0 0.42 0 0
i "GM_Electric_Piano_1"   45.2369  0.2115  62  60 0 0.42 0 0
i "GM_Church_Organ"   45.4254  0.3462  60  99 0 0.45 0 0
i "GM_Slap_Bass_1"   45.4254  0.3538  38  82 0 0.50 0 0
i "GM_Standard_Kit"   45.4254  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"   45.4254  0.1800  38  78 0 0.48 0 0
i "GM_Standard_Kit"   45.4254  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"   45.4254  0.2200  51  48 0 0.70 0 0
i "GM_Slap_Bass_1"   45.6177  0.1731  38  72 0 0.50 0 0
i "GM_Standard_Kit"   45.6177  0.1200  42  37 0 0.35 0 0
i "GM_Church_Organ"   45.8100  0.5192  62  94 0 0.45 0 0
i "GM_Slap_Bass_1"   45.8100  0.3462  36  70 0 0.50 0 0
i "GM_Standard_Kit"   45.8100  0.1200  42  39 0 0.35 0 0
i "GM_Standard_Kit"   46.0023  0.1200  42  41 0 0.35 0 0
i "GM_Standard_Kit"   46.1946  0.1200  42  36 0 0.35 0 0
i "GM_Alto_Sax"   46.3869  0.2212  72  57 0 0.62 0 0
i "GM_Slap_Bass_1"   46.3869  0.3538  38  85 0 0.50 0 0
i "GM_Standard_Kit"   46.3869  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"   46.3869  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"   46.3869  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"   46.3869  0.2212  57  62 0 0.35 0 0
i "GM_Trombone"   46.3869  0.2212  62  58 0 0.28 0 0
i "GM_Trumpet"   46.3869  0.2212  78  58 0 0.72 0 0
i "GM_Church_Organ"   46.5793  0.1731  60  92 0 0.45 0 0
i "GM_Slap_Bass_1"   46.5793  0.1731  38  68 0 0.50 0 0
i "GM_Standard_Kit"   46.5793  0.1200  42  40 0 0.35 0 0
i "GM_Reed_Organ"   46.7716  0.8654  60  98 0 0.63 0 0
i "GM_Slap_Bass_1"   46.7716  0.3538  36  79 0 0.50 0 0
i "GM_Standard_Kit"   46.7716  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"   46.7716  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"   46.7716  0.2200  51  45 0 0.70 0 0
i "GM_Electric_Piano_1"   46.7724  0.2115  67  58 0 0.42 0 0
i "GM_Electric_Piano_1"   46.7739  0.2115  60  58 0 0.42 0 0
i "GM_Electric_Piano_1"   46.7742  0.2115  63  60 0 0.42 0 0
i "GM_Electric_Piano_1"   46.7759  0.2115  58  52 0 0.42 0 0
i "GM_Slap_Bass_1"   46.9639  0.3462  34  68 0 0.50 0 0
i "GM_Standard_Kit"   46.9639  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"   47.1562  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"   47.3485  0.1731  34  70 0 0.50 0 0
i "GM_Standard_Kit"   47.3485  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"   47.5408  0.1731  32  67 0 0.50 0 0
i "GM_Standard_Kit"   47.5408  0.1200  42  38 0 0.35 0 0
i "GM_Electric_Piano_1"   47.5435  0.2115  67  60 0 0.42 0 0
i "GM_Electric_Piano_1"   47.5441  0.2115  60  56 0 0.42 0 0
i "GM_Electric_Piano_1"   47.5452  0.2115  63  53 0 0.42 0 0
i "GM_Electric_Piano_1"   47.5453  0.2115  58  52 0 0.42 0 0
i "GM_Alto_Sax"   47.7331  0.2212  72  59 0 0.62 0 0
i "GM_Reed_Organ"   47.7331  0.1731  63 103 0 0.63 0 0
i "GM_Slap_Bass_1"   47.7331  0.3538  31  84 0 0.50 0 0
i "GM_Standard_Kit"   47.7331  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"   47.7331  0.1800  38  77 0 0.48 0 0
i "GM_Standard_Kit"   47.7331  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"   47.7331  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"   47.7331  0.2212  58  61 0 0.35 0 0
i "GM_Trombone"   47.7331  0.2212  63  62 0 0.28 0 0
i "GM_Trumpet"   47.7331  0.2212  79  56 0 0.72 0 0
i "GM_Reed_Organ"   47.9254  0.3462  62  92 0 0.63 0 0
i "GM_Slap_Bass_1"   47.9254  0.1731  32  71 0 0.50 0 0
i "GM_Standard_Kit"   47.9254  0.1200  42  40 0 0.35 0 0
i "GM_Slap_Bass_1"   48.1177  0.1731  34  68 0 0.50 0 0
i "GM_Standard_Kit"   48.1177  0.1200  42  40 0 0.35 0 0
i "GM_Accordion"   48.3100  0.5192  63  97 0 0.25 0 0
i "GM_Alto_Sax"   48.3100  0.2212  72  60 0 0.62 0 0
i "GM_Slap_Bass_1"   48.3100  0.3538  36  79 0 0.50 0 0
i "GM_Standard_Kit"   48.3100  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"   48.3100  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"   48.3100  0.2200  51  45 0 0.70 0 0
i "GM_Tenor_Sax"   48.3100  0.2212  57  62 0 0.35 0 0
i "GM_Trombone"   48.3100  0.2212  63  55 0 0.28 0 0
i "GM_Trumpet"   48.3100  0.2212  77  60 0 0.72 0 0
i "GM_Slap_Bass_1"   48.5023  0.1731  36  72 0 0.50 0 0
i "GM_Standard_Kit"   48.5023  0.1200  42  39 0 0.35 0 0
i "GM_Slap_Bass_1"   48.6946  0.1731  36  70 0 0.50 0 0
i "GM_Standard_Kit"   48.6946  0.1200  46  37 0 0.35 0 0
i "GM_Alto_Sax"   48.8869  0.2212  72  55 0 0.62 0 0
i "GM_Slap_Bass_1"   48.8869  0.3538  36  83 0 0.50 0 0
i "GM_Standard_Kit"   48.8869  0.2200  36  68 0 0.50 0 0
i "GM_Standard_Kit"   48.8869  0.1800  38  77 0 0.48 0 0
i "GM_Standard_Kit"   48.8869  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"   48.8869  0.2200  51  45 0 0.70 0 0
i "GM_Tenor_Sax"   48.8869  0.2212  57  59 0 0.35 0 0
i "GM_Trombone"   48.8869  0.2212  63  62 0 0.28 0 0
i "GM_Trumpet"   48.8869  0.2212  77  59 0 0.72 0 0
i "GM_Electric_Piano_1"   48.8873  0.2115  65  60 0 0.42 0 0
i "GM_Electric_Piano_1"   48.8882  0.2115  63  53 0 0.42 0 0
i "GM_Electric_Piano_1"   48.8889  0.2115  60  58 0 0.42 0 0
i "GM_Electric_Piano_1"   48.8904  0.2115  57  56 0 0.42 0 0
i "GM_Accordion"   49.0793  0.6923  62  88 0 0.25 0 0
i "GM_Slap_Bass_1"   49.0793  0.1731  36  70 0 0.50 0 0
i "GM_Standard_Kit"   49.0793  0.1200  42  40 0 0.35 0 0
i "GM_Slap_Bass_1"   49.2716  0.3462  38  71 0 0.50 0 0
i "GM_Standard_Kit"   49.2716  0.1200  42  39 0 0.35 0 0
i "GM_Standard_Kit"   49.4639  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"   49.6562  0.1731  36  71 0 0.50 0 0
i "GM_Standard_Kit"   49.6562  0.1200  42  39 0 0.35 0 0
i "GM_Harmonica"   49.8485  0.3462  62  95 0 0.43 0 0
i "GM_Slap_Bass_1"   49.8485  0.3538  34  79 0 0.50 0 0
i "GM_Standard_Kit"   49.8485  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"   49.8485  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"   49.8485  0.2200  51  44 0 0.70 0 0
i "GM_Slap_Bass_1"   50.0408  0.1731  33  70 0 0.50 0 0
i "GM_Standard_Kit"   50.0408  0.1200  42  39 0 0.35 0 0
i "GM_Alto_Sax"   50.2331  0.2212  70  57 0 0.62 0 0
i "GM_Slap_Bass_1"   50.2331  0.3538  34  80 0 0.50 0 0
i "GM_Standard_Kit"   50.2331  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"   50.2331  0.1800  38  77 0 0.48 0 0
i "GM_Standard_Kit"   50.2331  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"   50.2331  0.2200  51  44 0 0.70 0 0
i "GM_Tenor_Sax"   50.2331  0.2212  57  62 0 0.35 0 0
i "GM_Trombone"   50.2331  0.2212  62  55 0 0.28 0 0
i "GM_Trumpet"   50.2331  0.2212  77  60 0 0.72 0 0
i "GM_Electric_Piano_1"   50.2335  0.2115  58  53 0 0.42 0 0
i "GM_Electric_Piano_1"   50.2358  0.2115  57  60 0 0.42 0 0
i "GM_Electric_Piano_1"   50.2364  0.2115  65  54 0 0.42 0 0
i "GM_Electric_Piano_1"   50.2378  0.2115  62  54 0 0.42 0 0
i "GM_Harmonica"   50.4254  0.3462  63  87 0 0.43 0 0
i "GM_Slap_Bass_1"   50.4254  0.3462  34  68 0 0.50 0 0
i "GM_Standard_Kit"   50.4254  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"   50.6177  0.1200  42  40 0 0.35 0 0
i "GM_Electric_Piano_1"   50.6189  0.2115  62  55 0 0.42 0 0
i "GM_Electric_Piano_1"   50.6190  0.2115  65  56 0 0.42 0 0
i "GM_Electric_Piano_1"   50.6191  0.2115  58  56 0 0.42 0 0
i "GM_Electric_Piano_1"   50.6236  0.2115  57  60 0 0.42 0 0
i "GM_Alto_Sax"   50.8100  0.2212  70  57 0 0.62 0 0
i "GM_Harmonica"   50.8100  0.3462  62 103 0 0.43 0 0
i "GM_Slap_Bass_1"   50.8100  0.3538  34  82 0 0.50 0 0
i "GM_Standard_Kit"   50.8100  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"   50.8100  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"   50.8100  0.2200  51  44 0 0.70 0 0
i "GM_Tenor_Sax"   50.8100  0.2212  57  60 0 0.35 0 0
i "GM_Trombone"   50.8100  0.2212  62  59 0 0.28 0 0
i "GM_Trumpet"   50.8100  0.2212  77  59 0 0.72 0 0
i "GM_Slap_Bass_1"   51.0023  0.1731  33  67 0 0.50 0 0
i "GM_Standard_Kit"   51.0023  0.1200  42  41 0 0.35 0 0
i "GM_Electric_Piano_1"   51.0030  0.2115  57  52 0 0.42 0 0
i "GM_Electric_Piano_1"   51.0031  0.2115  62  54 0 0.42 0 0
i "GM_Electric_Piano_1"   51.0043  0.2115  58  59 0 0.42 0 0
i "GM_Electric_Piano_1"   51.0080  0.2115  65  52 0 0.42 0 0
i "GM_Alto_Sax"   51.1946  0.2212  70  56 0 0.62 0 0
i "GM_Harmonica"   51.1946  0.1731  58  97 0 0.43 0 0
i "GM_Slap_Bass_1"   51.1946  0.1769  34  81 0 0.50 0 0
i "GM_Standard_Kit"   51.1946  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"   51.1946  0.1800  38  79 0 0.48 0 0
i "GM_Standard_Kit"   51.1946  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"   51.1946  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"   51.1946  0.2212  57  57 0 0.35 0 0
i "GM_Trombone"   51.1946  0.2212  62  55 0 0.28 0 0
i "GM_Trumpet"   51.1946  0.2212  77  57 0 0.72 0 0
i "GM_Slap_Bass_1"   51.3869  0.3538  34  84 0 0.50 0 0
i "GM_Standard_Kit"   51.3869  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"   51.3869  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"   51.3869  0.2200  51  45 0 0.70 0 0
i "GM_Tango_Accordion"   51.3869  0.5192  58  97 0 0.61 0 0
i "GM_Slap_Bass_1"   51.5793  0.3462  32  69 0 0.50 0 0
i "GM_Standard_Kit"   51.5793  0.1200  42  37 0 0.35 0 0
i "GM_Standard_Kit"   51.7716  0.1200  42  41 0 0.35 0 0
i "GM_Alto_Sax"   51.9639  0.2212  70  59 0 0.62 0 0
i "GM_Slap_Bass_1"   51.9639  0.3538  34  80 0 0.50 0 0
i "GM_Standard_Kit"   51.9639  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"   51.9639  0.1800  38  77 0 0.48 0 0
i "GM_Standard_Kit"   51.9639  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"   51.9639  0.2200  51  44 0 0.70 0 0
i "GM_Tango_Accordion"   51.9639  0.5192  58  98 0 0.61 0 0
i "GM_Tenor_Sax"   51.9639  0.2212  55  55 0 0.35 0 0
i "GM_Trombone"   51.9639  0.2212  62  57 0 0.28 0 0
i "GM_Trumpet"   51.9639  0.2212  75  59 0 0.72 0 0
i "GM_Slap_Bass_1"   52.1562  0.1731  34  70 0 0.50 0 0
i "GM_Standard_Kit"   52.1562  0.1200  42  39 0 0.35 0 0
i "GM_Standard_Kit"   52.3485  0.1200  42  39 0 0.35 0 0
i "GM_Alto_Sax"   52.5408  0.2212  70  55 0 0.62 0 0
i "GM_Slap_Bass_1"   52.5408  0.3538  34  85 0 0.50 0 0
i "GM_Standard_Kit"   52.5408  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"   52.5408  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"   52.5408  0.2200  51  45 0 0.70 0 0
i "GM_Tango_Accordion"   52.5408  0.5192  62  99 0 0.61 0 0
i "GM_Tenor_Sax"   52.5408  0.2212  55  57 0 0.35 0 0
i "GM_Trombone"   52.5408  0.2212  62  62 0 0.28 0 0
i "GM_Trumpet"   52.5408  0.2212  75  60 0 0.72 0 0
i "GM_Electric_Piano_1"   52.5414  0.2115  58  56 0 0.42 0 0
i "GM_Electric_Piano_1"   52.5429  0.2115  62  56 0 0.42 0 0
i "GM_Electric_Piano_1"   52.5441  0.2115  63  55 0 0.42 0 0
i "GM_Electric_Piano_1"   52.5465  0.2115  55  59 0 0.42 0 0
i "GM_Slap_Bass_1"   52.7331  0.1731  34  67 0 0.50 0 0
i "GM_Standard_Kit"   52.7331  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"   52.9254  0.1731  34  70 0 0.50 0 0
i "GM_Standard_Kit"   52.9254  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"   52.9254  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Piano_1"   52.9257  0.2115  55  60 0 0.42 0 0
i "GM_Electric_Piano_1"   52.9279  0.2115  60  56 0 0.42 0 0
i "GM_Electric_Piano_1"   52.9280  0.2115  57  57 0 0.42 0 0
i "GM_Electric_Piano_1"   52.9284  0.2115  64  54 0 0.42 0 0
i "GM_Alto_Sax"   53.1177  0.2212  69  61 0 0.62 0 0
i "GM_Slap_Bass_1"   53.1177  0.3538  33  82 0 0.50 0 0
i "GM_Standard_Kit"   53.1177  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"   53.1177  0.1800  38  77 0 0.48 0 0
i "GM_Standard_Kit"   53.1177  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"   53.1177  0.2200  51  45 0 0.70 0 0
i "GM_Tenor_Sax"   53.1177  0.2212  55  57 0 0.35 0 0
i "GM_Trombone"   53.1177  0.2212  60  55 0 0.28 0 0
i "GM_Trumpet"   53.1177  0.2212  76  58 0 0.72 0 0
i "GM_Slap_Bass_1"   53.3100  0.3462  36  70 0 0.50 0 0
i "GM_Standard_Kit"   53.3100  0.1200  42  36 0 0.35 0 0
i "GM_Tango_Accordion"   53.3100  0.3462  60  90 0 0.61 0 0
i "GM_Standard_Kit"   53.5023  0.1200  42  38 0 0.35 0 0
i "GM_Alto_Sax"   53.6946  0.2212  69  56 0 0.62 0 0
i "GM_Slap_Bass_1"   53.6946  0.3538  33  82 0 0.50 0 0
i "GM_Standard_Kit"   53.6946  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"   53.6946  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"   53.6946  0.2200  51  47 0 0.70 0 0
i "GM_Standard_Kit"   53.6946  0.1500  50  84 0 0.40 0 0
i "GM_Tango_Accordion"   53.6946  0.3462  57 103 0 0.61 0 0
i "GM_Tenor_Sax"   53.6946  0.2212  55  59 0 0.35 0 0
i "GM_Trombone"   53.6946  0.2212  60  62 0 0.28 0 0
i "GM_Trumpet"   53.6946  0.2212  76  59 0 0.72 0 0
i "GM_Electric_Piano_1"   53.6963  0.2115  55  57 0 0.42 0 0
i "GM_Electric_Piano_1"   53.6977  0.2115  60  57 0 0.42 0 0
i "GM_Electric_Piano_1"   53.7005  0.2115  57  54 0 0.42 0 0
i "GM_Electric_Piano_1"   53.7006  0.2115  64  59 0 0.42 0 0
i "GM_Slap_Bass_1"   53.8869  0.1731  33  73 0 0.50 0 0
i "GM_Standard_Kit"   53.8869  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"   53.8869  0.1500  48  83 0 0.43 0 0
i "GM_Electric_Piano_1"   53.8874  0.2115  64  56 0 0.42 0 0
i "GM_Electric_Piano_1"   53.8879  0.2115  55  55 0 0.42 0 0
i "GM_Electric_Piano_1"   53.8903  0.2115  60  57 0 0.42 0 0
i "GM_Electric_Piano_1"   53.8907  0.2115  57  53 0 0.42 0 0
i "GM_Alto_Sax"   54.0793  0.2212  69  62 0 0.62 0 0
i "GM_Slap_Bass_1"   54.0793  0.3538  33  79 0 0.50 0 0
i "GM_Standard_Kit"   54.0793  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"   54.0793  0.1800  38  79 0 0.48 0 0
i "GM_Standard_Kit"   54.0793  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"   54.0793  0.2200  51  46 0 0.70 0 0
i "GM_Standard_Kit"   54.0793  0.1500  47  83 0 0.46 0 0
i "GM_Tango_Accordion"   54.0793  0.3462  57  95 0 0.61 0 0
i "GM_Tenor_Sax"   54.0793  0.2212  55  59 0 0.35 0 0
i "GM_Trombone"   54.0793  0.2212  60  57 0 0.28 0 0
i "GM_Trumpet"   54.0793  0.2212  76  58 0 0.72 0 0
i "GM_Slap_Bass_1"   54.2716  0.1731  35  71 0 0.50 0 0
i "GM_Standard_Kit"   54.2716  0.1200  42  37 0 0.35 0 0
i "GM_Standard_Kit"   54.2716  0.1500  45  85 0 0.49 0 0
i "GM_Standard_Kit"   54.2716  0.2000  49  82 0 0.70 0 0
i "GM_Alto_Sax"   54.4639  0.2212  69  59 0 0.62 0 0
i "GM_Slap_Bass_1"   54.4639  0.3538  33  85 0 0.50 0 0
i "GM_Standard_Kit"   54.4639  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"   54.4639  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"   54.4639  0.2200  51  46 0 0.70 0 0
i "GM_Standard_Kit"   54.4639  0.5000  49  86 0 0.72 0 0
i "GM_Tenor_Sax"   54.4639  0.2212  55  62 0 0.35 0 0
i "GM_Trombone"   54.4639  0.2212  60  61 0 0.28 0 0
i "GM_Trumpet"   54.4639  0.2212  76  55 0 0.72 0 0
i "GM_Electric_Piano_1"   54.4656  0.2115  64  58 0 0.42 0 0
i "GM_Electric_Piano_1"   54.4673  0.2115  60  53 0 0.42 0 0
i "GM_Electric_Piano_1"   54.4689  0.2115  55  55 0 0.42 0 0
i "GM_Electric_Piano_1"   54.4696  0.2115  57  52 0 0.42 0 0
i "GM_Acoustic_Guitar_nylon"   54.6562  0.3462  57  89 0 0.22 0 0
i "GM_Slap_Bass_1"   54.6562  0.1731  36  69 0 0.50 0 0
i "GM_Standard_Kit"   54.6562  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"   54.8485  0.1731  38  67 0 0.50 0 0
i "GM_Standard_Kit"   54.8485  0.1200  46  38 0 0.35 0 0
i "GM_Alto_Sax"   55.0408  0.2212  69  57 0 0.62 0 0
i "GM_Slap_Bass_1"   55.0408  0.3538  40  80 0 0.50 0 0
i "GM_Standard_Kit"   55.0408  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"   55.0408  0.1800  38  81 0 0.48 0 0
i "GM_Standard_Kit"   55.0408  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"   55.0408  0.2200  51  44 0 0.70 0 0
i "GM_Tenor_Sax"   55.0408  0.2212  55  56 0 0.35 0 0
i "GM_Trombone"   55.0408  0.2212  60  58 0 0.28 0 0
i "GM_Trumpet"   55.0408  0.2212  76  60 0 0.72 0 0
i "GM_Acoustic_Guitar_nylon"   55.2331  0.6923  57  91 0 0.22 0 0
i "GM_Slap_Bass_1"   55.2331  0.1731  41  73 0 0.50 0 0
i "GM_Standard_Kit"   55.2331  0.1200  42  39 0 0.35 0 0
i "GM_Slap_Bass_1"   55.4254  0.1731  41  71 0 0.50 0 0
i "GM_Standard_Kit"   55.4254  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"   55.6177  0.3462  40  69 0 0.50 0 0
i "GM_Standard_Kit"   55.6177  0.1200  42  39 0 0.35 0 0
i "GM_Standard_Kit"   55.8100  0.1200  42  37 0 0.35 0 0
i "GM_Slap_Bass_1"   56.0023  0.3538  38  83 0 0.50 0 0
i "GM_Standard_Kit"   56.0023  0.2200  36  68 0 0.50 0 0
i "GM_Standard_Kit"   56.0023  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"   56.0023  0.2200  51  49 0 0.70 0 0
i "GM_Acoustic_Guitar_steel"   56.1946  0.1731  57  91 0 0.41 0 0
i "GM_Slap_Bass_1"   56.1946  0.1731  36  72 0 0.50 0 0
i "GM_Standard_Kit"   56.1946  0.1200  42  39 0 0.35 0 0
i "GM_Acoustic_Guitar_steel"   56.3869  0.3462  57  97 0 0.41 0 0
i "GM_Slap_Bass_1"   56.3869  0.3538  38  82 0 0.50 0 0
i "GM_Standard_Kit"   56.3869  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"   56.3869  0.1800  38  76 0 0.48 0 0
i "GM_Standard_Kit"   56.3869  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"   56.3869  0.2200  51  47 0 0.70 0 0
i "GM_Slap_Bass_1"   56.5793  0.1731  38  71 0 0.50 0 0
i "GM_Standard_Kit"   56.5793  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"   56.5793  0.1200  42  36 0 0.35 0 0
i "GM_Acoustic_Guitar_steel"   56.7716  0.3462  54  97 0 0.41 0 0
i "GM_Alto_Sax"   56.7716  0.2212  72  55 0 0.62 0 0
i "GM_Slap_Bass_1"   56.7716  0.3538  38  79 0 0.50 0 0
i "GM_Standard_Kit"   56.7716  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"   56.7716  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"   56.7716  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"   56.7716  0.2212  57  62 0 0.35 0 0
i "GM_Trombone"   56.7716  0.2212  62  61 0 0.28 0 0
i "GM_Trumpet"   56.7716  0.2212  78  62 0 0.72 0 0
i "GM_Electric_Piano_1"   56.7736  0.2115  57  53 0 0.42 0 0
i "GM_Electric_Piano_1"   56.7741  0.2115  60  52 0 0.42 0 0
i "GM_Electric_Piano_1"   56.7752  0.2115  62  58 0 0.42 0 0
i "GM_Electric_Piano_1"   56.7757  0.2115  54  54 0 0.42 0 0
i "GM_Standard_Kit"   56.9639  0.1200  42  38 0 0.35 0 0
i "GM_Acoustic_Guitar_steel"   57.1562  0.3462  54 100 0 0.41 0 0
i "GM_Alto_Sax"   57.1562  0.2212  72  59 0 0.62 0 0
i "GM_Slap_Bass_1"   57.1562  0.3538  38  85 0 0.50 0 0
i "GM_Standard_Kit"   57.1562  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"   57.1562  0.1800  38  82 0 0.48 0 0
i "GM_Standard_Kit"   57.1562  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"   57.1562  0.2200  51  46 0 0.70 0 0
i "GM_Tenor_Sax"   57.1562  0.2212  57  61 0 0.35 0 0
i "GM_Trombone"   57.1562  0.2212  62  62 0 0.28 0 0
i "GM_Trumpet"   57.1562  0.2212  78  60 0 0.72 0 0
i "GM_Electric_Piano_1"   57.1582  0.2115  60  59 0 0.42 0 0
i "GM_Electric_Piano_1"   57.1589  0.2115  54  53 0 0.42 0 0
i "GM_Electric_Piano_1"   57.1595  0.2115  62  54 0 0.42 0 0
i "GM_Electric_Piano_1"   57.1610  0.2115  57  55 0 0.42 0 0
i "GM_Slap_Bass_1"   57.3485  0.1731  36  70 0 0.50 0 0
i "GM_Standard_Kit"   57.3485  0.1200  42  39 0 0.35 0 0
i "GM_Electric_Guitar_jazz"   57.5408  0.5192  54  95 0 0.59 0 0
i "GM_Slap_Bass_1"   57.5408  0.3538  38  83 0 0.50 0 0
i "GM_Standard_Kit"   57.5408  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"   57.5408  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"   57.5408  0.2200  51  46 0 0.70 0 0
i "GM_Electric_Piano_1"   57.5447  0.2115  66  54 0 0.42 0 0
i "GM_Electric_Piano_1"   57.5447  0.2115  59  57 0 0.42 0 0
i "GM_Electric_Piano_1"   57.5448  0.2115  55  52 0 0.42 0 0
i "GM_Electric_Piano_1"   57.5451  0.2115  62  59 0 0.42 0 0
i "GM_Slap_Bass_1"   57.7331  0.3462  36  71 0 0.50 0 0
i "GM_Standard_Kit"   57.7331  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"   57.9254  0.1200  42  36 0 0.35 0 0
i "GM_Alto_Sax"   58.1177  0.2212  71  61 0 0.62 0 0
i "GM_Electric_Guitar_jazz"   58.1177  0.3462  54  95 0 0.59 0 0
i "GM_Slap_Bass_1"   58.1177  0.3538  38  79 0 0.50 0 0
i "GM_Standard_Kit"   58.1177  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"   58.1177  0.1800  38  82 0 0.48 0 0
i "GM_Standard_Kit"   58.1177  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"   58.1177  0.2200  51  45 0 0.70 0 0
i "GM_Tenor_Sax"   58.1177  0.2212  55  55 0 0.35 0 0
i "GM_Trombone"   58.1177  0.2212  62  56 0 0.28 0 0
i "GM_Trumpet"   58.1177  0.2212  78  56 0 0.72 0 0
i "GM_Electric_Piano_1"   58.1179  0.2115  59  58 0 0.42 0 0
i "GM_Electric_Piano_1"   58.1199  0.2115  62  53 0 0.42 0 0
i "GM_Electric_Piano_1"   58.1213  0.2115  66  52 0 0.42 0 0
i "GM_Electric_Piano_1"   58.1226  0.2115  55  55 0 0.42 0 0
i "GM_Slap_Bass_1"   58.3100  0.1731  38  71 0 0.50 0 0
i "GM_Standard_Kit"   58.3100  0.1200  42  39 0 0.35 0 0
i "GM_Electric_Guitar_jazz"   58.5023  0.5192  54 102 0 0.59 0 0
i "GM_Slap_Bass_1"   58.5023  0.3538  38  79 0 0.50 0 0
i "GM_Standard_Kit"   58.5023  0.2200  36  68 0 0.50 0 0
i "GM_Standard_Kit"   58.5023  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"   58.5023  0.2200  51  44 0 0.70 0 0
i "GM_Electric_Piano_1"   58.5038  0.2115  59  54 0 0.42 0 0
i "GM_Electric_Piano_1"   58.5043  0.2115  55  54 0 0.42 0 0
i "GM_Electric_Piano_1"   58.5047  0.2115  62  59 0 0.42 0 0
i "GM_Electric_Piano_1"   58.5082  0.2115  66  52 0 0.42 0 0
i "GM_Slap_Bass_1"   58.6946  0.3462  38  73 0 0.50 0 0
i "GM_Standard_Kit"   58.6946  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"   58.8869  0.1200  46  38 0 0.35 0 0
i "GM_Alto_Sax"   59.0793  0.2212  71  61 0 0.62 0 0
i "GM_Electric_Guitar_clean"   59.0793  0.8654  54  98 0 0.77 0 0
i "GM_Slap_Bass_1"   59.0793  0.3538  35  79 0 0.50 0 0
i "GM_Standard_Kit"   59.0793  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"   59.0793  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"   59.0793  0.2200  51  44 0 0.70 0 0
i "GM_Tenor_Sax"   59.0793  0.2212  57  56 0 0.35 0 0
i "GM_Trombone"   59.0793  0.2212  63  60 0 0.28 0 0
i "GM_Trumpet"   59.0793  0.2212  78  57 0 0.72 0 0
i "GM_Electric_Piano_1"   59.0796  0.2115  66  54 0 0.42 0 0
i "GM_Electric_Piano_1"   59.0805  0.2115  59  55 0 0.42 0 0
i "GM_Electric_Piano_1"   59.0822  0.2115  57  53 0 0.42 0 0
i "GM_Electric_Piano_1"   59.0847  0.2115  63  54 0 0.42 0 0
i "GM_Standard_Kit"   59.2716  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"   59.4639  0.1200  42  39 0 0.35 0 0
i "GM_Slap_Bass_1"   59.6562  0.1731  37  67 0 0.50 0 0
i "GM_Standard_Kit"   59.6562  0.1200  42  37 0 0.35 0 0
i "GM_Slap_Bass_1"   59.8485  0.1731  35  70 0 0.50 0 0
i "GM_Standard_Kit"   59.8485  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"   59.8485  0.1200  42  37 0 0.35 0 0
i "GM_Alto_Sax"   60.0408  0.2212  71  57 0 0.62 0 0
i "GM_Electric_Guitar_clean"   60.0408  0.5192  51 100 0 0.77 0 0
i "GM_Slap_Bass_1"   60.0408  0.3538  35  83 0 0.50 0 0
i "GM_Standard_Kit"   60.0408  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"   60.0408  0.1800  38  77 0 0.48 0 0
i "GM_Standard_Kit"   60.0408  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"   60.0408  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"   60.0408  0.2212  57  60 0 0.35 0 0
i "GM_Trombone"   60.0408  0.2212  63  55 0 0.28 0 0
i "GM_Trumpet"   60.0408  0.2212  78  62 0 0.72 0 0
i "GM_Standard_Kit"   60.2331  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"   60.4254  0.1731  33  68 0 0.50 0 0
i "GM_Standard_Kit"   60.4254  0.1200  42  41 0 0.35 0 0
i "GM_Alto_Sax"   60.6177  0.2212  71  59 0 0.62 0 0
i "GM_Electric_Guitar_clean"   60.6177  0.6923  51 103 0 0.77 0 0
i "GM_Slap_Bass_1"   60.6177  0.3538  35  81 0 0.50 0 0
i "GM_Standard_Kit"   60.6177  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"   60.6177  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"   60.6177  0.2200  51  49 0 0.70 0 0
i "GM_Tenor_Sax"   60.6177  0.2212  57  55 0 0.35 0 0
i "GM_Trombone"   60.6177  0.2212  63  60 0 0.28 0 0
i "GM_Trumpet"   60.6177  0.2212  78  58 0 0.72 0 0
i "GM_Electric_Piano_1"   60.6186  0.2115  57  55 0 0.42 0 0
i "GM_Electric_Piano_1"   60.6195  0.2115  63  59 0 0.42 0 0
i "GM_Electric_Piano_1"   60.6203  0.2115  59  52 0 0.42 0 0
i "GM_Electric_Piano_1"   60.6229  0.2115  66  54 0 0.42 0 0
i "GM_Slap_Bass_1"   60.8100  0.1731  37  69 0 0.50 0 0
i "GM_Standard_Kit"   60.8100  0.1200  42  41 0 0.35 0 0
i "GM_Slap_Bass_1"   61.0023  0.1731  39  73 0 0.50 0 0
i "GM_Standard_Kit"   61.0023  0.1200  42  37 0 0.35 0 0
i "GM_Slap_Bass_1"   61.1946  0.1731  37  67 0 0.50 0 0
i "GM_Standard_Kit"   61.1946  0.1200  42  39 0 0.35 0 0
i "GM_Alto_Sax"   61.3869  0.2212  71  57 0 0.62 0 0
i "GM_Electric_Guitar_muted"   61.3869  0.1731  50  99 0 0.38 0 0
i "GM_Slap_Bass_1"   61.3869  0.3538  35  79 0 0.50 0 0
i "GM_Standard_Kit"   61.3869  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"   61.3869  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"   61.3869  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"   61.3869  0.2212  55  59 0 0.35 0 0
i "GM_Trombone"   61.3869  0.2212  62  56 0 0.28 0 0
i "GM_Trumpet"   61.3869  0.2212  76  58 0 0.72 0 0
i "GM_Electric_Piano_1"   61.3873  0.2115  64  59 0 0.42 0 0
i "GM_Electric_Piano_1"   61.3893  0.2115  59  55 0 0.42 0 0
i "GM_Electric_Piano_1"   61.3900  0.2115  55  52 0 0.42 0 0
i "GM_Electric_Piano_1"   61.3903  0.2115  62  52 0 0.42 0 0
i "GM_Electric_Guitar_muted"   61.5793  0.5192  48  91 0 0.38 0 0
i "GM_Slap_Bass_1"   61.5793  0.3462  36  71 0 0.50 0 0
i "GM_Standard_Kit"   61.5793  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"   61.7716  0.1200  42  39 0 0.35 0 0
i "GM_Slap_Bass_1"   61.9639  0.1731  35  73 0 0.50 0 0
i "GM_Standard_Kit"   61.9639  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"   61.9639  0.1200  46  37 0 0.35 0 0
i "GM_Electric_Guitar_muted"   62.1562  0.3462  43  99 0 0.38 0 0
i "GM_Slap_Bass_1"   62.1562  0.3538  35  82 0 0.50 0 0
i "GM_Standard_Kit"   62.1562  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"   62.1562  0.1800  38  80 0 0.48 0 0
i "GM_Standard_Kit"   62.1562  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"   62.1562  0.2200  51  49 0 0.70 0 0
i "GM_Slap_Bass_1"   62.3485  0.1731  36  68 0 0.50 0 0
i "GM_Standard_Kit"   62.3485  0.1200  42  41 0 0.35 0 0
i "GM_Electric_Piano_1"   62.3489  0.2115  62  59 0 0.42 0 0
i "GM_Electric_Piano_1"   62.3497  0.2115  64  54 0 0.42 0 0
i "GM_Electric_Piano_1"   62.3508  0.2115  59  56 0 0.42 0 0
i "GM_Electric_Piano_1"   62.3512  0.2115  55  53 0 0.42 0 0
i "GM_Electric_Guitar_muted"   62.5408  0.3462  43  96 0 0.38 0 0
i "GM_Slap_Bass_1"   62.5408  0.3538  35  85 0 0.50 0 0
i "GM_Standard_Kit"   62.5408  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"   62.5408  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"   62.5408  0.2200  51  44 0 0.70 0 0
i "GM_Slap_Bass_1"   62.7331  0.1731  35  70 0 0.50 0 0
i "GM_Standard_Kit"   62.7331  0.1200  42  38 0 0.35 0 0
i "GM_Alto_Sax"   62.9254  0.2212  69  57 0 0.62 0 0
i "GM_Overdriven_Guitar"   62.9254  0.8654  43 101 0 0.56 0 0
i "GM_Slap_Bass_1"   62.9254  0.3538  33  79 0 0.50 0 0
i "GM_Standard_Kit"   62.9254  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"   62.9254  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"   62.9254  0.2200  51  44 0 0.70 0 0
i "GM_Tenor_Sax"   62.9254  0.2212  55  60 0 0.35 0 0
i "GM_Trombone"   62.9254  0.2212  60  57 0 0.28 0 0
i "GM_Trumpet"   62.9254  0.2212  76  55 0 0.72 0 0
i "GM_Slap_Bass_1"   63.1177  0.3462  33  73 0 0.50 0 0
i "GM_Standard_Kit"   63.1177  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"   63.3100  0.1200  42  41 0 0.35 0 0
i "GM_Standard_Kit"   63.5023  0.1200  42  37 0 0.35 0 0
i "GM_Slap_Bass_1"   63.6946  0.1731  33  70 0 0.50 0 0
i "GM_Standard_Kit"   63.6946  0.1200  46  39 0 0.35 0 0
i "GM_Alto_Sax"   63.8869  0.2212  69  56 0 0.62 0 0
i "GM_Overdriven_Guitar"   63.8869  0.5192  40 100 0 0.56 0 0
i "GM_Slap_Bass_1"   63.8869  0.3538  33  84 0 0.50 0 0
i "GM_Standard_Kit"   63.8869  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"   63.8869  0.1800  38  81 0 0.48 0 0
i "GM_Standard_Kit"   63.8869  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"   63.8869  0.2200  51  49 0 0.70 0 0
i "GM_Tenor_Sax"   63.8869  0.2212  55  59 0 0.35 0 0
i "GM_Trombone"   63.8869  0.2212  60  55 0 0.28 0 0
i "GM_Trumpet"   63.8869  0.2212  76  62 0 0.72 0 0
i "GM_Electric_Piano_1"   63.8883  0.2115  64  53 0 0.42 0 0
i "GM_Electric_Piano_1"   63.8898  0.2115  55  59 0 0.42 0 0
i "GM_Electric_Piano_1"   63.8907  0.2115  60  54 0 0.42 0 0
i "GM_Electric_Piano_1"   63.8908  0.2115  57  60 0 0.42 0 0
i "GM_Slap_Bass_1"   64.0793  0.3462  33  67 0 0.50 0 0
i "GM_Standard_Kit"   64.0793  0.1200  42  37 0 0.35 0 0
i "GM_Standard_Kit"   64.2716  0.1200  42  39 0 0.35 0 0
i "GM_Distortion_Guitar"   64.4639  0.8654  45  97 0 0.74 0 0
i "GM_Slap_Bass_1"   64.4639  0.3538  35  82 0 0.50 0 0
i "GM_Standard_Kit"   64.4639  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"   64.4639  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"   64.4639  0.2200  51  48 0 0.70 0 0
i "GM_Standard_Kit"   64.6562  0.1200  42  37 0 0.35 0 0
i "GM_Slap_Bass_1"   64.8485  0.1731  33  70 0 0.50 0 0
i "GM_Standard_Kit"   64.8485  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"   65.0408  0.1731  35  68 0 0.50 0 0
i "GM_Standard_Kit"   65.0408  0.1200  42  37 0 0.35 0 0
i "GM_Slap_Bass_1"   65.2331  0.1731  35  72 0 0.50 0 0
i "GM_Standard_Kit"   65.2331  0.1200  42  41 0 0.35 0 0
i "GM_Distortion_Guitar"   65.4254  0.5192  45  95 0 0.74 0 0
i "GM_Slap_Bass_1"   65.4254  0.3538  35  79 0 0.50 0 0
i "GM_Standard_Kit"   65.4254  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"   65.4254  0.1800  38  78 0 0.48 0 0
i "GM_Standard_Kit"   65.4254  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"   65.4254  0.2200  51  46 0 0.70 0 0
i "GM_Electric_Piano_1"   65.4281  0.2115  57  58 0 0.42 0 0
i "GM_Electric_Piano_1"   65.4285  0.2115  63  52 0 0.42 0 0
i "GM_Electric_Piano_1"   65.4285  0.2115  54  60 0 0.42 0 0
i "GM_Electric_Piano_1"   65.4293  0.2115  59  52 0 0.42 0 0
i "GM_Slap_Bass_1"   65.6177  0.1731  33  68 0 0.50 0 0
i "GM_Standard_Kit"   65.6177  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"   65.8100  0.1200  42  36 0 0.35 0 0
i "GM_Guitar_harmonics"   66.0023  0.3462  67 101 0 0.36 0 0
i "GM_Slap_Bass_1"   66.0023  0.3538  35  85 0 0.50 0 0
i "GM_Standard_Kit"   66.0023  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"   66.0023  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"   66.0023  0.2200  51  49 0 0.70 0 0
i "GM_Standard_Kit"   66.1946  0.1200  42  41 0 0.35 0 0
i "GM_Guitar_harmonics"   66.3869  0.5192  67 100 0 0.36 0 0
i "GM_Slap_Bass_1"   66.3869  0.3538  35  83 0 0.50 0 0
i "GM_Standard_Kit"   66.3869  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"   66.3869  0.1800  38  76 0 0.48 0 0
i "GM_Standard_Kit"   66.3869  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"   66.3869  0.2200  51  46 0 0.70 0 0
i "GM_Slap_Bass_1"   66.5793  0.3462  36  73 0 0.50 0 0
i "GM_Standard_Kit"   66.5793  0.1200  42  41 0 0.35 0 0
i "GM_Standard_Kit"   66.7716  0.1200  42  40 0 0.35 0 0
i "GM_Electric_Piano_1"   66.7717  0.2115  59  56 0 0.42 0 0
i "GM_Electric_Piano_1"   66.7720  0.2115  62  54 0 0.42 0 0
i "GM_Electric_Piano_1"   66.7729  0.2115  55  60 0 0.42 0 0
i "GM_Electric_Piano_1"   66.7766  0.2115  52  60 0 0.42 0 0
i "GM_Alto_Sax"   66.9639  0.2212  71  60 0 0.62 0 0
i "GM_Guitar_harmonics"   66.9639  0.1731  67 102 0 0.36 0 0
i "GM_Slap_Bass_1"   66.9639  0.3538  35  83 0 0.50 0 0
i "GM_Standard_Kit"   66.9639  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"   66.9639  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"   66.9639  0.2200  51  46 0 0.70 0 0
i "GM_Tenor_Sax"   66.9639  0.2212  55  61 0 0.35 0 0
i "GM_Trombone"   66.9639  0.2212  62  58 0 0.28 0 0
i "GM_Trumpet"   66.9639  0.2212  76  60 0 0.72 0 0
i "GM_Guitar_harmonics"   67.1562  0.3462  66  94 0 0.36 0 0
i "GM_Slap_Bass_1"   67.1562  0.1731  38  71 0 0.50 0 0
i "GM_Standard_Kit"   67.1562  0.1200  42  40 0 0.35 0 0
i "GM_Slap_Bass_1"   67.3485  0.1731  38  67 0 0.50 0 0
i "GM_Standard_Kit"   67.3485  0.1200  42  39 0 0.35 0 0
i "GM_Electric_Piano_1"   67.3519  0.2115  55  60 0 0.42 0 0
i "GM_Electric_Piano_1"   67.3520  0.2115  52  55 0 0.42 0 0
i "GM_Electric_Piano_1"   67.3531  0.2115  62  53 0 0.42 0 0
i "GM_Electric_Piano_1"   67.3544  0.2115  59  52 0 0.42 0 0
i "GM_Alto_Sax"   67.5408  0.2212  71  59 0 0.62 0 0
i "GM_Guitar_harmonics"   67.5408  0.3462  64 100 0 0.36 0 0
i "GM_Slap_Bass_1"   67.5408  0.3538  40  81 0 0.50 0 0
i "GM_Standard_Kit"   67.5408  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"   67.5408  0.1800  38  83 0 0.48 0 0
i "GM_Standard_Kit"   67.5408  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"   67.5408  0.2200  51  44 0 0.70 0 0
i "GM_Tenor_Sax"   67.5408  0.2212  55  58 0 0.35 0 0
i "GM_Trombone"   67.5408  0.2212  62  58 0 0.28 0 0
i "GM_Trumpet"   67.5408  0.2212  76  55 0 0.72 0 0
i "GM_Slap_Bass_1"   67.7331  0.1731  38  69 0 0.50 0 0
i "GM_Standard_Kit"   67.7331  0.1200  42  41 0 0.35 0 0
i "GM_Guitar_harmonics"   67.9254  0.5192  64 101 0 0.36 0 0
i "GM_Slap_Bass_1"   67.9254  0.3538  40  79 0 0.50 0 0
i "GM_Standard_Kit"   67.9254  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"   67.9254  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"   67.9254  0.2200  51  47 0 0.70 0 0
i "GM_Standard_Kit"   67.9254  0.1500  50  79 0 0.40 0 0
i "GM_Electric_Piano_1"   67.9276  0.2115  55  54 0 0.42 0 0
i "GM_Electric_Piano_1"   67.9288  0.2115  62  53 0 0.42 0 0
i "GM_Electric_Piano_1"   67.9293  0.2115  52  53 0 0.42 0 0
i "GM_Electric_Piano_1"   67.9300  0.2115  59  52 0 0.42 0 0
i "GM_Standard_Kit"   68.1177  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"   68.1177  0.1500  48  83 0 0.43 0 0
i "GM_Slap_Bass_1"   68.3100  0.1731  38  73 0 0.50 0 0
i "GM_Standard_Kit"   68.3100  0.1200  42  41 0 0.35 0 0
i "GM_Standard_Kit"   68.3100  0.1500  47  86 0 0.46 0 0
i "GM_Alto_Sax"   68.5023  0.2212  71  58 0 0.62 0 0
i "GM_Guitar_harmonics"   68.5023  0.5192  67 103 0 0.36 0 0
i "GM_Slap_Bass_1"   68.5023  0.3538  40  84 0 0.50 0 0
i "GM_Standard_Kit"   68.5023  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"   68.5023  0.1800  38  79 0 0.48 0 0
i "GM_Standard_Kit"   68.5023  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"   68.5023  0.2200  51  44 0 0.70 0 0
i "GM_Standard_Kit"   68.5023  0.1500  45  81 0 0.49 0 0
i "GM_Tenor_Sax"   68.5023  0.2212  55  58 0 0.35 0 0
i "GM_Trombone"   68.5023  0.2212  62  57 0 0.28 0 0
i "GM_Trumpet"   68.5023  0.2212  76  57 0 0.72 0 0
i "GM_Standard_Kit"   68.6946  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"   68.6946  0.1500  43  75 0 0.52 0 0
i "GM_Slap_Bass_1"   68.8869  0.1731  42  69 0 0.50 0 0
i "GM_Standard_Kit"   68.8869  0.1200  42  39 0 0.35 0 0
i "GM_Standard_Kit"   68.8869  0.1500  41  82 0 0.55 0 0
i "GM_Standard_Kit"   68.8869  0.2000  49  82 0 0.70 0 0
i "GM_Acoustic_Bass"   69.0793  0.5520  43  87 0 0.54 0 0
i "GM_Standard_Kit"   69.0793  0.1000  42  36 0 0.35 0 0
i "GM_Acoustic_Bass"   69.3793  0.2700  41  76 0 0.54 0 0
i "GM_Acoustic_Bass"   69.6793  0.2700  40  75 0 0.54 0 0
i "GM_Acoustic_Bass"   69.9793  0.5520  43  91 0 0.54 0 0
i "GM_Acoustic_Bass"   69.9793  0.2700  44  88 0 0.54 0 0
i "GM_Standard_Kit"   69.9793  0.1000  42  36 0 0.35 0 0
i "GM_Acoustic_Bass"   70.2793  0.5400  45  77 0 0.54 0 0
i "GM_Acoustic_Bass"   70.8793  0.2700  43  76 0 0.54 0 0
i "GM_Acoustic_Bass"   71.1793  0.2700  43  76 0 0.54 0 0
i "GM_Electric_Bass_finger"   71.4793  0.5520  45  90 0 0.72 0 0
i "GM_Standard_Kit"   71.4793  0.1000  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   71.7793  0.2700  47  79 0 0.72 0 0
i "GM_Electric_Bass_finger"   72.0793  0.5520  45  92 0 0.72 0 0
i "GM_Standard_Kit"   72.0793  0.1000  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   72.3793  0.2700  43  78 0 0.72 0 0
i "GM_Electric_Bass_finger"   72.6793  0.5520  42  92 0 0.72 0 0
i "GM_Standard_Kit"   72.6793  0.1000  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   72.9793  0.2700  44  80 0 0.72 0 0
i "GM_Electric_Bass_finger"   73.2793  0.5520  42  90 0 0.72 0 0
i "GM_Electric_Bass_finger"   73.2793  0.2700  41  88 0 0.72 0 0
i "GM_Standard_Kit"   73.2793  0.1000  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   73.5793  0.2700  44  81 0 0.72 0 0
i "GM_Electric_Bass_pick"   73.8793  0.5520  42  92 0 0.34 0 0
i "GM_Standard_Kit"   73.8793  0.1000  42  36 0 0.35 0 0
i "GM_Electric_Bass_pick"   74.4793  0.5520  42  87 0 0.34 0 0
i "GM_Standard_Kit"   74.4793  0.1000  42  36 0 0.35 0 0
i "GM_Electric_Bass_pick"   74.7793  0.5400  40  81 0 0.34 0 0
i "GM_Electric_Bass_pick"   75.3793  0.5520  42  90 0 0.34 0 0
i "GM_Standard_Kit"   75.3793  0.1000  42  36 0 0.35 0 0
i "GM_Electric_Bass_pick"   75.9793  0.2760  42  93 0 0.34 0 0
i "GM_Electric_Bass_pick"   75.9793  0.2700  41  88 0 0.34 0 0
i "GM_Standard_Kit"   75.9793  0.1000  42  36 0 0.35 0 0
i "GM_Fretless_Bass"   76.2793  0.5520  42  92 0 0.52 0 0
i "GM_Standard_Kit"   76.2793  0.1000  42  36 0 0.35 0 0
i "GM_Fretless_Bass"   76.5793  0.2700  40  75 0 0.52 0 0
i "GM_Fretless_Bass"   76.8793  0.2700  42  79 0 0.52 0 0
i "GM_Fretless_Bass"   77.1793  0.5520  42  91 0 0.52 0 0
i "GM_Standard_Kit"   77.1793  0.1000  42  36 0 0.35 0 0
i "GM_Fretless_Bass"   77.4793  0.2700  42  78 0 0.52 0 0
i "GM_Fretless_Bass"   77.7793  0.2700  45  81 0 0.52 0 0
i "GM_Fretless_Bass"   78.0793  0.5520  47  93 0 0.52 0 0
i "GM_Standard_Kit"   78.0793  0.1000  42  36 0 0.35 0 0
i "GM_Fretless_Bass"   78.9793  0.5520  47  92 0 0.52 0 0
i "GM_Fretless_Bass"   78.9793  0.2700  46  88 0 0.52 0 0
i "GM_Standard_Kit"   78.9793  0.1000  42  36 0 0.35 0 0
i "GM_Fretless_Bass"   79.2793  0.2700  49  76 0 0.52 0 0
i "GM_Fretless_Bass"   79.5793  0.2700  47  78 0 0.52 0 0
i "GM_Slap_Bass_1"   79.8793  0.5520  47  88 0 0.70 0 0
i "GM_Standard_Kit"   79.8793  0.1000  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"   80.1793  0.2700  47  78 0 0.70 0 0
i "GM_Slap_Bass_1"   80.4793  0.5520  47  88 0 0.70 0 0
i "GM_Standard_Kit"   80.4793  0.1000  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"   80.7793  0.2700  48  78 0 0.70 0 0
i "GM_Slap_Bass_1"   81.0793  0.5520  47  88 0 0.70 0 0
i "GM_Standard_Kit"   81.0793  0.1000  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"   81.3793  0.2700  45  81 0 0.70 0 0
i "GM_Slap_Bass_1"   81.6793  0.2700  43  79 0 0.70 0 0
i "GM_Slap_Bass_1"   81.9793  0.2760  40  93 0 0.70 0 0
i "GM_Slap_Bass_1"   81.9793  0.2700  37  88 0 0.70 0 0
i "GM_Standard_Kit"   81.9793  0.1000  42  36 0 0.35 0 0
i "GM_Slap_Bass_2"   82.2793  0.5520  38  89 0 0.32 0 0
i "GM_Standard_Kit"   82.2793  0.1000  42  36 0 0.35 0 0
i "GM_Slap_Bass_2"   82.5793  0.2700  38  79 0 0.32 0 0
i "GM_Slap_Bass_2"   83.1793  0.2700  40  78 0 0.32 0 0
i "GM_Slap_Bass_2"   83.4793  0.2700  38  75 0 0.32 0 0
i "GM_Slap_Bass_2"   83.7793  0.5520  38  93 0 0.32 0 0
i "GM_Slap_Bass_2"   83.7793  0.2700  37  88 0 0.32 0 0
i "GM_Standard_Kit"   83.7793  0.1000  42  36 0 0.35 0 0
i "GM_Slap_Bass_2"   84.0793  0.2700  38  77 0 0.32 0 0
i "GM_Slap_Bass_2"   84.3793  0.2700  38  76 0 0.32 0 0
i "GM_Standard_Kit"   84.6793  0.1000  42  36 0 0.35 0 0
i "GM_Synth_Bass_1"   84.6793  0.5520  38  89 0 0.50 0 0
i "GM_Synth_Bass_1"   84.9793  0.2700  38  77 0 0.50 0 0
i "GM_Standard_Kit"   85.2793  0.1000  42  36 0 0.35 0 0
i "GM_Synth_Bass_1"   85.2793  0.5520  38  90 0 0.50 0 0
i "GM_Synth_Bass_1"   85.5793  0.2700  36  80 0 0.50 0 0
i "GM_Standard_Kit"   85.8793  0.1000  42  36 0 0.35 0 0
i "GM_Synth_Bass_1"   85.8793  0.5520  38  93 0 0.50 0 0
i "GM_Synth_Bass_1"   86.1793  0.2700  38  78 0 0.50 0 0
i "GM_Standard_Kit"   86.7793  0.1000  42  36 0 0.35 0 0
i "GM_Synth_Bass_1"   86.7793  0.2760  38  91 0 0.50 0 0
i "GM_Synth_Bass_1"   86.7793  0.2700  37  88 0 0.50 0 0
i "GM_Standard_Kit"   87.0793  0.1000  42  36 0 0.35 0 0
i "GM_Synth_Bass_2"   87.0793  0.5520  38  93 0 0.68 0 0
i "GM_Synth_Bass_2"   87.3793  0.2700  40  76 0 0.68 0 0
i "GM_Standard_Kit"   87.6793  0.1000  42  36 0 0.35 0 0
i "GM_Synth_Bass_2"   87.6793  0.5520  38  89 0 0.68 0 0
i "GM_Synth_Bass_2"   87.9793  0.2700  38  75 0 0.68 0 0
i "GM_Standard_Kit"   88.2793  0.1000  42  36 0 0.35 0 0
i "GM_Synth_Bass_2"   88.2793  0.5520  38  91 0 0.68 0 0
i "GM_Synth_Bass_2"   88.5793  0.2700  38  78 0 0.68 0 0
i "GM_Standard_Kit"   89.1793  0.1000  42  36 0 0.35 0 0
i "GM_Synth_Bass_2"   89.1793  0.5520  38  89 0 0.68 0 0
i "GM_Synth_Bass_2"   89.4793  0.2700  40  79 0 0.68 0 0
i "GM_Synth_Bass_2"   89.7793  0.2700  41  78 0 0.68 0 0
i "GM_Standard_Kit"   90.0793  0.1000  42  36 0 0.35 0 0
i "GM_Synth_Bass_2"   90.0793  0.5520  43  87 0 0.68 0 0
i "GM_Standard_Kit"   90.6793  0.1000  42  36 0 0.35 0 0
i "GM_Synth_Bass_2"   90.6793  0.5520  43  91 0 0.68 0 0
i "GM_Standard_Kit"   91.2793  0.1000  42  36 0 0.35 0 0
i "GM_Synth_Bass_2"   91.2793  0.5520  43  89 0 0.68 0 0
i "GM_Synth_Bass_2"   91.2793  0.2700  42  88 0 0.68 0 0
i "GM_Standard_Kit"   91.5793  0.3000  49  84 0 0.70 0 0
i "GM_Synth_Bass_2"   91.5793  0.2700  41  76 0 0.68 0 0
i "GM_Standard_Kit"   91.8793  0.1000  42  36 0 0.35 0 0
i "GM_Violin"   91.8793  0.2700  67  99 0 0.29 0 0
i "GM_Violin"   92.1793  0.5400  66  89 0 0.29 0 0
i "GM_Standard_Kit"   92.7793  0.1000  42  36 0 0.35 0 0
i "GM_Violin"   92.7793  1.3500  67 103 0 0.29 0 0
i "GM_Standard_Kit"   94.2793  0.1000  42  36 0 0.35 0 0
i "GM_Viola"   94.2793  0.8100  67  99 0 0.48 0 0
i "GM_Standard_Kit"   95.1793  0.1000  42  36 0 0.35 0 0
i "GM_Viola"   95.1793  0.2700  67 101 0 0.48 0 0
i "GM_Viola"   95.4793  0.5400  65  88 0 0.48 0 0
i "GM_Standard_Kit"   96.0793  0.1000  42  36 0 0.35 0 0
i "GM_Viola"   96.0793  0.5400  64 101 0 0.48 0 0
i "GM_Cello"   96.6793  0.5400  64 102 0 0.66 0 0
i "GM_Standard_Kit"   96.6793  0.1000  42  36 0 0.35 0 0
i "GM_Cello"   97.2793  0.2700  64  96 0 0.66 0 0
i "GM_Standard_Kit"   97.2793  0.1000  42  36 0 0.35 0 0
i "GM_Cello"   97.5793  0.5400  65  94 0 0.66 0 0
i "GM_Cello"   98.1793  0.5400  64 101 0 0.66 0 0
i "GM_Standard_Kit"   98.1793  0.1000  42  36 0 0.35 0 0
i "GM_Cello"   98.7793  0.2700  64  97 0 0.66 0 0
i "GM_Standard_Kit"   98.7793  0.1000  42  36 0 0.35 0 0
i "GM_Contrabass"   99.0793  0.5520  45  91 0 0.27 0 0
i "GM_Standard_Kit"   99.0793  0.1000  42  36 0 0.35 0 0
i "GM_Contrabass"   99.3793  0.2700  45  79 0 0.27 0 0
i "GM_Contrabass"   99.6793  0.2700  43  77 0 0.27 0 0
i "GM_Contrabass"   99.9793  0.5520  45  88 0 0.27 0 0
i "GM_Standard_Kit"   99.9793  0.1000  42  36 0 0.35 0 0
i "GM_Contrabass"  100.2793  0.5400  45  81 0 0.27 0 0
i "GM_Contrabass"  100.8793  0.5520  43  90 0 0.27 0 0
i "GM_Standard_Kit"  100.8793  0.1000  42  36 0 0.35 0 0
i "GM_Contrabass"  101.1793  0.5400  45  80 0 0.27 0 0
i "GM_Contrabass"  101.7793  0.5520  43  91 0 0.27 0 0
i "GM_Contrabass"  101.7793  0.2700  37  88 0 0.27 0 0
i "GM_Standard_Kit"  101.7793  0.1000  42  36 0 0.35 0 0
i "GM_Contrabass"  102.0793  0.2700  42  79 0 0.27 0 0
i "GM_Contrabass"  102.3793  0.2700  40  78 0 0.27 0 0
i "GM_Standard_Kit"  102.6793  0.1000  42  36 0 0.35 0 0
i "GM_Tremolo_Strings"  102.6793  0.8100  62 102 0 0.45 0 0
i "GM_Standard_Kit"  103.5793  0.1000  42  36 0 0.35 0 0
i "GM_Tremolo_Strings"  103.5793  0.5400  59 100 0 0.45 0 0
i "GM_Standard_Kit"  104.1793  0.1000  42  36 0 0.35 0 0
i "GM_Tremolo_Strings"  104.1793  0.8100  62 100 0 0.45 0 0
i "GM_Pizzicato_Strings"  105.0793  0.2700  61 103 0 0.63 0 0
i "GM_Standard_Kit"  105.0793  0.1000  42  36 0 0.35 0 0
i "GM_Pizzicato_Strings"  105.3793  0.5400  59  86 0 0.63 0 0
i "GM_Pizzicato_Strings"  105.9793  0.5400  57  96 0 0.63 0 0
i "GM_Standard_Kit"  105.9793  0.1000  42  36 0 0.35 0 0
i "GM_Pizzicato_Strings"  106.5793  0.8100  57  98 0 0.63 0 0
i "GM_Standard_Kit"  106.5793  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  107.4793  0.1000  42  36 0 0.35 0 0
i "GM_Orchestral_Harp"  107.7793  0.2700  57  94 0 0.25 0 0
i "GM_Orchestral_Harp"  108.0793  0.8100  53 100 0 0.25 0 0
i "GM_Standard_Kit"  108.0793  0.1000  42  36 0 0.35 0 0
i "GM_Orchestral_Harp"  108.9793  0.8100  53  99 0 0.25 0 0
i "GM_Standard_Kit"  108.9793  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  109.8793  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  109.8793  0.1200  42  46 0 0.35 0 0
i "GM_Standard_Kit"  110.1793  0.1200  42  31 0 0.35 0 0
i "GM_Standard_Kit"  110.4793  0.1200  42  33 0 0.35 0 0
i "GM_Standard_Kit"  110.7793  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  110.7793  0.1800  38  69 0 0.48 0 0
i "GM_Standard_Kit"  110.7793  0.1200  42  51 0 0.35 0 0
i "GM_Timpani"  110.7793  0.2550  50  83 0 0.43 0 0
i "GM_Standard_Kit"  111.0793  0.1200  42  33 0 0.35 0 0
i "GM_Standard_Kit"  111.3793  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"  111.3793  0.1200  42  48 0 0.35 0 0
i "GM_Timpani"  111.3793  0.2550  43  91 0 0.43 0 0
i "GM_Standard_Kit"  111.6793  0.1200  42  34 0 0.35 0 0
i "GM_Standard_Kit"  111.9793  0.1200  46  31 0 0.35 0 0
i "GM_Standard_Kit"  112.2793  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"  112.2793  0.1800  38  66 0 0.48 0 0
i "GM_Standard_Kit"  112.2793  0.1200  42  50 0 0.35 0 0
i "GM_Timpani"  112.2793  0.2550  43  94 0 0.43 0 0
i "GM_Standard_Kit"  112.5793  0.1200  42  32 0 0.35 0 0
i "GM_Timpani"  112.5793  0.2550  43  81 0 0.43 0 0
i "GM_Standard_Kit"  112.8793  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  112.8793  0.1200  42  49 0 0.35 0 0
i "GM_Standard_Kit"  112.8793  0.1500  50  82 0 0.40 0 0
i "GM_Timpani"  112.8793  0.2550  50  91 0 0.43 0 0
i "GM_Standard_Kit"  113.1793  0.1200  42  31 0 0.35 0 0
i "GM_Standard_Kit"  113.1793  0.1500  48  77 0 0.43 0 0
i "GM_Timpani"  113.1793  0.2550  50  79 0 0.43 0 0
i "GM_Standard_Kit"  113.4793  0.1200  46  34 0 0.35 0 0
i "GM_Standard_Kit"  113.4793  0.1500  47  75 0 0.46 0 0
i "GM_Timpani"  113.4793  0.2550  55  90 0 0.43 0 0
i "GM_Standard_Kit"  113.7793  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"  113.7793  0.1800  38  69 0 0.48 0 0
i "GM_Standard_Kit"  113.7793  0.1200  42  51 0 0.35 0 0
i "GM_Standard_Kit"  113.7793  0.1500  45  75 0 0.49 0 0
i "GM_Timpani"  113.7793  0.2550  43  80 0 0.43 0 0
i "GM_Standard_Kit"  114.0793  0.1200  42  33 0 0.35 0 0
i "GM_Standard_Kit"  114.0793  0.1500  43  81 0 0.52 0 0
i "GM_Standard_Kit"  114.3793  0.1200  42  35 0 0.35 0 0
i "GM_Standard_Kit"  114.3793  0.1500  41  85 0 0.55 0 0
i "GM_Standard_Kit"  114.3793  0.2000  49  82 0 0.70 0 0
i "GM_Timpani"  114.3793  0.2550  43  84 0 0.43 0 0
i "GM_Electric_Bass_finger"  114.6793  0.3833  36  84 0 0.50 0 0
i "GM_Standard_Kit"  114.6793  0.2200  36  60 0 0.50 0 0
i "GM_Standard_Kit"  114.6793  0.1200  42  49 0 0.35 0 0
i "GM_Standard_Kit"  114.6793  0.5000  49  86 0 0.72 0 0
i "GM_Standard_Kit"  114.6793  0.3500  57  68 0 0.78 0 0
i "GM_String_Ensemble_1"  114.6793  1.6333  55  70 0 0.61 0 0
i "GM_String_Ensemble_1"  114.6793  1.6333  59  70 0 0.61 0 0
i "GM_String_Ensemble_1"  114.6793  1.6333  60  70 0 0.61 0 0
i "GM_String_Ensemble_1"  114.6793  1.6333  64  70 0 0.61 0 0
i "GM_Standard_Kit"  114.8876  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"  114.8876  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  115.0959  0.3833  36  82 0 0.50 0 0
i "GM_Standard_Kit"  115.0959  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"  115.0959  0.1800  38  66 0 0.48 0 0
i "GM_Standard_Kit"  115.0959  0.1200  42  49 0 0.35 0 0
i "GM_Standard_Kit"  115.3043  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  115.5126  0.1875  36  67 0 0.50 0 0
i "GM_Standard_Kit"  115.5126  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  115.7209  0.3833  36  85 0 0.50 0 0
i "GM_Standard_Kit"  115.7209  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  115.7209  0.1200  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"  115.9293  0.3750  35  68 0 0.50 0 0
i "GM_Standard_Kit"  115.9293  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"  116.1376  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  116.3459  0.3833  35  84 0 0.50 0 0
i "GM_Standard_Kit"  116.3459  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  116.3459  0.1200  42  47 0 0.35 0 0
i "GM_String_Ensemble_2"  116.3459  1.6333  55  70 0 0.23 0 0
i "GM_String_Ensemble_2"  116.3459  1.6333  59  70 0 0.23 0 0
i "GM_String_Ensemble_2"  116.3459  1.6333  62  70 0 0.23 0 0
i "GM_String_Ensemble_2"  116.3459  1.6333  64  70 0 0.23 0 0
i "GM_Standard_Kit"  116.5543  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  116.7626  0.1875  35  67 0 0.50 0 0
i "GM_Standard_Kit"  116.7626  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"  116.7626  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  116.9709  0.3833  35  79 0 0.50 0 0
i "GM_Standard_Kit"  116.9709  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  116.9709  0.1800  38  68 0 0.48 0 0
i "GM_Standard_Kit"  116.9709  0.1200  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"  117.1793  0.1875  38  67 0 0.50 0 0
i "GM_Standard_Kit"  117.1793  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  117.3876  0.3833  40  79 0 0.50 0 0
i "GM_Standard_Kit"  117.3876  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  117.3876  0.1200  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"  117.5959  0.1875  42  70 0 0.50 0 0
i "GM_Standard_Kit"  117.5959  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  117.8043  0.1875  43  73 0 0.50 0 0
i "GM_Standard_Kit"  117.8043  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  118.0126  0.3833  45  83 0 0.50 0 0
i "GM_Standard_Kit"  118.0126  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  118.0126  0.1200  42  50 0 0.35 0 0
i "GM_SynthStrings_1"  118.0126  1.6333  55  70 0 0.41 0 0
i "GM_SynthStrings_1"  118.0126  1.6333  57  70 0 0.41 0 0
i "GM_SynthStrings_1"  118.0126  1.6333  60  70 0 0.41 0 0
i "GM_SynthStrings_1"  118.0126  1.6333  64  70 0 0.41 0 0
i "GM_Electric_Bass_finger"  118.2209  0.1875  47  69 0 0.50 0 0
i "GM_Standard_Kit"  118.2209  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  118.4293  0.3833  45  85 0 0.50 0 0
i "GM_Standard_Kit"  118.4293  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  118.4293  0.1800  38  72 0 0.48 0 0
i "GM_Standard_Kit"  118.4293  0.1200  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"  118.6376  0.3750  43  67 0 0.50 0 0
i "GM_Standard_Kit"  118.6376  0.1200  42  31 0 0.35 0 0
i "GM_Standard_Kit"  118.8459  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"  118.8459  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  119.0543  0.3833  45  84 0 0.50 0 0
i "GM_Standard_Kit"  119.0543  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  119.0543  0.1200  42  48 0 0.35 0 0
i "GM_Standard_Kit"  119.2626  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  119.4709  0.1917  45  80 0 0.50 0 0
i "GM_Standard_Kit"  119.4709  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  119.4709  0.1800  38  67 0 0.48 0 0
i "GM_Standard_Kit"  119.4709  0.1200  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"  119.6793  0.3833  45  79 0 0.50 0 0
i "GM_Standard_Kit"  119.6793  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  119.6793  0.1200  42  46 0 0.35 0 0
i "GM_SynthStrings_2"  119.6793  2.4500  54  70 0 0.59 0 0
i "GM_SynthStrings_2"  119.6793  2.4500  57  70 0 0.59 0 0
i "GM_SynthStrings_2"  119.6793  2.4500  60  70 0 0.59 0 0
i "GM_SynthStrings_2"  119.6793  2.4500  62  70 0 0.59 0 0
i "GM_Electric_Bass_finger"  119.8876  0.3750  45  72 0 0.50 0 0
i "GM_Standard_Kit"  119.8876  0.1200  42  35 0 0.35 0 0
i "GM_Standard_Kit"  120.0959  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  120.3043  0.1875  43  73 0 0.50 0 0
i "GM_Standard_Kit"  120.3043  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"  120.5126  0.3833  45  80 0 0.50 0 0
i "GM_Standard_Kit"  120.5126  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"  120.5126  0.1800  38  72 0 0.48 0 0
i "GM_Standard_Kit"  120.5126  0.1200  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"  120.7209  0.1875  42  70 0 0.50 0 0
i "GM_Standard_Kit"  120.7209  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  120.9293  0.1875  42  72 0 0.50 0 0
i "GM_Standard_Kit"  120.9293  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  121.1376  0.1875  43  69 0 0.50 0 0
i "GM_Standard_Kit"  121.1376  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"  121.3459  0.3833  45  83 0 0.50 0 0
i "GM_Standard_Kit"  121.3459  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  121.3459  0.1200  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"  121.5543  0.1875  43  72 0 0.50 0 0
i "GM_Standard_Kit"  121.5543  0.1200  42  33 0 0.35 0 0
i "GM_Standard_Kit"  121.7626  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  121.9709  0.1875  45  72 0 0.50 0 0
i "GM_Standard_Kit"  121.9709  0.1200  42  35 0 0.35 0 0
i "GM_Choir_Aahs"  122.1793  1.6333  55  70 0 0.77 0 0
i "GM_Choir_Aahs"  122.1793  1.6333  58  70 0 0.77 0 0
i "GM_Choir_Aahs"  122.1793  1.6333  60  70 0 0.77 0 0
i "GM_Choir_Aahs"  122.1793  1.6333  63  70 0 0.77 0 0
i "GM_Electric_Bass_finger"  122.1793  0.3833  43  80 0 0.50 0 0
i "GM_Standard_Kit"  122.1793  0.2200  36  60 0 0.50 0 0
i "GM_Standard_Kit"  122.1793  0.1200  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"  122.3876  0.1875  41  67 0 0.50 0 0
i "GM_Standard_Kit"  122.3876  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  122.5959  0.3833  43  83 0 0.50 0 0
i "GM_Standard_Kit"  122.5959  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  122.5959  0.1800  38  67 0 0.48 0 0
i "GM_Standard_Kit"  122.5959  0.1200  42  47 0 0.35 0 0
i "GM_Standard_Kit"  122.8043  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  123.0126  0.3833  43  84 0 0.50 0 0
i "GM_Standard_Kit"  123.0126  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  123.0126  0.1200  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"  123.2209  0.1875  44  69 0 0.50 0 0
i "GM_Standard_Kit"  123.2209  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  123.4293  0.3833  43  85 0 0.50 0 0
i "GM_Standard_Kit"  123.4293  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  123.4293  0.1800  38  71 0 0.48 0 0
i "GM_Standard_Kit"  123.4293  0.1200  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"  123.6376  0.1875  43  70 0 0.50 0 0
i "GM_Standard_Kit"  123.6376  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  123.8459  0.3833  41  79 0 0.50 0 0
i "GM_Standard_Kit"  123.8459  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  123.8459  0.1200  42  48 0 0.35 0 0
i "GM_Voice_Oohs"  123.8459  1.6333  53  70 0 0.39 0 0
i "GM_Voice_Oohs"  123.8459  1.6333  57  70 0 0.39 0 0
i "GM_Voice_Oohs"  123.8459  1.6333  60  70 0 0.39 0 0
i "GM_Voice_Oohs"  123.8459  1.6333  63  70 0 0.39 0 0
i "GM_Electric_Bass_finger"  124.0543  0.1875  39  67 0 0.50 0 0
i "GM_Standard_Kit"  124.0543  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  124.2626  0.3750  39  70 0 0.50 0 0
i "GM_Standard_Kit"  124.2626  0.1200  42  32 0 0.35 0 0
i "GM_Standard_Kit"  124.4709  0.1200  46  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  124.6793  0.3833  41  80 0 0.50 0 0
i "GM_Standard_Kit"  124.6793  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  124.6793  0.1800  38  70 0 0.48 0 0
i "GM_Standard_Kit"  124.6793  0.1200  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"  124.8876  0.1875  43  70 0 0.50 0 0
i "GM_Standard_Kit"  124.8876  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  125.0959  0.3833  41  81 0 0.50 0 0
i "GM_Standard_Kit"  125.0959  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"  125.0959  0.1200  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"  125.3043  0.1875  41  72 0 0.50 0 0
i "GM_Standard_Kit"  125.3043  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"  125.5126  0.3833  41  85 0 0.50 0 0
i "GM_Rock_Organ"  125.5126  1.6000  53  34 0 0.55 0 0
i "GM_Rock_Organ"  125.5126  1.6000  57  34 0 0.55 0 0
i "GM_Rock_Organ"  125.5126  1.6000  58  35 0 0.55 0 0
i "GM_Rock_Organ"  125.5126  1.6000  62  32 0 0.55 0 0
i "GM_Standard_Kit"  125.5126  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"  125.5126  0.1200  42  49 0 0.35 0 0
i "GM_Synth_Voice"  125.5126  0.1875  53 103 0 0.57 0 0
i "GM_Electric_Bass_finger"  125.7209  0.3750  43  67 0 0.50 0 0
i "GM_Standard_Kit"  125.7209  0.1200  42  34 0 0.35 0 0
i "GM_Synth_Voice"  125.7209  0.3750  51  92 0 0.57 0 0
i "GM_Standard_Kit"  125.9293  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  125.9293  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  126.1376  0.3833  41  82 0 0.50 0 0
i "GM_Standard_Kit"  126.1376  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  126.1376  0.1800  38  73 0 0.48 0 0
i "GM_Standard_Kit"  126.1376  0.1200  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  126.1385  0.2292  62  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  126.1388  0.2292  58  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  126.1403  0.2292  53  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  126.1413  0.2292  57  52 0 0.38 0 0
i "GM_Electric_Bass_finger"  126.3459  0.1875  43  67 0 0.50 0 0
i "GM_Standard_Kit"  126.3459  0.1200  42  34 0 0.35 0 0
i "GM_Synth_Voice"  126.3459  0.1875  53  87 0 0.57 0 0
i "GM_Acoustic_Grand_Piano"  126.3467  0.2292  53  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  126.3472  0.2292  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  126.3490  0.2292  58  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  126.3504  0.2292  57  52 0 0.38 0 0
i "GM_Electric_Bass_finger"  126.5543  0.3833  41  79 0 0.50 0 0
i "GM_Standard_Kit"  126.5543  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"  126.5543  0.1200  42  46 0 0.35 0 0
i "GM_Synth_Voice"  126.5543  0.1875  53 103 0 0.57 0 0
i "GM_Electric_Bass_finger"  126.7626  0.1875  39  67 0 0.50 0 0
i "GM_Standard_Kit"  126.7626  0.1200  42  36 0 0.35 0 0
i "GM_Synth_Voice"  126.7626  0.3750  55  91 0 0.57 0 0
i "GM_Electric_Bass_finger"  126.9709  0.1875  41  73 0 0.50 0 0
i "GM_Standard_Kit"  126.9709  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  127.1793  0.3833  39  80 0 0.50 0 0
i "GM_Standard_Kit"  127.1793  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"  127.1793  0.1200  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"  127.3876  0.1875  39  70 0 0.50 0 0
i "GM_Standard_Kit"  127.3876  0.1200  42  31 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  127.3887  0.2292  55  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  127.3890  0.2292  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  127.3896  0.2292  58  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  127.3915  0.2292  63  54 0 0.38 0 0
i "GM_Electric_Bass_finger"  127.5959  0.3833  39  79 0 0.50 0 0
i "GM_Orchestra_Hit"  127.5959  0.2500  55  84 0 0.75 0 0
i "GM_Orchestra_Hit"  127.5959  0.2500  58  90 0 0.75 0 0
i "GM_Orchestra_Hit"  127.5959  0.2500  62  84 0 0.75 0 0
i "GM_Orchestra_Hit"  127.5959  0.2500  63  90 0 0.75 0 0
i "GM_Standard_Kit"  127.5959  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  127.5959  0.1800  38  67 0 0.48 0 0
i "GM_Standard_Kit"  127.5959  0.1200  42  46 0 0.35 0 0
i "GM_Standard_Kit"  127.8043  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  128.0126  0.3833  39  81 0 0.50 0 0
i "GM_Orchestra_Hit"  128.0126  0.2500  55  89 0 0.75 0 0
i "GM_Orchestra_Hit"  128.0126  0.2500  58  91 0 0.75 0 0
i "GM_Orchestra_Hit"  128.0126  0.2500  62  90 0 0.75 0 0
i "GM_Orchestra_Hit"  128.0126  0.2500  63  87 0 0.75 0 0
i "GM_Standard_Kit"  128.0126  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"  128.0126  0.1200  42  47 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  128.0128  0.2292  62  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  128.0137  0.2292  63  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  128.0138  0.2292  58  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  128.0170  0.2292  55  52 0 0.38 0 0
i "GM_Electric_Bass_finger"  128.2209  0.1875  38  69 0 0.50 0 0
i "GM_Standard_Kit"  128.2209  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  128.4293  0.1875  39  72 0 0.50 0 0
i "GM_Standard_Kit"  128.4293  0.1200  46  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  128.6376  0.3833  39  85 0 0.50 0 0
i "GM_Standard_Kit"  128.6376  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  128.6376  0.1800  38  73 0 0.48 0 0
i "GM_Standard_Kit"  128.6376  0.1200  42  48 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  128.6392  0.2292  55  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  128.6394  0.2292  63  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  128.6412  0.2292  58  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  128.6416  0.2292  62  56 0 0.38 0 0
i "GM_Electric_Bass_finger"  128.8459  0.1875  39  67 0 0.50 0 0
i "GM_Standard_Kit"  128.8459  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  129.0543  0.1875  38  68 0 0.50 0 0
i "GM_Standard_Kit"  129.0543  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  129.2626  0.3833  39  82 0 0.50 0 0
i "GM_Orchestra_Hit"  129.2626  0.2500  55  91 0 0.75 0 0
i "GM_Orchestra_Hit"  129.2626  0.2500  58  89 0 0.75 0 0
i "GM_Orchestra_Hit"  129.2626  0.2500  62  89 0 0.75 0 0
i "GM_Orchestra_Hit"  129.2626  0.2500  63  85 0 0.75 0 0
i "GM_Standard_Kit"  129.2626  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  129.2626  0.1200  42  49 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  129.2631  0.2292  55  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  129.2631  0.2292  58  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  129.2632  0.2292  62  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  129.2635  0.2292  63  56 0 0.38 0 0
i "GM_Electric_Bass_finger"  129.4709  0.1875  38  69 0 0.50 0 0
i "GM_Standard_Kit"  129.4709  0.1200  42  34 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  129.4729  0.2292  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  129.4740  0.2292  58  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  129.4757  0.2292  55  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  129.4758  0.2292  63  58 0 0.38 0 0
i "GM_Electric_Bass_finger"  129.6793  0.3833  39  83 0 0.50 0 0
i "GM_Orchestra_Hit"  129.6793  0.2500  55  89 0 0.75 0 0
i "GM_Orchestra_Hit"  129.6793  0.2500  58  89 0 0.75 0 0
i "GM_Orchestra_Hit"  129.6793  0.2500  62  90 0 0.75 0 0
i "GM_Orchestra_Hit"  129.6793  0.2500  63  88 0 0.75 0 0
i "GM_Standard_Kit"  129.6793  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"  129.6793  0.1800  38  67 0 0.48 0 0
i "GM_Standard_Kit"  129.6793  0.1200  42  46 0 0.35 0 0
i "GM_Standard_Kit"  129.6793  0.1500  50  76 0 0.40 0 0
i "GM_Electric_Bass_finger"  129.8876  0.1875  39  71 0 0.50 0 0
i "GM_Standard_Kit"  129.8876  0.1200  42  35 0 0.35 0 0
i "GM_Standard_Kit"  129.8876  0.1500  48  82 0 0.43 0 0
i "GM_Electric_Bass_finger"  130.0959  0.3833  39  85 0 0.50 0 0
i "GM_Orchestra_Hit"  130.0959  0.2500  55  93 0 0.75 0 0
i "GM_Orchestra_Hit"  130.0959  0.2500  58  88 0 0.75 0 0
i "GM_Orchestra_Hit"  130.0959  0.2500  62  85 0 0.75 0 0
i "GM_Orchestra_Hit"  130.0959  0.2500  63  89 0 0.75 0 0
i "GM_Standard_Kit"  130.0959  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"  130.0959  0.1200  42  46 0 0.35 0 0
i "GM_Standard_Kit"  130.0959  0.1500  47  84 0 0.46 0 0
i "GM_Standard_Kit"  130.3043  0.1200  42  33 0 0.35 0 0
i "GM_Standard_Kit"  130.3043  0.1500  45  74 0 0.49 0 0
i "GM_Standard_Kit"  130.3043  0.2000  49  82 0 0.70 0 0
i "GM_Electric_Bass_finger"  130.5126  0.3833  40  79 0 0.50 0 0
i "GM_Standard_Kit"  130.5126  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  130.5126  0.1200  42  47 0 0.35 0 0
i "GM_Standard_Kit"  130.5126  0.5000  49  86 0 0.72 0 0
i "GM_Trumpet"  130.5126  0.3750  55  99 0 0.37 0 0
i "GM_Acoustic_Grand_Piano"  130.5138  0.2292  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  130.5166  0.2292  55  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  130.5171  0.2292  57  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  130.5178  0.2292  60  57 0 0.38 0 0
i "GM_Electric_Bass_finger"  130.7209  0.1875  38  71 0 0.50 0 0
i "GM_Standard_Kit"  130.7209  0.1200  42  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  130.7213  0.2292  55  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  130.7247  0.2292  60  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  130.7264  0.2292  64  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  130.7264  0.2292  57  56 0 0.38 0 0
i "GM_Electric_Bass_finger"  130.9293  0.3833  40  83 0 0.50 0 0
i "GM_Standard_Kit"  130.9293  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"  130.9293  0.1800  38  73 0 0.48 0 0
i "GM_Standard_Kit"  130.9293  0.1200  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"  131.1376  0.3750  36  70 0 0.50 0 0
i "GM_Standard_Kit"  131.1376  0.1200  42  35 0 0.35 0 0
i "GM_Trumpet"  131.1376  0.3750  57  91 0 0.37 0 0
i "GM_Standard_Kit"  131.3459  0.1200  42  32 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  131.3465  0.2292  55  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  131.3470  0.2292  57  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  131.3475  0.2292  60  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  131.3492  0.2292  64  57 0 0.38 0 0
i "GM_Electric_Bass_finger"  131.5543  0.3833  33  82 0 0.50 0 0
i "GM_Standard_Kit"  131.5543  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"  131.5543  0.1200  42  50 0 0.35 0 0
i "GM_Trumpet"  131.5543  0.3750  57  97 0 0.37 0 0
i "GM_Standard_Kit"  131.7626  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  131.9709  0.1917  33  84 0 0.50 0 0
i "GM_Standard_Kit"  131.9709  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"  131.9709  0.1800  38  66 0 0.48 0 0
i "GM_Standard_Kit"  131.9709  0.1200  42  51 0 0.35 0 0
i "GM_Trumpet"  131.9709  0.1875  60 103 0 0.37 0 0
i "GM_Acoustic_Grand_Piano"  131.9720  0.2292  55  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  131.9728  0.2292  64  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  131.9740  0.2292  60  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  131.9749  0.2292  57  60 0 0.38 0 0
i "GM_Electric_Bass_finger"  132.1793  0.3833  33  80 0 0.50 0 0
i "GM_Standard_Kit"  132.1793  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"  132.1793  0.1200  42  51 0 0.35 0 0
i "GM_Trombone"  132.1793  0.1875  60  98 0 0.55 0 0
i "GM_Acoustic_Grand_Piano"  132.1817  0.2292  54  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  132.1825  0.2292  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  132.1838  0.2292  60  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  132.1842  0.2292  57  58 0 0.38 0 0
i "GM_Electric_Bass_finger"  132.3876  0.1875  33  70 0 0.50 0 0
i "GM_Standard_Kit"  132.3876  0.1200  42  32 0 0.35 0 0
i "GM_Trombone"  132.3876  0.3750  59  88 0 0.55 0 0
i "GM_Electric_Bass_finger"  132.5959  0.1875  33  68 0 0.50 0 0
i "GM_Standard_Kit"  132.5959  0.1200  42  33 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  132.5989  0.2292  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  132.5993  0.2292  57  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  132.6003  0.2292  62  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  132.6011  0.2292  54  55 0 0.38 0 0
i "GM_Electric_Bass_finger"  132.8043  0.3833  33  82 0 0.50 0 0
i "GM_Standard_Kit"  132.8043  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"  132.8043  0.1800  38  68 0 0.48 0 0
i "GM_Standard_Kit"  132.8043  0.1200  42  49 0 0.35 0 0
i "GM_Trombone"  132.8043  0.3750  60 100 0 0.55 0 0
i "GM_Electric_Bass_finger"  133.0126  0.3750  30  71 0 0.50 0 0
i "GM_Standard_Kit"  133.0126  0.1200  42  33 0 0.35 0 0
i "GM_Standard_Kit"  133.2209  0.1200  42  32 0 0.35 0 0
i "GM_Trombone"  133.2209  0.5625  59  87 0 0.55 0 0
i "GM_Electric_Bass_finger"  133.4293  0.1875  28  70 0 0.50 0 0
i "GM_Standard_Kit"  133.4293  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"  133.6376  0.1200  42  35 0 0.35 0 0
i "GM_Rock_Organ"  133.8459  1.6000  54  36 0 0.55 0 0
i "GM_Rock_Organ"  133.8459  1.6000  55  36 0 0.55 0 0
i "GM_Rock_Organ"  133.8459  1.6000  59  36 0 0.55 0 0
i "GM_Rock_Organ"  133.8459  1.6000  62  32 0 0.55 0 0
i "GM_Standard_Kit"  133.8459  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  133.8459  0.1200  42  51 0 0.35 0 0
i "GM_Tuba"  133.8459  0.3833  31  89 0 0.73 0 0
i "GM_Standard_Kit"  134.0543  0.1200  42  32 0 0.35 0 0
i "GM_Standard_Kit"  134.2626  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  134.2626  0.1800  38  67 0 0.48 0 0
i "GM_Standard_Kit"  134.2626  0.1200  42  46 0 0.35 0 0
i "GM_Tuba"  134.2626  0.3833  31  90 0 0.73 0 0
i "GM_Acoustic_Grand_Piano"  134.2636  0.2292  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  134.2642  0.2292  55  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  134.2647  0.2292  59  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  134.2658  0.2292  54  52 0 0.38 0 0
i "GM_Standard_Kit"  134.4709  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  134.4709  0.1200  42  32 0 0.35 0 0
i "GM_Tuba"  134.4709  0.1875  33  78 0 0.73 0 0
i "GM_Standard_Kit"  134.6793  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"  134.6793  0.1200  42  50 0 0.35 0 0
i "GM_Tuba"  134.6793  0.3833  31  89 0 0.73 0 0
i "GM_Acoustic_Grand_Piano"  134.6815  0.2292  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  134.6819  0.2292  59  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  134.6838  0.2292  55  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  134.6844  0.2292  54  57 0 0.38 0 0
i "GM_Standard_Kit"  134.8876  0.1200  42  32 0 0.35 0 0
i "GM_Tuba"  134.8876  0.1875  30  80 0 0.73 0 0
i "GM_Standard_Kit"  135.0959  0.1200  42  34 0 0.35 0 0
i "GM_Standard_Kit"  135.3043  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"  135.3043  0.1800  38  70 0 0.48 0 0
i "GM_Standard_Kit"  135.3043  0.1200  42  49 0 0.35 0 0
i "GM_Tuba"  135.3043  0.1917  31  90 0 0.73 0 0
i "GM_Tuba"  135.3043  0.1875  29  88 0 0.73 0 0
i "GM_Electric_Bass_finger"  135.5126  0.3833  30  79 0 0.50 0 0
i "GM_Muted_Trumpet"  135.5126  0.1875  59  97 0 0.34 0 0
i "GM_Standard_Kit"  135.5126  0.2200  36  60 0 0.50 0 0
i "GM_Standard_Kit"  135.5126  0.1200  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"  135.7209  0.3750  28  71 0 0.50 0 0
i "GM_Muted_Trumpet"  135.7209  0.3750  57  86 0 0.34 0 0
i "GM_Standard_Kit"  135.7209  0.1200  42  35 0 0.35 0 0
i "GM_Standard_Kit"  135.9293  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  136.1376  0.3833  30  79 0 0.50 0 0
i "GM_Standard_Kit"  136.1376  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  136.1376  0.1800  38  69 0 0.48 0 0
i "GM_Standard_Kit"  136.1376  0.1200  42  50 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  136.1411  0.2292  63  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  136.1423  0.2292  57  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  136.1424  0.2292  59  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  136.1433  0.2292  54  59 0 0.38 0 0
i "GM_Electric_Bass_finger"  136.3459  0.3750  28  70 0 0.50 0 0
i "GM_Muted_Trumpet"  136.3459  0.3750  59  91 0 0.34 0 0
i "GM_Standard_Kit"  136.3459  0.1200  42  32 0 0.35 0 0
i "GM_Standard_Kit"  136.5543  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  136.7626  0.3833  30  82 0 0.50 0 0
i "GM_Muted_Trumpet"  136.7626  0.3750  59 100 0 0.34 0 0
i "GM_Standard_Kit"  136.7626  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  136.7626  0.1200  42  47 0 0.35 0 0
i "GM_Standard_Kit"  136.9709  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  137.1793  0.3833  30  84 0 0.50 0 0
i "GM_Muted_Trumpet"  137.1793  0.3750  59  95 0 0.34 0 0
i "GM_Standard_Kit"  137.1793  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  137.1793  0.1800  38  73 0 0.48 0 0
i "GM_Standard_Kit"  137.1793  0.1200  42  47 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  137.1803  0.2292  59  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  137.1804  0.2292  63  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  137.1829  0.2292  57  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  137.1851  0.2292  54  54 0 0.38 0 0
i "GM_Electric_Bass_finger"  137.3876  0.1875  32  69 0 0.50 0 0
i "GM_Standard_Kit"  137.3876  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  137.5959  0.3833  30  81 0 0.50 0 0
i "GM_Standard_Kit"  137.5959  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"  137.5959  0.1200  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  137.5960  0.2292  57  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  137.5966  0.2292  59  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  137.5968  0.2292  63  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  137.6015  0.2292  54  52 0 0.38 0 0
i "GM_Electric_Bass_finger"  137.8043  0.1875  30  73 0 0.50 0 0
i "GM_Muted_Trumpet"  137.8043  0.1875  60  90 0 0.34 0 0
i "GM_Standard_Kit"  137.8043  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  138.0126  0.3833  28  79 0 0.50 0 0
i "GM_French_Horn"  138.0126  0.5625  59  95 0 0.52 0 0
i "GM_Standard_Kit"  138.0126  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  138.0126  0.1200  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"  138.2209  0.1875  30  68 0 0.50 0 0
i "GM_Standard_Kit"  138.2209  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  138.4293  0.1875  28  67 0 0.50 0 0
i "GM_Standard_Kit"  138.4293  0.1200  42  31 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  138.4304  0.2292  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  138.4331  0.2292  52  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  138.4332  0.2292  59  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  138.4351  0.2292  55  60 0 0.38 0 0
i "GM_Electric_Bass_finger"  138.6376  0.3833  28  85 0 0.50 0 0
i "GM_French_Horn"  138.6376  0.1875  55 102 0 0.52 0 0
i "GM_Standard_Kit"  138.6376  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  138.6376  0.1800  38  72 0 0.48 0 0
i "GM_Standard_Kit"  138.6376  0.1200  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"  138.8459  0.3750  38  70 0 0.50 0 0
i "GM_French_Horn"  138.8459  0.7500  54  90 0 0.52 0 0
i "GM_Standard_Kit"  138.8459  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"  139.0543  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  139.2626  0.1875  40  73 0 0.50 0 0
i "GM_Standard_Kit"  139.2626  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  139.4709  0.1875  38  73 0 0.50 0 0
i "GM_Standard_Kit"  139.4709  0.1200  46  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  139.6793  0.3833  40  85 0 0.50 0 0
i "GM_Standard_Kit"  139.6793  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  139.6793  0.1200  42  50 0 0.35 0 0
i "GM_Brass_Section"  139.8876  0.3750  55  92 0 0.71 0 0
i "GM_Electric_Bass_finger"  139.8876  0.3750  41  70 0 0.50 0 0
i "GM_Standard_Kit"  139.8876  0.1200  42  33 0 0.35 0 0
i "GM_Standard_Kit"  140.0959  0.1200  46  33 0 0.35 0 0
i "GM_Brass_Section"  140.3043  0.9375  57  96 0 0.71 0 0
i "GM_Electric_Bass_finger"  140.3043  0.3833  40  85 0 0.50 0 0
i "GM_Standard_Kit"  140.3043  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"  140.3043  0.1800  38  69 0 0.48 0 0
i "GM_Standard_Kit"  140.3043  0.1200  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  140.3077  0.2292  55  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  140.3088  0.2292  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  140.3090  0.2292  52  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  140.3102  0.2292  57  54 0 0.38 0 0
i "GM_Electric_Bass_finger"  140.5126  0.3750  41  68 0 0.50 0 0
i "GM_Standard_Kit"  140.5126  0.1200  42  32 0 0.35 0 0
i "GM_Standard_Kit"  140.7209  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  140.9293  0.3750  43  72 0 0.50 0 0
i "GM_Standard_Kit"  140.9293  0.1200  42  33 0 0.35 0 0
i "GM_Standard_Kit"  141.1376  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  141.3459  0.3833  42  79 0 0.50 0 0
i "GM_Rock_Organ"  141.3459  1.6000  54  34 0 0.55 0 0
i "GM_Rock_Organ"  141.3459  1.6000  57  34 0 0.55 0 0
i "GM_Rock_Organ"  141.3459  1.6000  59  32 0 0.55 0 0
i "GM_Rock_Organ"  141.3459  1.6000  63  34 0 0.55 0 0
i "GM_Standard_Kit"  141.3459  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  141.3459  0.1200  42  51 0 0.35 0 0
i "GM_SynthBrass_1"  141.3459  0.3750  57  95 0 0.32 0 0
i "GM_Acoustic_Grand_Piano"  141.3470  0.2292  54  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  141.3472  0.2292  59  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  141.3478  0.2292  57  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  141.3481  0.2292  63  53 0 0.38 0 0
i "GM_Electric_Bass_finger"  141.5543  0.1875  44  72 0 0.50 0 0
i "GM_Standard_Kit"  141.5543  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  141.7626  0.3833  42  85 0 0.50 0 0
i "GM_Standard_Kit"  141.7626  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  141.7626  0.1800  38  72 0 0.48 0 0
i "GM_Standard_Kit"  141.7626  0.1200  42  46 0 0.35 0 0
i "GM_SynthBrass_1"  141.7626  0.5625  57 100 0 0.32 0 0
i "GM_Acoustic_Grand_Piano"  141.7648  0.2292  54  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  141.7660  0.2292  63  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  141.7673  0.2292  57  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  141.7683  0.2292  59  56 0 0.38 0 0
i "GM_Standard_Kit"  141.9709  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  142.1793  0.1875  40  67 0 0.50 0 0
i "GM_Standard_Kit"  142.1793  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  142.3876  0.3833  42  81 0 0.50 0 0
i "GM_Standard_Kit"  142.3876  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"  142.3876  0.1200  42  47 0 0.35 0 0
i "GM_SynthBrass_1"  142.3876  0.3750  54  95 0 0.32 0 0
i "GM_Acoustic_Grand_Piano"  142.3881  0.2292  63  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  142.3886  0.2292  54  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  142.3905  0.2292  57  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  142.3934  0.2292  59  57 0 0.38 0 0
i "GM_Electric_Bass_finger"  142.5959  0.1875  40  67 0 0.50 0 0
i "GM_Standard_Kit"  142.5959  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"  142.8043  0.1917  42  82 0 0.50 0 0
i "GM_Standard_Kit"  142.8043  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  142.8043  0.1800  38  73 0 0.48 0 0
i "GM_Standard_Kit"  142.8043  0.1200  42  51 0 0.35 0 0
i "GM_SynthBrass_1"  142.8043  0.1875  57  96 0 0.32 0 0
i "GM_Acoustic_Grand_Piano"  142.8056  0.2292  59  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  142.8056  0.2292  57  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  142.8059  0.2292  63  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  142.8060  0.2292  54  60 0 0.38 0 0
i "GM_Electric_Bass_finger"  143.0126  0.3833  40  83 0 0.50 0 0
i "GM_Standard_Kit"  143.0126  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"  143.0126  0.1200  42  49 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  143.0128  0.2292  52  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  143.0136  0.2292  62  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  143.0145  0.2292  59  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  143.0174  0.2292  55  59 0 0.38 0 0
i "GM_Electric_Bass_finger"  143.2209  0.3750  38  73 0 0.50 0 0
i "GM_Standard_Kit"  143.2209  0.1200  42  35 0 0.35 0 0
i "GM_SynthBrass_2"  143.2209  0.5625  55  89 0 0.50 0 0
i "GM_Standard_Kit"  143.4293  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  143.6376  0.1875  40  70 0 0.50 0 0
i "GM_Standard_Kit"  143.6376  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  143.8459  0.3833  40  82 0 0.50 0 0
i "GM_Standard_Kit"  143.8459  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  143.8459  0.1800  38  67 0 0.48 0 0
i "GM_Standard_Kit"  143.8459  0.1200  42  48 0 0.35 0 0
i "GM_SynthBrass_2"  143.8459  0.5625  55  95 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  143.8464  0.2292  52  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  143.8466  0.2292  59  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  143.8472  0.2292  55  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  143.8497  0.2292  62  53 0 0.38 0 0
i "GM_Electric_Bass_finger"  144.0543  0.3750  38  70 0 0.50 0 0
i "GM_Standard_Kit"  144.0543  0.1200  42  33 0 0.35 0 0
i "GM_Standard_Kit"  144.2626  0.1200  42  34 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  144.2631  0.2292  59  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  144.2637  0.2292  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  144.2643  0.2292  52  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  144.2670  0.2292  55  55 0 0.38 0 0
i "GM_Electric_Bass_finger"  144.4709  0.3833  40  83 0 0.50 0 0
i "GM_Standard_Kit"  144.4709  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  144.4709  0.1200  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"  144.6793  0.3750  38  70 0 0.50 0 0
i "GM_Standard_Kit"  144.6793  0.1200  42  32 0 0.35 0 0
i "GM_SynthBrass_2"  144.6793  0.3750  54  89 0 0.50 0 0
i "GM_Standard_Kit"  144.8876  0.1200  42  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  144.8878  0.2292  60  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  144.8893  0.2292  52  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  144.8904  0.2292  55  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  144.8910  0.2292  59  58 0 0.38 0 0
i "GM_Electric_Bass_finger"  145.0959  0.3833  36  79 0 0.50 0 0
i "GM_Standard_Kit"  145.0959  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  145.0959  0.1800  38  69 0 0.48 0 0
i "GM_Standard_Kit"  145.0959  0.1200  42  46 0 0.35 0 0
i "GM_Standard_Kit"  145.0959  0.1500  50  77 0 0.40 0 0
i "GM_SynthBrass_2"  145.0959  0.3750  55  98 0 0.50 0 0
i "GM_Electric_Bass_finger"  145.3043  0.1875  36  69 0 0.50 0 0
i "GM_Standard_Kit"  145.3043  0.1200  42  34 0 0.35 0 0
i "GM_Standard_Kit"  145.3043  0.1500  48  77 0 0.43 0 0
i "GM_Acoustic_Grand_Piano"  145.3043  0.2292  60  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  145.3078  0.2292  52  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  145.3083  0.2292  55  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  145.3090  0.2292  59  56 0 0.38 0 0
i "GM_Electric_Bass_finger"  145.5126  0.3833  36  79 0 0.50 0 0
i "GM_Standard_Kit"  145.5126  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  145.5126  0.1200  42  48 0 0.35 0 0
i "GM_Standard_Kit"  145.5126  0.1500  47  76 0 0.46 0 0
i "GM_SynthBrass_2"  145.5126  0.3750  59 102 0 0.50 0 0
i "GM_Electric_Bass_finger"  145.7209  0.1875  36  73 0 0.50 0 0
i "GM_Standard_Kit"  145.7209  0.1200  42  32 0 0.35 0 0
i "GM_Standard_Kit"  145.7209  0.1500  45  74 0 0.49 0 0
i "GM_Electric_Bass_finger"  145.9293  0.3750  36  71 0 0.50 0 0
i "GM_Standard_Kit"  145.9293  0.1200  42  34 0 0.35 0 0
i "GM_Standard_Kit"  145.9293  0.1500  43  79 0 0.52 0 0
i "GM_SynthBrass_2"  145.9293  0.3750  60  93 0 0.50 0 0
i "GM_Standard_Kit"  146.1376  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"  146.1376  0.1500  41  75 0 0.55 0 0
i "GM_Standard_Kit"  146.1376  0.2000  49  82 0 0.70 0 0
i "GM_Alto_Sax"  146.3459  0.2212  71  62 0 0.62 0 0
i "GM_Slap_Bass_1"  146.3459  0.3538  36  82 0 0.50 0 0
i "GM_Soprano_Sax"  146.3459  0.1731  60  99 0 0.68 0 0
i "GM_Standard_Kit"  146.3459  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"  146.3459  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  146.3459  0.2200  51  46 0 0.70 0 0
i "GM_Standard_Kit"  146.3459  0.5000  49  86 0 0.72 0 0
i "GM_Tenor_Sax"  146.3459  0.2212  55  62 0 0.35 0 0
i "GM_Trombone"  146.3459  0.2212  60  56 0 0.28 0 0
i "GM_Trumpet"  146.3459  0.2212  76  58 0 0.72 0 0
i "GM_Electric_Piano_1"  146.3483  0.2115  55  57 0 0.42 0 0
i "GM_Electric_Piano_1"  146.3502  0.2115  60  58 0 0.42 0 0
i "GM_Electric_Piano_1"  146.3505  0.2115  52  58 0 0.42 0 0
i "GM_Electric_Piano_1"  146.3506  0.2115  59  53 0 0.42 0 0
i "GM_Slap_Bass_1"  146.5382  0.3462  38  72 0 0.50 0 0
i "GM_Soprano_Sax"  146.5382  0.3462  59  92 0 0.68 0 0
i "GM_Standard_Kit"  146.5382  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"  146.7305  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  146.7305  0.1200  42  38 0 0.35 0 0
i "GM_Alto_Sax"  146.9228  0.2212  71  61 0 0.62 0 0
i "GM_Slap_Bass_1"  146.9228  0.3538  36  80 0 0.50 0 0
i "GM_Soprano_Sax"  146.9228  0.3462  59 101 0 0.68 0 0
i "GM_Standard_Kit"  146.9228  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  146.9228  0.1800  38  76 0 0.48 0 0
i "GM_Standard_Kit"  146.9228  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  146.9228  0.2200  51  44 0 0.70 0 0
i "GM_Tenor_Sax"  146.9228  0.2212  55  55 0 0.35 0 0
i "GM_Trombone"  146.9228  0.2212  60  59 0 0.28 0 0
i "GM_Trumpet"  146.9228  0.2212  76  60 0 0.72 0 0
i "GM_Electric_Piano_1"  146.9234  0.2115  55  55 0 0.42 0 0
i "GM_Electric_Piano_1"  146.9237  0.2115  60  59 0 0.42 0 0
i "GM_Electric_Piano_1"  146.9245  0.2115  52  52 0 0.42 0 0
i "GM_Electric_Piano_1"  146.9246  0.2115  59  53 0 0.42 0 0
i "GM_Slap_Bass_1"  147.1152  0.1731  35  71 0 0.50 0 0
i "GM_Standard_Kit"  147.1152  0.1200  42  41 0 0.35 0 0
i "GM_Slap_Bass_1"  147.3075  0.3538  36  80 0 0.50 0 0
i "GM_Soprano_Sax"  147.3075  0.5192  59  99 0 0.68 0 0
i "GM_Standard_Kit"  147.3075  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  147.3075  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  147.3075  0.2200  51  44 0 0.70 0 0
i "GM_Electric_Piano_1"  147.3080  0.2115  60  58 0 0.42 0 0
i "GM_Electric_Piano_1"  147.3083  0.2115  52  55 0 0.42 0 0
i "GM_Electric_Piano_1"  147.3111  0.2115  55  54 0 0.42 0 0
i "GM_Electric_Piano_1"  147.3112  0.2115  59  56 0 0.42 0 0
i "GM_Slap_Bass_1"  147.4998  0.3462  35  69 0 0.50 0 0
i "GM_Standard_Kit"  147.4998  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"  147.6921  0.1200  46  40 0 0.35 0 0
i "GM_Alto_Sax"  147.8844  0.2212  69  55 0 0.62 0 0
i "GM_Alto_Sax"  147.8844  0.3462  60 102 0 0.30 0 0
i "GM_Slap_Bass_1"  147.8844  0.3538  33  80 0 0.50 0 0
i "GM_Standard_Kit"  147.8844  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  147.8844  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  147.8844  0.2200  51  46 0 0.70 0 0
i "GM_Tenor_Sax"  147.8844  0.2212  55  59 0 0.35 0 0
i "GM_Trombone"  147.8844  0.2212  60  60 0 0.28 0 0
i "GM_Trumpet"  147.8844  0.2212  76  56 0 0.72 0 0
i "GM_Electric_Piano_1"  147.8845  0.2115  64  58 0 0.42 0 0
i "GM_Electric_Piano_1"  147.8848  0.2115  57  59 0 0.42 0 0
i "GM_Electric_Piano_1"  147.8870  0.2115  55  60 0 0.42 0 0
i "GM_Electric_Piano_1"  147.8900  0.2115  60  56 0 0.42 0 0
i "GM_Slap_Bass_1"  148.0767  0.1731  33  71 0 0.50 0 0
i "GM_Standard_Kit"  148.0767  0.1200  42  41 0 0.35 0 0
i "GM_Electric_Piano_1"  148.0767  0.2115  60  60 0 0.42 0 0
i "GM_Electric_Piano_1"  148.0770  0.2115  64  59 0 0.42 0 0
i "GM_Electric_Piano_1"  148.0775  0.2115  57  53 0 0.42 0 0
i "GM_Electric_Piano_1"  148.0817  0.2115  55  53 0 0.42 0 0
i "GM_Alto_Sax"  148.2690  0.2212  69  57 0 0.62 0 0
i "GM_Slap_Bass_1"  148.2690  0.3538  33  85 0 0.50 0 0
i "GM_Standard_Kit"  148.2690  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"  148.2690  0.1800  38  81 0 0.48 0 0
i "GM_Standard_Kit"  148.2690  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  148.2690  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  148.2690  0.2212  55  59 0 0.35 0 0
i "GM_Trombone"  148.2690  0.2212  60  58 0 0.28 0 0
i "GM_Trumpet"  148.2690  0.2212  76  61 0 0.72 0 0
i "GM_Alto_Sax"  148.4613  0.3462  62  87 0 0.30 0 0
i "GM_Slap_Bass_1"  148.4613  0.1731  35  67 0 0.50 0 0
i "GM_Standard_Kit"  148.4613  0.1200  42  37 0 0.35 0 0
i "GM_Standard_Kit"  148.6536  0.1200  42  40 0 0.35 0 0
i "GM_Alto_Sax"  148.8459  0.5192  60  98 0 0.30 0 0
i "GM_Slap_Bass_1"  148.8459  0.3538  33  80 0 0.50 0 0
i "GM_Standard_Kit"  148.8459  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"  148.8459  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  148.8459  0.2200  51  44 0 0.70 0 0
i "GM_Electric_Piano_1"  148.8488  0.2115  57  52 0 0.42 0 0
i "GM_Electric_Piano_1"  148.8495  0.2115  55  54 0 0.42 0 0
i "GM_Electric_Piano_1"  148.8507  0.2115  64  52 0 0.42 0 0
i "GM_Electric_Piano_1"  148.8508  0.2115  60  55 0 0.42 0 0
i "GM_Slap_Bass_1"  149.0382  0.1731  31  72 0 0.50 0 0
i "GM_Standard_Kit"  149.0382  0.1200  42  37 0 0.35 0 0
i "GM_Slap_Bass_1"  149.2305  0.1731  33  67 0 0.50 0 0
i "GM_Standard_Kit"  149.2305  0.1200  42  40 0 0.35 0 0
i "GM_Alto_Sax"  149.4228  0.2212  72  57 0 0.62 0 0
i "GM_Slap_Bass_1"  149.4228  0.3538  30  85 0 0.50 0 0
i "GM_Standard_Kit"  149.4228  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"  149.4228  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  149.4228  0.2200  51  45 0 0.70 0 0
i "GM_Tenor_Sax"  149.4228  0.2212  57  56 0 0.35 0 0
i "GM_Tenor_Sax"  149.4228  0.5192  60 101 0 0.48 0 0
i "GM_Trombone"  149.4228  0.2212  64  59 0 0.28 0 0
i "GM_Trumpet"  149.4228  0.2212  78  56 0 0.72 0 0
i "GM_Slap_Bass_1"  149.6152  0.1731  28  70 0 0.50 0 0
i "GM_Standard_Kit"  149.6152  0.1200  42  41 0 0.35 0 0
i "GM_Slap_Bass_1"  149.8075  0.1731  38  71 0 0.50 0 0
i "GM_Standard_Kit"  149.8075  0.1200  46  40 0 0.35 0 0
i "GM_Slap_Bass_1"  149.9998  0.3538  37  85 0 0.50 0 0
i "GM_Standard_Kit"  149.9998  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"  149.9998  0.1800  38  82 0 0.48 0 0
i "GM_Standard_Kit"  149.9998  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  149.9998  0.2200  51  44 0 0.70 0 0
i "GM_Tenor_Sax"  149.9998  0.1731  57  96 0 0.48 0 0
i "GM_Electric_Piano_1"  150.0008  0.2115  60  55 0 0.42 0 0
i "GM_Electric_Piano_1"  150.0010  0.2115  64  58 0 0.42 0 0
i "GM_Electric_Piano_1"  150.0038  0.2115  57  57 0 0.42 0 0
i "GM_Electric_Piano_1"  150.0047  0.2115  54  59 0 0.42 0 0
i "GM_Slap_Bass_1"  150.1921  0.1731  36  68 0 0.50 0 0
i "GM_Standard_Kit"  150.1921  0.1200  42  38 0 0.35 0 0
i "GM_Tenor_Sax"  150.1921  0.3462  59  92 0 0.48 0 0
i "GM_Standard_Kit"  150.3844  0.1200  46  40 0 0.35 0 0
i "GM_Alto_Sax"  150.5767  0.2212  72  60 0 0.62 0 0
i "GM_Slap_Bass_1"  150.5767  0.3538  37  85 0 0.50 0 0
i "GM_Standard_Kit"  150.5767  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"  150.5767  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  150.5767  0.2200  51  49 0 0.70 0 0
i "GM_Tenor_Sax"  150.5767  0.2212  57  55 0 0.35 0 0
i "GM_Trombone"  150.5767  0.2212  64  58 0 0.28 0 0
i "GM_Trumpet"  150.5767  0.2212  78  58 0 0.72 0 0
i "GM_Slap_Bass_1"  150.7690  0.1731  36  72 0 0.50 0 0
i "GM_Standard_Kit"  150.7690  0.1200  42  41 0 0.35 0 0
i "GM_Tenor_Sax"  150.7690  0.1731  58  90 0 0.48 0 0
i "GM_Baritone_Sax"  150.9613  0.3538  42  93 0 0.66 0 0
i "GM_Standard_Kit"  150.9613  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  150.9613  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  150.9613  0.2200  51  44 0 0.70 0 0
i "GM_Baritone_Sax"  151.1536  0.3462  42  76 0 0.66 0 0
i "GM_Standard_Kit"  151.1536  0.1200  42  41 0 0.35 0 0
i "GM_Standard_Kit"  151.3459  0.1200  42  41 0 0.35 0 0
i "GM_Electric_Piano_1"  151.3465  0.2115  66  54 0 0.42 0 0
i "GM_Electric_Piano_1"  151.3470  0.2115  57  54 0 0.42 0 0
i "GM_Electric_Piano_1"  151.3471  0.2115  59  53 0 0.42 0 0
i "GM_Electric_Piano_1"  151.3500  0.2115  63  53 0 0.42 0 0
i "GM_Alto_Sax"  151.5382  0.2212  71  55 0 0.62 0 0
i "GM_Baritone_Sax"  151.5382  0.3538  42  89 0 0.66 0 0
i "GM_Standard_Kit"  151.5382  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"  151.5382  0.1800  38  82 0 0.48 0 0
i "GM_Standard_Kit"  151.5382  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  151.5382  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  151.5382  0.2212  57  55 0 0.35 0 0
i "GM_Trombone"  151.5382  0.2212  63  61 0 0.28 0 0
i "GM_Trumpet"  151.5382  0.2212  78  60 0 0.72 0 0
i "GM_Baritone_Sax"  151.7305  0.1731  44  78 0 0.66 0 0
i "GM_Standard_Kit"  151.7305  0.1200  42  36 0 0.35 0 0
i "GM_Baritone_Sax"  151.9228  0.1731  42  77 0 0.66 0 0
i "GM_Standard_Kit"  151.9228  0.1200  46  38 0 0.35 0 0
i "GM_Alto_Sax"  152.1152  0.2212  71  60 0 0.62 0 0
i "GM_Baritone_Sax"  152.1152  0.3538  42  91 0 0.66 0 0
i "GM_Standard_Kit"  152.1152  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  152.1152  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  152.1152  0.2200  51  49 0 0.70 0 0
i "GM_Tenor_Sax"  152.1152  0.2212  57  58 0 0.35 0 0
i "GM_Trombone"  152.1152  0.2212  63  59 0 0.28 0 0
i "GM_Trumpet"  152.1152  0.2212  78  57 0 0.72 0 0
i "GM_Electric_Piano_1"  152.1160  0.2115  57  56 0 0.42 0 0
i "GM_Electric_Piano_1"  152.1164  0.2115  66  57 0 0.42 0 0
i "GM_Electric_Piano_1"  152.1187  0.2115  63  58 0 0.42 0 0
i "GM_Electric_Piano_1"  152.1190  0.2115  59  58 0 0.42 0 0
i "GM_Baritone_Sax"  152.3075  0.3462  44  77 0 0.66 0 0
i "GM_Standard_Kit"  152.3075  0.1200  42  41 0 0.35 0 0
i "GM_Standard_Kit"  152.4998  0.1200  42  38 0 0.35 0 0
i "GM_Electric_Piano_1"  152.5009  0.2115  59  58 0 0.42 0 0
i "GM_Electric_Piano_1"  152.5011  0.2115  63  53 0 0.42 0 0
i "GM_Electric_Piano_1"  152.5031  0.2115  66  55 0 0.42 0 0
i "GM_Electric_Piano_1"  152.5047  0.2115  57  53 0 0.42 0 0
i "GM_Alto_Sax"  152.6921  0.2212  71  59 0 0.62 0 0
i "GM_Baritone_Sax"  152.6921  0.3538  42  93 0 0.66 0 0
i "GM_Baritone_Sax"  152.6921  0.1731  39  88 0 0.66 0 0
i "GM_Standard_Kit"  152.6921  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"  152.6921  0.1800  38  78 0 0.48 0 0
i "GM_Standard_Kit"  152.6921  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  152.6921  0.2200  51  46 0 0.70 0 0
i "GM_Tenor_Sax"  152.6921  0.2212  57  61 0 0.35 0 0
i "GM_Trombone"  152.6921  0.2212  63  61 0 0.28 0 0
i "GM_Trumpet"  152.6921  0.2212  78  56 0 0.72 0 0
i "GM_Baritone_Sax"  152.8844  0.1731  44  77 0 0.66 0 0
i "GM_Standard_Kit"  152.8844  0.1200  42  39 0 0.35 0 0
i "GM_Baritone_Sax"  153.0767  0.1731  42  79 0 0.66 0 0
i "GM_Standard_Kit"  153.0767  0.1200  42  40 0 0.35 0 0
i "GM_Oboe"  153.2690  0.3462  59 103 0 0.28 0 0
i "GM_Slap_Bass_1"  153.2690  0.3538  40  79 0 0.50 0 0
i "GM_Standard_Kit"  153.2690  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"  153.2690  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  153.2690  0.2200  51  49 0 0.70 0 0
i "GM_Slap_Bass_1"  153.4613  0.1731  40  73 0 0.50 0 0
i "GM_Standard_Kit"  153.4613  0.1200  42  39 0 0.35 0 0
i "GM_Electric_Piano_1"  153.4615  0.2115  59  55 0 0.42 0 0
i "GM_Electric_Piano_1"  153.4616  0.2115  62  59 0 0.42 0 0
i "GM_Electric_Piano_1"  153.4639  0.2115  55  58 0 0.42 0 0
i "GM_Electric_Piano_1"  153.4652  0.2115  64  59 0 0.42 0 0
i "GM_Oboe"  153.6536  0.5192  59  98 0 0.28 0 0
i "GM_Slap_Bass_1"  153.6536  0.3538  40  79 0 0.50 0 0
i "GM_Standard_Kit"  153.6536  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"  153.6536  0.1800  38  76 0 0.48 0 0
i "GM_Standard_Kit"  153.6536  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  153.6536  0.2200  51  48 0 0.70 0 0
i "GM_Slap_Bass_1"  153.8459  0.3462  40  70 0 0.50 0 0
i "GM_Standard_Kit"  153.8459  0.1200  42  39 0 0.35 0 0
i "GM_Standard_Kit"  154.0382  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"  154.0382  0.1200  42  37 0 0.35 0 0
i "GM_Oboe"  154.2305  0.3462  62 103 0 0.28 0 0
i "GM_Slap_Bass_1"  154.2305  0.3538  40  84 0 0.50 0 0
i "GM_Standard_Kit"  154.2305  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"  154.2305  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  154.2305  0.2200  51  44 0 0.70 0 0
i "GM_Electric_Piano_1"  154.2310  0.2115  59  57 0 0.42 0 0
i "GM_Electric_Piano_1"  154.2330  0.2115  62  55 0 0.42 0 0
i "GM_Electric_Piano_1"  154.2354  0.2115  55  60 0 0.42 0 0
i "GM_Electric_Piano_1"  154.2356  0.2115  64  55 0 0.42 0 0
i "GM_Standard_Kit"  154.4228  0.1200  42  38 0 0.35 0 0
i "GM_Oboe"  154.6152  0.1731  59  99 0 0.28 0 0
i "GM_Slap_Bass_1"  154.6152  0.1769  40  85 0 0.50 0 0
i "GM_Standard_Kit"  154.6152  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"  154.6152  0.1800  38  83 0 0.48 0 0
i "GM_Standard_Kit"  154.6152  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  154.6152  0.2200  51  49 0 0.70 0 0
i "GM_Alto_Sax"  154.8075  0.2212  71  55 0 0.62 0 0
i "GM_English_Horn"  154.8075  0.3462  59 102 0 0.46 0 0
i "GM_Slap_Bass_1"  154.8075  0.3538  38  81 0 0.50 0 0
i "GM_Standard_Kit"  154.8075  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"  154.8075  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  154.8075  0.2200  51  44 0 0.70 0 0
i "GM_Tenor_Sax"  154.8075  0.2212  55  62 0 0.35 0 0
i "GM_Trombone"  154.8075  0.2212  62  60 0 0.28 0 0
i "GM_Trumpet"  154.8075  0.2212  78  55 0 0.72 0 0
i "GM_Slap_Bass_1"  154.9998  0.1731  38  73 0 0.50 0 0
i "GM_Standard_Kit"  154.9998  0.1200  42  36 0 0.35 0 0
i "GM_Alto_Sax"  155.1921  0.2212  71  61 0 0.62 0 0
i "GM_English_Horn"  155.1921  0.1731  55  96 0 0.46 0 0
i "GM_Slap_Bass_1"  155.1921  0.3538  38  84 0 0.50 0 0
i "GM_Standard_Kit"  155.1921  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"  155.1921  0.1800  38  76 0 0.48 0 0
i "GM_Standard_Kit"  155.1921  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  155.1921  0.2200  51  44 0 0.70 0 0
i "GM_Tenor_Sax"  155.1921  0.2212  55  59 0 0.35 0 0
i "GM_Trombone"  155.1921  0.2212  62  59 0 0.28 0 0
i "GM_Trumpet"  155.1921  0.2212  78  59 0 0.72 0 0
i "GM_English_Horn"  155.3844  0.3462  54  94 0 0.46 0 0
i "GM_Standard_Kit"  155.3844  0.1200  42  39 0 0.35 0 0
i "GM_Slap_Bass_1"  155.5767  0.1731  40  71 0 0.50 0 0
i "GM_Standard_Kit"  155.5767  0.1200  46  37 0 0.35 0 0
i "GM_Alto_Sax"  155.7690  0.2212  72  58 0 0.62 0 0
i "GM_English_Horn"  155.7690  0.1731  53  96 0 0.46 0 0
i "GM_Slap_Bass_1"  155.7690  0.3538  38  79 0 0.50 0 0
i "GM_Standard_Kit"  155.7690  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"  155.7690  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  155.7690  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  155.7690  0.2212  57  60 0 0.35 0 0
i "GM_Trombone"  155.7690  0.2212  62  55 0 0.28 0 0
i "GM_Trumpet"  155.7690  0.2212  77  61 0 0.72 0 0
i "GM_Electric_Piano_1"  155.7701  0.2115  65  60 0 0.42 0 0
i "GM_Electric_Piano_1"  155.7712  0.2115  60  60 0 0.42 0 0
i "GM_Electric_Piano_1"  155.7736  0.2115  62  59 0 0.42 0 0
i "GM_Electric_Piano_1"  155.7739  0.2115  57  60 0 0.42 0 0
i "GM_English_Horn"  155.9613  0.3462  55  86 0 0.46 0 0
i "GM_Slap_Bass_1"  155.9613  0.3462  36  73 0 0.50 0 0
i "GM_Standard_Kit"  155.9613  0.1200  42  39 0 0.35 0 0
i "GM_Standard_Kit"  156.1536  0.1200  42  38 0 0.35 0 0
i "GM_Alto_Sax"  156.3459  0.2212  72  59 0 0.62 0 0
i "GM_Bassoon"  156.3459  0.5192  53  95 0 0.64 0 0
i "GM_Slap_Bass_1"  156.3459  0.3538  38  81 0 0.50 0 0
i "GM_Standard_Kit"  156.3459  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"  156.3459  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  156.3459  0.2200  51  46 0 0.70 0 0
i "GM_Tenor_Sax"  156.3459  0.2212  57  59 0 0.35 0 0
i "GM_Trombone"  156.3459  0.2212  62  59 0 0.28 0 0
i "GM_Trumpet"  156.3459  0.2212  77  59 0 0.72 0 0
i "GM_Electric_Piano_1"  156.3472  0.2115  65  53 0 0.42 0 0
i "GM_Electric_Piano_1"  156.3472  0.2115  57  60 0 0.42 0 0
i "GM_Electric_Piano_1"  156.3504  0.2115  60  55 0 0.42 0 0
i "GM_Electric_Piano_1"  156.3505  0.2115  62  56 0 0.42 0 0
i "GM_Slap_Bass_1"  156.5382  0.1731  40  72 0 0.50 0 0
i "GM_Standard_Kit"  156.5382  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"  156.7305  0.1731  38  72 0 0.50 0 0
i "GM_Standard_Kit"  156.7305  0.1200  42  41 0 0.35 0 0
i "GM_Alto_Sax"  156.9228  0.2212  72  59 0 0.62 0 0
i "GM_Slap_Bass_1"  156.9228  0.3538  38  82 0 0.50 0 0
i "GM_Standard_Kit"  156.9228  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"  156.9228  0.1800  38  79 0 0.48 0 0
i "GM_Standard_Kit"  156.9228  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  156.9228  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  156.9228  0.2212  57  58 0 0.35 0 0
i "GM_Trombone"  156.9228  0.2212  62  57 0 0.28 0 0
i "GM_Trumpet"  156.9228  0.2212  77  62 0 0.72 0 0
i "GM_Electric_Piano_1"  156.9254  0.2115  62  60 0 0.42 0 0
i "GM_Electric_Piano_1"  156.9263  0.2115  65  60 0 0.42 0 0
i "GM_Electric_Piano_1"  156.9268  0.2115  57  54 0 0.42 0 0
i "GM_Electric_Piano_1"  156.9273  0.2115  60  60 0 0.42 0 0
i "GM_Bassoon"  157.1152  0.1731  54  89 0 0.64 0 0
i "GM_Slap_Bass_1"  157.1152  0.1731  40  68 0 0.50 0 0
i "GM_Standard_Kit"  157.1152  0.1200  42  37 0 0.35 0 0
i "GM_Electric_Piano_1"  157.1160  0.2115  62  59 0 0.42 0 0
i "GM_Electric_Piano_1"  157.1169  0.2115  60  54 0 0.42 0 0
i "GM_Electric_Piano_1"  157.1178  0.2115  65  52 0 0.42 0 0
i "GM_Electric_Piano_1"  157.1180  0.2115  57  53 0 0.42 0 0
i "GM_Alto_Sax"  157.3075  0.2212  72  57 0 0.62 0 0
i "GM_Slap_Bass_1"  157.3075  0.3538  38  81 0 0.50 0 0
i "GM_Standard_Kit"  157.3075  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"  157.3075  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  157.3075  0.2200  51  46 0 0.70 0 0
i "GM_Tenor_Sax"  157.3075  0.2212  57  62 0 0.35 0 0
i "GM_Trombone"  157.3075  0.2212  62  59 0 0.28 0 0
i "GM_Trumpet"  157.3075  0.2212  77  57 0 0.72 0 0
i "GM_Bassoon"  157.4998  0.3462  53  88 0 0.64 0 0
i "GM_Slap_Bass_1"  157.4998  0.1731  36  68 0 0.50 0 0
i "GM_Standard_Kit"  157.4998  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"  157.6921  0.1731  36  73 0 0.50 0 0
i "GM_Standard_Kit"  157.6921  0.1200  46  40 0 0.35 0 0
i "GM_Alto_Sax"  157.8844  0.2212  71  56 0 0.62 0 0
i "GM_Clarinet"  157.8844  0.1731  53  97 0 0.26 0 0
i "GM_Slap_Bass_1"  157.8844  0.3538  38  79 0 0.50 0 0
i "GM_Standard_Kit"  157.8844  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"  157.8844  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  157.8844  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  157.8844  0.2212  55  62 0 0.35 0 0
i "GM_Trombone"  157.8844  0.2212  62  59 0 0.28 0 0
i "GM_Trumpet"  157.8844  0.2212  77  59 0 0.72 0 0
i "GM_Electric_Piano_1"  157.8873  0.2115  62  60 0 0.42 0 0
i "GM_Electric_Piano_1"  157.8877  0.2115  59  58 0 0.42 0 0
i "GM_Electric_Piano_1"  157.8893  0.2115  65  55 0 0.42 0 0
i "GM_Electric_Piano_1"  157.8898  0.2115  55  59 0 0.42 0 0
i "GM_Clarinet"  158.0767  0.5192  52  90 0 0.26 0 0
i "GM_Slap_Bass_1"  158.0767  0.1731  38  67 0 0.50 0 0
i "GM_Standard_Kit"  158.0767  0.1200  42  37 0 0.35 0 0
i "GM_Slap_Bass_1"  158.2690  0.1731  36  67 0 0.50 0 0
i "GM_Standard_Kit"  158.2690  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"  158.4613  0.1731  38  72 0 0.50 0 0
i "GM_Standard_Kit"  158.4613  0.1200  46  41 0 0.35 0 0
i "GM_Electric_Piano_1"  158.4624  0.2115  55  52 0 0.42 0 0
i "GM_Electric_Piano_1"  158.4630  0.2115  62  56 0 0.42 0 0
i "GM_Electric_Piano_1"  158.4637  0.2115  65  59 0 0.42 0 0
i "GM_Electric_Piano_1"  158.4673  0.2115  59  59 0 0.42 0 0
i "GM_Alto_Sax"  158.6536  0.2212  71  60 0 0.62 0 0
i "GM_Clarinet"  158.6536  0.6923  53 101 0 0.26 0 0
i "GM_Slap_Bass_1"  158.6536  0.3538  38  81 0 0.50 0 0
i "GM_Standard_Kit"  158.6536  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"  158.6536  0.1800  38  83 0 0.48 0 0
i "GM_Standard_Kit"  158.6536  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  158.6536  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  158.6536  0.2212  55  57 0 0.35 0 0
i "GM_Trombone"  158.6536  0.2212  62  61 0 0.28 0 0
i "GM_Trumpet"  158.6536  0.2212  77  60 0 0.72 0 0
i "GM_Slap_Bass_1"  158.8459  0.1731  38  69 0 0.50 0 0
i "GM_Standard_Kit"  158.8459  0.1200  42  41 0 0.35 0 0
i "GM_Slap_Bass_1"  159.0382  0.3462  35  73 0 0.50 0 0
i "GM_Standard_Kit"  159.0382  0.1200  42  41 0 0.35 0 0
i "GM_Standard_Kit"  159.2305  0.1200  42  40 0 0.35 0 0
i "GM_Alto_Sax"  159.4228  0.2212  71  59 0 0.62 0 0
i "GM_Clarinet"  159.4228  0.6923  53 103 0 0.26 0 0
i "GM_Slap_Bass_1"  159.4228  0.3538  38  82 0 0.50 0 0
i "GM_Standard_Kit"  159.4228  0.2200  36  68 0 0.50 0 0
i "GM_Standard_Kit"  159.4228  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  159.4228  0.2200  51  45 0 0.70 0 0
i "GM_Standard_Kit"  159.4228  0.1500  50  76 0 0.40 0 0
i "GM_Tenor_Sax"  159.4228  0.2212  55  55 0 0.35 0 0
i "GM_Trombone"  159.4228  0.2212  62  58 0 0.28 0 0
i "GM_Trumpet"  159.4228  0.2212  77  58 0 0.72 0 0
i "GM_Electric_Piano_1"  159.4230  0.2115  55  56 0 0.42 0 0
i "GM_Electric_Piano_1"  159.4243  0.2115  62  54 0 0.42 0 0
i "GM_Electric_Piano_1"  159.4262  0.2115  65  55 0 0.42 0 0
i "GM_Electric_Piano_1"  159.4268  0.2115  59  56 0 0.42 0 0
i "GM_Slap_Bass_1"  159.6152  0.3462  38  71 0 0.50 0 0
i "GM_Standard_Kit"  159.6152  0.1200  42  41 0 0.35 0 0
i "GM_Standard_Kit"  159.6152  0.1500  48  74 0 0.43 0 0
i "GM_Standard_Kit"  159.8075  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  159.8075  0.1500  47  76 0 0.46 0 0
i "GM_Slap_Bass_1"  159.9998  0.1731  38  72 0 0.50 0 0
i "GM_Standard_Kit"  159.9998  0.1200  46  36 0 0.35 0 0
i "GM_Standard_Kit"  159.9998  0.1500  45  86 0 0.49 0 0
i "GM_Alto_Sax"  160.1921  0.2212  71  59 0 0.62 0 0
i "GM_Clarinet"  160.1921  0.6923  50  96 0 0.26 0 0
i "GM_Slap_Bass_1"  160.1921  0.3538  38  83 0 0.50 0 0
i "GM_Standard_Kit"  160.1921  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"  160.1921  0.1800  38  82 0 0.48 0 0
i "GM_Standard_Kit"  160.1921  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  160.1921  0.2200  51  48 0 0.70 0 0
i "GM_Standard_Kit"  160.1921  0.1500  43  75 0 0.52 0 0
i "GM_Tenor_Sax"  160.1921  0.2212  55  56 0 0.35 0 0
i "GM_Trombone"  160.1921  0.2212  62  58 0 0.28 0 0
i "GM_Trumpet"  160.1921  0.2212  77  56 0 0.72 0 0
i "GM_Electric_Piano_1"  160.1931  0.2115  62  52 0 0.42 0 0
i "GM_Electric_Piano_1"  160.1932  0.2115  55  52 0 0.42 0 0
i "GM_Electric_Piano_1"  160.1933  0.2115  59  52 0 0.42 0 0
i "GM_Electric_Piano_1"  160.1950  0.2115  65  52 0 0.42 0 0
i "GM_Slap_Bass_1"  160.3844  0.1731  41  67 0 0.50 0 0
i "GM_Standard_Kit"  160.3844  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  160.3844  0.1500  41  81 0 0.55 0 0
i "GM_Slap_Bass_1"  160.5767  0.1731  43  71 0 0.50 0 0
i "GM_Standard_Kit"  160.5767  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  160.5767  0.1500  41  86 0 0.58 0 0
i "GM_Slap_Bass_1"  160.7690  0.1731  41  69 0 0.50 0 0
i "GM_Standard_Kit"  160.7690  0.1200  42  41 0 0.35 0 0
i "GM_Standard_Kit"  160.7690  0.1500  41  84 0 0.61 0 0
i "GM_Standard_Kit"  160.7690  0.2000  49  82 0 0.70 0 0
i "GM_Alto_Sax"  160.9613  0.2212  71  58 0 0.62 0 0
i "GM_Slap_Bass_1"  160.9613  0.3538  43  84 0 0.50 0 0
i "GM_Standard_Kit"  160.9613  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"  160.9613  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  160.9613  0.2200  51  45 0 0.70 0 0
i "GM_Standard_Kit"  160.9613  0.5000  49  86 0 0.72 0 0
i "GM_Tenor_Sax"  160.9613  0.2212  55  60 0 0.35 0 0
i "GM_Trombone"  160.9613  0.2212  60  61 0 0.28 0 0
i "GM_Trumpet"  160.9613  0.2212  76  61 0 0.72 0 0
i "GM_Piccolo"  161.1536  0.1827  79  94 0 0.44 0 0
i "GM_Slap_Bass_1"  161.1536  0.1731  40  71 0 0.50 0 0
i "GM_Standard_Kit"  161.1536  0.1200  42  39 0 0.35 0 0
i "GM_Electric_Piano_1"  161.1537  0.2115  59  59 0 0.42 0 0
i "GM_Electric_Piano_1"  161.1551  0.2115  60  55 0 0.42 0 0
i "GM_Electric_Piano_1"  161.1556  0.2115  55  56 0 0.42 0 0
i "GM_Electric_Piano_1"  161.1580  0.2115  64  53 0 0.42 0 0
i "GM_Piccolo"  161.3459  0.3654  79 100 0 0.44 0 0
i "GM_Slap_Bass_1"  161.3459  0.3538  43  80 0 0.50 0 0
i "GM_Standard_Kit"  161.3459  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"  161.3459  0.1800  38  79 0 0.48 0 0
i "GM_Standard_Kit"  161.3459  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  161.3459  0.2200  51  46 0 0.70 0 0
i "GM_Slap_Bass_1"  161.5382  0.1731  40  70 0 0.50 0 0
i "GM_Standard_Kit"  161.5382  0.1200  42  38 0 0.35 0 0
i "GM_Alto_Sax"  161.7305  0.2212  71  56 0 0.62 0 0
i "GM_Slap_Bass_1"  161.7305  0.3538  43  81 0 0.50 0 0
i "GM_Standard_Kit"  161.7305  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"  161.7305  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  161.7305  0.2200  51  49 0 0.70 0 0
i "GM_Tenor_Sax"  161.7305  0.2212  55  60 0 0.35 0 0
i "GM_Trombone"  161.7305  0.2212  60  61 0 0.28 0 0
i "GM_Trumpet"  161.7305  0.2212  76  58 0 0.72 0 0
i "GM_Electric_Piano_1"  161.7326  0.2115  64  60 0 0.42 0 0
i "GM_Electric_Piano_1"  161.7335  0.2115  55  57 0 0.42 0 0
i "GM_Electric_Piano_1"  161.7335  0.2115  59  58 0 0.42 0 0
i "GM_Electric_Piano_1"  161.7356  0.2115  60  57 0 0.42 0 0
i "GM_Piccolo"  161.9228  0.3654  77  90 0 0.44 0 0
i "GM_Slap_Bass_1"  161.9228  0.1731  43  67 0 0.50 0 0
i "GM_Standard_Kit"  161.9228  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"  162.1152  0.1200  42  41 0 0.35 0 0
i "GM_Alto_Sax"  162.3075  0.2212  71  62 0 0.62 0 0
i "GM_Piccolo"  162.3075  0.1827  76  97 0 0.44 0 0
i "GM_Slap_Bass_1"  162.3075  0.1769  43  80 0 0.50 0 0
i "GM_Standard_Kit"  162.3075  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"  162.3075  0.1800  38  83 0 0.48 0 0
i "GM_Standard_Kit"  162.3075  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  162.3075  0.2200  51  46 0 0.70 0 0
i "GM_Tenor_Sax"  162.3075  0.2212  55  56 0 0.35 0 0
i "GM_Trombone"  162.3075  0.2212  60  56 0 0.28 0 0
i "GM_Trumpet"  162.3075  0.2212  76  57 0 0.72 0 0
i "GM_Alto_Sax"  162.4998  0.2212  71  61 0 0.62 0 0
i "GM_Flute"  162.4998  0.1731  76  96 0 0.62 0 0
i "GM_Slap_Bass_1"  162.4998  0.3538  43  79 0 0.50 0 0
i "GM_Standard_Kit"  162.4998  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"  162.4998  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  162.4998  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  162.4998  0.2212  55  60 0 0.35 0 0
i "GM_Trombone"  162.4998  0.2212  60  56 0 0.28 0 0
i "GM_Trumpet"  162.4998  0.2212  76  61 0 0.72 0 0
i "GM_Electric_Piano_1"  162.5000  0.2115  64  53 0 0.42 0 0
i "GM_Electric_Piano_1"  162.5024  0.2115  55  60 0 0.42 0 0
i "GM_Electric_Piano_1"  162.5036  0.2115  60  59 0 0.42 0 0
i "GM_Electric_Piano_1"  162.5056  0.2115  59  57 0 0.42 0 0
i "GM_Flute"  162.6921  0.3462  77  88 0 0.62 0 0
i "GM_Slap_Bass_1"  162.6921  0.3462  43  69 0 0.50 0 0
i "GM_Standard_Kit"  162.6921  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"  162.8844  0.1200  42  37 0 0.35 0 0
i "GM_Electric_Piano_1"  162.8846  0.2115  55  54 0 0.42 0 0
i "GM_Electric_Piano_1"  162.8852  0.2115  64  54 0 0.42 0 0
i "GM_Electric_Piano_1"  162.8871  0.2115  60  59 0 0.42 0 0
i "GM_Electric_Piano_1"  162.8901  0.2115  59  60 0 0.42 0 0
i "GM_Alto_Sax"  163.0767  0.2212  71  58 0 0.62 0 0
i "GM_Flute"  163.0767  0.8654  76 101 0 0.62 0 0
i "GM_Slap_Bass_1"  163.0767  0.3538  43  83 0 0.50 0 0
i "GM_Standard_Kit"  163.0767  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"  163.0767  0.1800  38  79 0 0.48 0 0
i "GM_Standard_Kit"  163.0767  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  163.0767  0.2200  51  45 0 0.70 0 0
i "GM_Tenor_Sax"  163.0767  0.2212  55  55 0 0.35 0 0
i "GM_Trombone"  163.0767  0.2212  60  62 0 0.28 0 0
i "GM_Trumpet"  163.0767  0.2212  76  55 0 0.72 0 0
i "GM_Slap_Bass_1"  163.2690  0.1731  43  71 0 0.50 0 0
i "GM_Standard_Kit"  163.2690  0.1200  42  37 0 0.35 0 0
i "GM_Slap_Bass_1"  163.4613  0.1731  41  72 0 0.50 0 0
i "GM_Standard_Kit"  163.4613  0.1200  42  39 0 0.35 0 0
i "GM_Slap_Bass_1"  163.6536  0.1731  40  69 0 0.50 0 0
i "GM_Standard_Kit"  163.6536  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"  163.8459  0.1731  40  71 0 0.50 0 0
i "GM_Standard_Kit"  163.8459  0.1200  42  38 0 0.35 0 0
i "GM_Alto_Sax"  164.0382  0.2212  69  58 0 0.62 0 0
i "GM_Slap_Bass_1"  164.0382  0.3538  40  83 0 0.50 0 0
i "GM_Standard_Kit"  164.0382  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"  164.0382  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  164.0382  0.2200  51  44 0 0.70 0 0
i "GM_Tenor_Sax"  164.0382  0.2212  55  61 0 0.35 0 0
i "GM_Trombone"  164.0382  0.2212  60  55 0 0.28 0 0
i "GM_Trumpet"  164.0382  0.2212  76  57 0 0.72 0 0
i "GM_Electric_Piano_1"  164.0404  0.2115  55  54 0 0.42 0 0
i "GM_Electric_Piano_1"  164.0409  0.2115  57  56 0 0.42 0 0
i "GM_Electric_Piano_1"  164.0409  0.2115  64  53 0 0.42 0 0
i "GM_Electric_Piano_1"  164.0423  0.2115  60  57 0 0.42 0 0
i "GM_Recorder"  164.2305  0.3462  76  88 0 0.23 0 0
i "GM_Slap_Bass_1"  164.2305  0.1731  43  70 0 0.50 0 0
i "GM_Standard_Kit"  164.2305  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"  164.4228  0.1731  45  67 0 0.50 0 0
i "GM_Standard_Kit"  164.4228  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Piano_1"  164.4249  0.2115  55  56 0 0.42 0 0
i "GM_Electric_Piano_1"  164.4250  0.2115  64  53 0 0.42 0 0
i "GM_Electric_Piano_1"  164.4281  0.2115  60  57 0 0.42 0 0
i "GM_Electric_Piano_1"  164.4283  0.2115  57  52 0 0.42 0 0
i "GM_Slap_Bass_1"  164.6152  0.3538  45  82 0 0.50 0 0
i "GM_Standard_Kit"  164.6152  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"  164.6152  0.1800  38  82 0 0.48 0 0
i "GM_Standard_Kit"  164.6152  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  164.6152  0.2200  51  48 0 0.70 0 0
i "GM_Recorder"  164.8075  0.3462  77  91 0 0.23 0 0
i "GM_Standard_Kit"  164.8075  0.1200  42  41 0 0.35 0 0
i "GM_Slap_Bass_1"  164.9998  0.1731  45  73 0 0.50 0 0
i "GM_Standard_Kit"  164.9998  0.1200  46  39 0 0.35 0 0
i "GM_Alto_Sax"  165.1921  0.2212  69  60 0 0.62 0 0
i "GM_Slap_Bass_1"  165.1921  0.3538  45  85 0 0.50 0 0
i "GM_Standard_Kit"  165.1921  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"  165.1921  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  165.1921  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  165.1921  0.2212  55  58 0 0.35 0 0
i "GM_Trombone"  165.1921  0.2212  60  57 0 0.28 0 0
i "GM_Trumpet"  165.1921  0.2212  76  56 0 0.72 0 0
i "GM_Recorder"  165.3844  0.1731  79  89 0 0.23 0 0
i "GM_Slap_Bass_1"  165.3844  0.1731  48  72 0 0.50 0 0
i "GM_Standard_Kit"  165.3844  0.1200  42  37 0 0.35 0 0
i "GM_Alto_Sax"  165.5767  0.2212  72  61 0 0.62 0 0
i "GM_Pan_Flute"  165.5767  0.8654  78 103 0 0.41 0 0
i "GM_Slap_Bass_1"  165.5767  0.3538  50  85 0 0.50 0 0
i "GM_Standard_Kit"  165.5767  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"  165.5767  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  165.5767  0.2200  51  49 0 0.70 0 0
i "GM_Tenor_Sax"  165.5767  0.2212  57  55 0 0.35 0 0
i "GM_Trombone"  165.5767  0.2212  62  59 0 0.28 0 0
i "GM_Trumpet"  165.5767  0.2212  78  60 0 0.72 0 0
i "GM_Slap_Bass_1"  165.7690  0.3462  48  69 0 0.50 0 0
i "GM_Standard_Kit"  165.7690  0.1200  42  41 0 0.35 0 0
i "GM_Standard_Kit"  165.9613  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"  166.1536  0.1731  47  70 0 0.50 0 0
i "GM_Standard_Kit"  166.1536  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"  166.3459  0.1731  45  73 0 0.50 0 0
i "GM_Standard_Kit"  166.3459  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"  166.3459  0.1200  42  36 0 0.35 0 0
i "GM_Pan_Flute"  166.5382  0.8654  78 101 0 0.41 0 0
i "GM_Slap_Bass_1"  166.5382  0.3538  45  79 0 0.50 0 0
i "GM_Standard_Kit"  166.5382  0.2200  36  68 0 0.50 0 0
i "GM_Standard_Kit"  166.5382  0.1800  38  77 0 0.48 0 0
i "GM_Standard_Kit"  166.5382  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  166.5382  0.2200  51  49 0 0.70 0 0
i "GM_Electric_Piano_1"  166.5395  0.2115  57  58 0 0.42 0 0
i "GM_Electric_Piano_1"  166.5414  0.2115  62  55 0 0.42 0 0
i "GM_Electric_Piano_1"  166.5417  0.2115  60  55 0 0.42 0 0
i "GM_Electric_Piano_1"  166.5418  0.2115  54  60 0 0.42 0 0
i "GM_Slap_Bass_1"  166.7305  0.1731  42  69 0 0.50 0 0
i "GM_Standard_Kit"  166.7305  0.1200  42  41 0 0.35 0 0
i "GM_Slap_Bass_1"  166.9228  0.1731  40  67 0 0.50 0 0
i "GM_Standard_Kit"  166.9228  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"  167.1152  0.3462  42  72 0 0.50 0 0
i "GM_Standard_Kit"  167.1152  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"  167.3075  0.1200  46  37 0 0.35 0 0
i "GM_Alto_Sax"  167.4998  0.2212  72  61 0 0.62 0 0
i "GM_Slap_Bass_1"  167.4998  0.3538  45  83 0 0.50 0 0
i "GM_Standard_Kit"  167.4998  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"  167.4998  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  167.4998  0.2200  51  44 0 0.70 0 0
i "GM_Tenor_Sax"  167.4998  0.2212  57  60 0 0.35 0 0
i "GM_Trombone"  167.4998  0.2212  62  59 0 0.28 0 0
i "GM_Trumpet"  167.4998  0.2212  78  61 0 0.72 0 0
i "GM_Pan_Flute"  167.6921  0.1731  79  88 0 0.41 0 0
i "GM_Standard_Kit"  167.6921  0.1200  42  36 0 0.35 0 0
i "GM_Alto_Sax"  167.8844  0.2212  71  55 0 0.62 0 0
i "GM_Blown_Bottle"  167.8844  0.8654  79 101 0 0.59 0 0
i "GM_Slap_Bass_1"  167.8844  0.3538  43  81 0 0.50 0 0
i "GM_Standard_Kit"  167.8844  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  167.8844  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  167.8844  0.2200  51  44 0 0.70 0 0
i "GM_Tenor_Sax"  167.8844  0.2212  55  56 0 0.35 0 0
i "GM_Trombone"  167.8844  0.2212  62  59 0 0.28 0 0
i "GM_Trumpet"  167.8844  0.2212  78  58 0 0.72 0 0
i "GM_Electric_Piano_1"  167.8855  0.2115  66  53 0 0.42 0 0
i "GM_Electric_Piano_1"  167.8859  0.2115  59  53 0 0.42 0 0
i "GM_Electric_Piano_1"  167.8864  0.2115  62  54 0 0.42 0 0
i "GM_Electric_Piano_1"  167.8896  0.2115  55  56 0 0.42 0 0
i "GM_Slap_Bass_1"  168.0767  0.3462  42  70 0 0.50 0 0
i "GM_Standard_Kit"  168.0767  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"  168.2690  0.1200  42  41 0 0.35 0 0
i "GM_Standard_Kit"  168.4613  0.1200  42  39 0 0.35 0 0
i "GM_Slap_Bass_1"  168.6536  0.1731  42  72 0 0.50 0 0
i "GM_Standard_Kit"  168.6536  0.1200  42  39 0 0.35 0 0
i "GM_Electric_Piano_1"  168.6553  0.2115  59  56 0 0.42 0 0
i "GM_Electric_Piano_1"  168.6553  0.2115  62  55 0 0.42 0 0
i "GM_Electric_Piano_1"  168.6561  0.2115  55  58 0 0.42 0 0
i "GM_Electric_Piano_1"  168.6594  0.2115  66  56 0 0.42 0 0
i "GM_Alto_Sax"  168.8459  0.2212  71  56 0 0.62 0 0
i "GM_Blown_Bottle"  168.8459  0.5192  83 102 0 0.59 0 0
i "GM_Slap_Bass_1"  168.8459  0.3538  43  82 0 0.50 0 0
i "GM_Standard_Kit"  168.8459  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"  168.8459  0.1800  38  83 0 0.48 0 0
i "GM_Standard_Kit"  168.8459  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  168.8459  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  168.8459  0.2212  55  61 0 0.35 0 0
i "GM_Trombone"  168.8459  0.2212  62  55 0 0.28 0 0
i "GM_Trumpet"  168.8459  0.2212  78  59 0 0.72 0 0
i "GM_Standard_Kit"  169.0382  0.1200  42  40 0 0.35 0 0
i "GM_Slap_Bass_1"  169.2305  0.1731  42  71 0 0.50 0 0
i "GM_Standard_Kit"  169.2305  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"  169.4228  0.3538  40  83 0 0.50 0 0
i "GM_Standard_Kit"  169.4228  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"  169.4228  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  169.4228  0.2200  51  47 0 0.70 0 0
i "GM_Shakuhachi"  169.6152  0.6923  81  88 0 0.78 0 0
i "GM_Slap_Bass_1"  169.6152  0.1731  38  70 0 0.50 0 0
i "GM_Standard_Kit"  169.6152  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"  169.8075  0.1200  42  39 0 0.35 0 0
i "GM_Slap_Bass_1"  169.9998  0.3462  40  69 0 0.50 0 0
i "GM_Standard_Kit"  169.9998  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"  170.1921  0.1200  42  39 0 0.35 0 0
i "GM_Alto_Sax"  170.3844  0.2212  69  57 0 0.62 0 0
i "GM_Shakuhachi"  170.3844  0.5192  81  96 0 0.78 0 0
i "GM_Slap_Bass_1"  170.3844  0.3538  40  84 0 0.50 0 0
i "GM_Standard_Kit"  170.3844  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"  170.3844  0.1800  38  79 0 0.48 0 0
i "GM_Standard_Kit"  170.3844  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  170.3844  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  170.3844  0.2212  55  62 0 0.35 0 0
i "GM_Trombone"  170.3844  0.2212  61  56 0 0.28 0 0
i "GM_Trumpet"  170.3844  0.2212  76  55 0 0.72 0 0
i "GM_Electric_Piano_1"  170.3852  0.2115  55  58 0 0.42 0 0
i "GM_Electric_Piano_1"  170.3860  0.2115  61  56 0 0.42 0 0
i "GM_Electric_Piano_1"  170.3870  0.2115  57  53 0 0.42 0 0
i "GM_Electric_Piano_1"  170.3886  0.2115  64  52 0 0.42 0 0
i "GM_Slap_Bass_1"  170.5767  0.1731  38  67 0 0.50 0 0
i "GM_Standard_Kit"  170.5767  0.1200  42  37 0 0.35 0 0
i "GM_Slap_Bass_1"  170.7690  0.1731  37  70 0 0.50 0 0
i "GM_Standard_Kit"  170.7690  0.1200  42  38 0 0.35 0 0
i "GM_Alto_Sax"  170.9613  0.2212  72  59 0 0.62 0 0
i "GM_Slap_Bass_1"  170.9613  0.3538  38  85 0 0.50 0 0
i "GM_Standard_Kit"  170.9613  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  170.9613  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  170.9613  0.2200  51  49 0 0.70 0 0
i "GM_Tenor_Sax"  170.9613  0.2212  57  61 0 0.35 0 0
i "GM_Trombone"  170.9613  0.2212  62  55 0 0.28 0 0
i "GM_Trumpet"  170.9613  0.2212  77  57 0 0.72 0 0
i "GM_Whistle"  170.9613  0.1827  81 101 0 0.39 0 0
i "GM_Electric_Piano_1"  170.9634  0.2115  60  60 0 0.42 0 0
i "GM_Electric_Piano_1"  170.9646  0.2115  53  59 0 0.42 0 0
i "GM_Electric_Piano_1"  170.9651  0.2115  62  55 0 0.42 0 0
i "GM_Electric_Piano_1"  170.9660  0.2115  57  57 0 0.42 0 0
i "GM_Slap_Bass_1"  171.1536  0.3462  36  73 0 0.50 0 0
i "GM_Standard_Kit"  171.1536  0.1200  42  39 0 0.35 0 0
i "GM_Whistle"  171.1536  0.3654  82  92 0 0.39 0 0
i "GM_Standard_Kit"  171.3459  0.1200  42  40 0 0.35 0 0
i "GM_Electric_Piano_1"  171.3476  0.2115  62  57 0 0.42 0 0
i "GM_Electric_Piano_1"  171.3478  0.2115  60  58 0 0.42 0 0
i "GM_Electric_Piano_1"  171.3484  0.2115  57  58 0 0.42 0 0
i "GM_Electric_Piano_1"  171.3503  0.2115  53  57 0 0.42 0 0
i "GM_Alto_Sax"  171.5382  0.2212  72  56 0 0.62 0 0
i "GM_Slap_Bass_1"  171.5382  0.3538  38  85 0 0.50 0 0
i "GM_Standard_Kit"  171.5382  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"  171.5382  0.1800  38  77 0 0.48 0 0
i "GM_Standard_Kit"  171.5382  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  171.5382  0.2200  51  45 0 0.70 0 0
i "GM_Tenor_Sax"  171.5382  0.2212  57  58 0 0.35 0 0
i "GM_Trombone"  171.5382  0.2212  62  56 0 0.28 0 0
i "GM_Trumpet"  171.5382  0.2212  77  62 0 0.72 0 0
i "GM_Slap_Bass_1"  171.7305  0.1731  36  69 0 0.50 0 0
i "GM_Standard_Kit"  171.7305  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"  171.9228  0.3462  38  72 0 0.50 0 0
i "GM_Standard_Kit"  171.9228  0.1200  42  39 0 0.35 0 0
i "GM_Standard_Kit"  172.1152  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"  172.3075  0.1731  41  68 0 0.50 0 0
i "GM_Standard_Kit"  172.3075  0.1200  46  40 0 0.35 0 0
i "GM_Alto_Sax"  172.4998  0.2212  71  56 0 0.62 0 0
i "GM_Slap_Bass_1"  172.4998  0.3538  43  79 0 0.50 0 0
i "GM_Standard_Kit"  172.4998  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  172.4998  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  172.4998  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  172.4998  0.2212  55  59 0 0.35 0 0
i "GM_Trombone"  172.4998  0.2212  62  61 0 0.28 0 0
i "GM_Trumpet"  172.4998  0.2212  77  61 0 0.72 0 0
i "GM_Ocarina"  172.6921  0.6923  83  88 0 0.57 0 0
i "GM_Slap_Bass_1"  172.6921  0.3462  43  70 0 0.50 0 0
i "GM_Standard_Kit"  172.6921  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  172.8844  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"  173.0767  0.1731  41  67 0 0.50 0 0
i "GM_Standard_Kit"  173.0767  0.1200  42  40 0 0.35 0 0
i "GM_Slap_Bass_1"  173.2690  0.1731  41  68 0 0.50 0 0
i "GM_Standard_Kit"  173.2690  0.1200  42  36 0 0.35 0 0
i "GM_Alto_Sax"  173.4613  0.2212  71  62 0 0.62 0 0
i "GM_Ocarina"  173.4613  0.5192  83  95 0 0.57 0 0
i "GM_Slap_Bass_1"  173.4613  0.3538  43  82 0 0.50 0 0
i "GM_Standard_Kit"  173.4613  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"  173.4613  0.1800  38  83 0 0.48 0 0
i "GM_Standard_Kit"  173.4613  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  173.4613  0.2200  51  49 0 0.70 0 0
i "GM_Tenor_Sax"  173.4613  0.2212  55  55 0 0.35 0 0
i "GM_Trombone"  173.4613  0.2212  62  58 0 0.28 0 0
i "GM_Trumpet"  173.4613  0.2212  77  62 0 0.72 0 0
i "GM_Electric_Piano_1"  173.4646  0.2115  65  58 0 0.42 0 0
i "GM_Electric_Piano_1"  173.4646  0.2115  55  54 0 0.42 0 0
i "GM_Electric_Piano_1"  173.4669  0.2115  62  59 0 0.42 0 0
i "GM_Electric_Piano_1"  173.4670  0.2115  59  54 0 0.42 0 0
i "GM_Slap_Bass_1"  173.6536  0.1731  41  72 0 0.50 0 0
i "GM_Standard_Kit"  173.6536  0.1200  42  37 0 0.35 0 0
i "GM_Standard_Kit"  173.8459  0.1200  42  37 0 0.35 0 0
i "GM_Alto_Sax"  174.0382  0.2212  71  59 0 0.62 0 0
i "GM_Ocarina"  174.0382  0.1731  83 103 0 0.57 0 0
i "GM_Slap_Bass_1"  174.0382  0.3538  43  85 0 0.50 0 0
i "GM_Standard_Kit"  174.0382  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"  174.0382  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  174.0382  0.2200  51  47 0 0.70 0 0
i "GM_Standard_Kit"  174.0382  0.1500  50  80 0 0.40 0 0
i "GM_Tenor_Sax"  174.0382  0.2212  55  61 0 0.35 0 0
i "GM_Trombone"  174.0382  0.2212  62  58 0 0.28 0 0
i "GM_Trumpet"  174.0382  0.2212  77  57 0 0.72 0 0
i "GM_Ocarina"  174.2305  0.6923  84  86 0 0.57 0 0
i "GM_Slap_Bass_1"  174.2305  0.1731  43  71 0 0.50 0 0
i "GM_Standard_Kit"  174.2305  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"  174.2305  0.1500  48  86 0 0.43 0 0
i "GM_Slap_Bass_1"  174.4228  0.1731  45  68 0 0.50 0 0
i "GM_Standard_Kit"  174.4228  0.1200  42  39 0 0.35 0 0
i "GM_Standard_Kit"  174.4228  0.1500  47  83 0 0.46 0 0
i "GM_Slap_Bass_1"  174.6152  0.1731  47  69 0 0.50 0 0
i "GM_Standard_Kit"  174.6152  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"  174.6152  0.1500  45  74 0 0.49 0 0
i "GM_Slap_Bass_1"  174.8075  0.1731  47  72 0 0.50 0 0
i "GM_Standard_Kit"  174.8075  0.1200  46  37 0 0.35 0 0
i "GM_Standard_Kit"  174.8075  0.1500  43  81 0 0.52 0 0
i "GM_Alto_Sax"  174.9998  0.2212  71  58 0 0.62 0 0
i "GM_Slap_Bass_1"  174.9998  0.3538  50  85 0 0.50 0 0
i "GM_Standard_Kit"  174.9998  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  174.9998  0.1800  38  77 0 0.48 0 0
i "GM_Standard_Kit"  174.9998  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  174.9998  0.2200  51  48 0 0.70 0 0
i "GM_Standard_Kit"  174.9998  0.1500  41  85 0 0.55 0 0
i "GM_Tenor_Sax"  174.9998  0.2212  55  60 0 0.35 0 0
i "GM_Trombone"  174.9998  0.2212  62  62 0 0.28 0 0
i "GM_Trumpet"  174.9998  0.2212  77  57 0 0.72 0 0
i "GM_Ocarina"  175.1921  0.3462  83  90 0 0.57 0 0
i "GM_Slap_Bass_1"  175.1921  0.3462  50  72 0 0.50 0 0
i "GM_Standard_Kit"  175.1921  0.1200  42  39 0 0.35 0 0
i "GM_Standard_Kit"  175.1921  0.1500  41  77 0 0.58 0 0
i "GM_Standard_Kit"  175.3844  0.1200  46  41 0 0.35 0 0
i "GM_Standard_Kit"  175.3844  0.1500  41  79 0 0.61 0 0
i "GM_Standard_Kit"  175.3844  0.2000  49  82 0 0.70 0 0
i "GM_Lead_1_square"  175.5767  0.5400  83 103 0 0.75 0 0
i "GM_Standard_Kit"  175.5767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_1_square"  176.1767  0.5400  84  93 0 0.75 0 0
i "GM_Lead_1_square"  176.7767  0.5400  84  96 0 0.75 0 0
i "GM_Standard_Kit"  176.7767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_1_square"  177.3767  0.5400  84  98 0 0.75 0 0
i "GM_Standard_Kit"  177.3767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_2_sawtooth"  177.9767  0.8100  83  97 0 0.37 0 0
i "GM_Standard_Kit"  177.9767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_2_sawtooth"  178.8767  0.2700  83  98 0 0.37 0 0
i "GM_Standard_Kit"  178.8767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_2_sawtooth"  179.1767  0.5400  84  86 0 0.37 0 0
i "GM_Lead_2_sawtooth"  179.7767  0.5400  84 102 0 0.37 0 0
i "GM_Standard_Kit"  179.7767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_3_calliope"  180.3767  0.2700  84  97 0 0.55 0 0
i "GM_Standard_Kit"  180.3767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_3_calliope"  180.6767  0.5400  84  90 0 0.55 0 0
i "GM_Standard_Kit"  181.2767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_3_calliope"  181.5767  0.5400  83  86 0 0.55 0 0
i "GM_Lead_3_calliope"  182.1767  0.5400  79  99 0 0.55 0 0
i "GM_Standard_Kit"  182.1767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  182.7767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_4_chiff"  183.0767  0.5400  78  90 0 0.73 0 0
i "GM_Lead_4_chiff"  183.6767  0.5400  78  98 0 0.73 0 0
i "GM_Standard_Kit"  183.6767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  184.2767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_4_chiff"  184.5767  0.5400  79  88 0 0.73 0 0
i "GM_Standard_Kit"  185.1767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_4_chiff"  185.4767  0.2700  77  88 0 0.73 0 0
i "GM_Lead_4_chiff"  185.7767  0.5400  75  98 0 0.73 0 0
i "GM_Standard_Kit"  185.7767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  186.3767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_5_charang"  186.6767  0.5400  75  88 0 0.35 0 0
i "GM_Lead_5_charang"  187.2767  0.5400  75  97 0 0.35 0 0
i "GM_Standard_Kit"  187.2767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  187.8767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_5_charang"  188.1767  0.5400  74  89 0 0.35 0 0
i "GM_Lead_6_voice"  188.7767  0.2700  75 100 0 0.53 0 0
i "GM_Standard_Kit"  188.7767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_6_voice"  189.0767  0.5400  77  89 0 0.53 0 0
i "GM_Lead_6_voice"  189.6767  0.8100  75  99 0 0.53 0 0
i "GM_Standard_Kit"  189.6767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_6_voice"  190.5767  0.5400  75 100 0 0.53 0 0
i "GM_Standard_Kit"  190.5767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_7_fifths"  191.1767  0.5400  74  95 0 0.71 0 0
i "GM_Standard_Kit"  191.1767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  191.7767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_7_fifths"  192.0767  0.5400  72  93 0 0.71 0 0
i "GM_Lead_7_fifths"  192.6767  0.5400  74 101 0 0.71 0 0
i "GM_Standard_Kit"  192.6767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_7_fifths"  193.2767  0.2700  77  95 0 0.71 0 0
i "GM_Standard_Kit"  193.2767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_8_bass_lead"  193.5767  0.8100  75  97 0 0.33 0 0
i "GM_Standard_Kit"  193.5767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_8_bass_lead"  194.4767  0.8100  79 102 0 0.33 0 0
i "GM_Standard_Kit"  194.4767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_8_bass_lead"  195.3767  0.8100  79 101 0 0.33 0 0
i "GM_Standard_Kit"  195.3767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  196.2767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_8_bass_lead"  196.5767  0.5400  80  91 0 0.33 0 0
i "GM_Lead_8_bass_lead"  197.1767  0.5400  82  96 0 0.33 0 0
i "GM_Standard_Kit"  197.1767  0.1000  42  36 0 0.35 0 0
i "GM_Lead_8_bass_lead"  197.7767  0.5400  82  99 0 0.33 0 0
i "GM_Standard_Kit"  197.7767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  198.0767  0.3000  49  84 0 0.70 0 0
i "GM_Pad_1_new_age"  198.3767  2.3520  55  70 0 0.51 0 0
i "GM_Pad_1_new_age"  198.3767  2.3520  57  70 0 0.51 0 0
i "GM_Pad_1_new_age"  198.3767  2.3520  60  70 0 0.51 0 0
i "GM_Pad_1_new_age"  198.3767  2.3520  64  70 0 0.51 0 0
i "GM_Standard_Kit"  198.3767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  199.8767  0.1000  42  36 0 0.35 0 0
i "GM_Pad_2_warm"  200.7767  2.3520  54  70 0 0.69 0 0
i "GM_Pad_2_warm"  200.7767  2.3520  57  70 0 0.69 0 0
i "GM_Pad_2_warm"  200.7767  2.3520  60  70 0 0.69 0 0
i "GM_Pad_2_warm"  200.7767  2.3520  62  70 0 0.69 0 0
i "GM_Standard_Kit"  200.7767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  201.6767  0.1000  42  36 0 0.35 0 0
i "GM_Pad_3_polysynth"  203.1767  2.3520  54  70 0 0.30 0 0
i "GM_Pad_3_polysynth"  203.1767  2.3520  55  70 0 0.30 0 0
i "GM_Pad_3_polysynth"  203.1767  2.3520  59  70 0 0.30 0 0
i "GM_Pad_3_polysynth"  203.1767  2.3520  62  70 0 0.30 0 0
i "GM_Standard_Kit"  203.1767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  204.6767  0.1000  42  36 0 0.35 0 0
i "GM_Pad_4_choir"  205.5767  3.5280  54  70 0 0.48 0 0
i "GM_Pad_4_choir"  205.5767  3.5280  57  70 0 0.48 0 0
i "GM_Pad_4_choir"  205.5767  3.5280  59  70 0 0.48 0 0
i "GM_Pad_4_choir"  205.5767  3.5280  63  70 0 0.48 0 0
i "GM_Standard_Kit"  205.5767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  206.4767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  207.0767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  207.9767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  208.5767  0.1000  42  36 0 0.35 0 0
i "GM_Pad_5_bowed"  209.1767  2.3520  52  70 0 0.67 0 0
i "GM_Pad_5_bowed"  209.1767  2.3520  55  70 0 0.67 0 0
i "GM_Pad_5_bowed"  209.1767  2.3520  59  70 0 0.67 0 0
i "GM_Pad_5_bowed"  209.1767  2.3520  62  70 0 0.67 0 0
i "GM_Standard_Kit"  209.1767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  209.7767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  210.3767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  211.2767  0.1000  42  36 0 0.35 0 0
i "GM_Pad_6_metallic"  211.5767  2.3520  52  70 0 0.28 0 0
i "GM_Pad_6_metallic"  211.5767  2.3520  55  70 0 0.28 0 0
i "GM_Pad_6_metallic"  211.5767  2.3520  57  70 0 0.28 0 0
i "GM_Pad_6_metallic"  211.5767  2.3520  60  70 0 0.28 0 0
i "GM_Standard_Kit"  211.5767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  212.1767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  212.7767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  213.3767  0.1000  42  36 0 0.35 0 0
i "GM_Pad_7_halo"  213.9767  2.3520  51  70 0 0.46 0 0
i "GM_Pad_7_halo"  213.9767  2.3520  54  70 0 0.46 0 0
i "GM_Pad_7_halo"  213.9767  2.3520  57  70 0 0.46 0 0
i "GM_Pad_7_halo"  213.9767  2.3520  59  70 0 0.46 0 0
i "GM_Standard_Kit"  213.9767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  215.1767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  215.7767  0.1000  42  36 0 0.35 0 0
i "GM_Pad_8_sweep"  216.3767  4.7040  50  70 0 0.64 0 0
i "GM_Pad_8_sweep"  216.3767  4.7040  52  70 0 0.64 0 0
i "GM_Pad_8_sweep"  216.3767  4.7040  55  70 0 0.64 0 0
i "GM_Pad_8_sweep"  216.3767  4.7040  59  70 0 0.64 0 0
i "GM_Standard_Kit"  216.3767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  217.2767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  218.1767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  219.0767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  219.9767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  220.5767  0.1000  42  36 0 0.35 0 0
i "GM_Standard_Kit"  220.8767  0.3000  49  84 0 0.70 0 0
i "GM_Electric_Bass_finger"  221.1767  0.3833  48  79 0 0.50 0 0
i "GM_FX_1_rain"  221.1767  1.5000  72  84 0 0.26 0 0
i "GM_Standard_Kit"  221.1767  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"  221.1767  0.1200  42  47 0 0.35 0 0
i "GM_Standard_Kit"  221.1767  0.5000  49  86 0 0.72 0 0
i "GM_Standard_Kit"  221.3850  0.1200  42  36 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  221.3859  0.2292  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  221.3859  0.2292  55  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  221.3875  0.2292  59  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  221.3910  0.2292  52  54 0 0.38 0 0
i "GM_Electric_Bass_finger"  221.5934  0.3833  48  80 0 0.50 0 0
i "GM_Standard_Kit"  221.5934  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"  221.5934  0.1800  38  67 0 0.48 0 0
i "GM_Standard_Kit"  221.5934  0.1200  42  47 0 0.35 0 0
i "GM_Standard_Kit"  221.8017  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  222.0100  0.1875  50  68 0 0.50 0 0
i "GM_Standard_Kit"  222.0100  0.1200  42  31 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  222.0119  0.2292  59  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  222.0120  0.2292  55  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  222.0144  0.2292  52  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  222.0153  0.2292  60  57 0 0.38 0 0
i "GM_Electric_Bass_finger"  222.2184  0.3833  48  82 0 0.50 0 0
i "GM_Standard_Kit"  222.2184  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"  222.2184  0.1200  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"  222.4267  0.1875  47  70 0 0.50 0 0
i "GM_Standard_Kit"  222.4267  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  222.6350  0.1917  48  80 0 0.50 0 0
i "GM_Standard_Kit"  222.6350  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"  222.6350  0.1800  38  68 0 0.48 0 0
i "GM_Standard_Kit"  222.6350  0.1200  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  222.6359  0.2292  59  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  222.6362  0.2292  52  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  222.6369  0.2292  55  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  222.6399  0.2292  60  57 0 0.38 0 0
i "GM_Electric_Bass_finger"  222.8434  0.3833  45  85 0 0.50 0 0
i "GM_FX_2_soundtrack"  222.8434  1.6333  52  70 0 0.44 0 0
i "GM_FX_2_soundtrack"  222.8434  1.6333  55  70 0 0.44 0 0
i "GM_FX_2_soundtrack"  222.8434  1.6333  57  70 0 0.44 0 0
i "GM_FX_2_soundtrack"  222.8434  1.6333  60  70 0 0.44 0 0
i "GM_Standard_Kit"  222.8434  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  222.8434  0.1200  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"  223.0517  0.1875  45  73 0 0.50 0 0
i "GM_Standard_Kit"  223.0517  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  223.2600  0.3833  45  84 0 0.50 0 0
i "GM_Standard_Kit"  223.2600  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  223.2600  0.1800  38  71 0 0.48 0 0
i "GM_Standard_Kit"  223.2600  0.1200  42  48 0 0.35 0 0
i "GM_Standard_Kit"  223.4684  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  223.6767  0.3833  45  80 0 0.50 0 0
i "GM_Standard_Kit"  223.6767  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  223.6767  0.1200  42  46 0 0.35 0 0
i "GM_Standard_Kit"  223.8850  0.1200  42  32 0 0.35 0 0
i "GM_Standard_Kit"  224.0934  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  224.3017  0.1917  45  84 0 0.50 0 0
i "GM_Standard_Kit"  224.3017  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"  224.3017  0.1800  38  66 0 0.48 0 0
i "GM_Standard_Kit"  224.3017  0.1200  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"  224.5100  0.3833  42  79 0 0.50 0 0
i "GM_FX_3_crystal"  224.5100  0.3958  81 101 0 0.62 0 0
i "GM_Rock_Organ"  224.5100  1.6000  52  36 0 0.55 0 0
i "GM_Rock_Organ"  224.5100  1.6000  54  33 0 0.55 0 0
i "GM_Rock_Organ"  224.5100  1.6000  57  36 0 0.55 0 0
i "GM_Rock_Organ"  224.5100  1.6000  60  35 0 0.55 0 0
i "GM_Standard_Kit"  224.5100  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  224.5100  0.1200  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  224.5119  0.2292  57  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  224.5123  0.2292  52  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  224.5135  0.2292  60  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  224.5152  0.2292  54  58 0 0.38 0 0
i "GM_Electric_Bass_finger"  224.7184  0.1875  40  73 0 0.50 0 0
i "GM_Standard_Kit"  224.7184  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"  224.9267  0.3833  42  80 0 0.50 0 0
i "GM_Standard_Kit"  224.9267  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"  224.9267  0.1800  38  66 0 0.48 0 0
i "GM_Standard_Kit"  224.9267  0.1200  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"  225.1350  0.1875  42  69 0 0.50 0 0
i "GM_Standard_Kit"  225.1350  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"  225.3434  0.1200  46  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  225.5517  0.3833  42  83 0 0.50 0 0
i "GM_FX_3_crystal"  225.5517  0.3958  81  98 0 0.62 0 0
i "GM_Standard_Kit"  225.5517  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  225.5517  0.1200  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"  225.7600  0.1875  40  71 0 0.50 0 0
i "GM_Standard_Kit"  225.7600  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  225.9684  0.1917  42  85 0 0.50 0 0
i "GM_FX_3_crystal"  225.9684  0.1979  84  95 0 0.62 0 0
i "GM_Standard_Kit"  225.9684  0.2200  36  60 0 0.50 0 0
i "GM_Standard_Kit"  225.9684  0.1800  38  70 0 0.48 0 0
i "GM_Standard_Kit"  225.9684  0.1200  42  47 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  225.9709  0.2292  52  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  225.9713  0.2292  60  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  225.9738  0.2292  54  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  225.9740  0.2292  57  59 0 0.38 0 0
i "GM_Electric_Bass_finger"  226.1767  0.3833  42  81 0 0.50 0 0
i "GM_FX_4_atmosphere"  226.1767  2.4500  51  70 0 0.24 0 0
i "GM_FX_4_atmosphere"  226.1767  2.4500  54  70 0 0.24 0 0
i "GM_FX_4_atmosphere"  226.1767  2.4500  57  70 0 0.24 0 0
i "GM_FX_4_atmosphere"  226.1767  2.4500  59  70 0 0.24 0 0
i "GM_Standard_Kit"  226.1767  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"  226.1767  0.1200  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"  226.3850  0.1875  42  72 0 0.50 0 0
i "GM_Standard_Kit"  226.3850  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  226.5934  0.3833  42  80 0 0.50 0 0
i "GM_Standard_Kit"  226.5934  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"  226.5934  0.1800  38  72 0 0.48 0 0
i "GM_Standard_Kit"  226.5934  0.1200  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"  226.8017  0.3750  44  69 0 0.50 0 0
i "GM_Standard_Kit"  226.8017  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"  227.0100  0.1200  46  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  227.2184  0.3833  42  80 0 0.50 0 0
i "GM_Standard_Kit"  227.2184  0.2200  36  60 0 0.50 0 0
i "GM_Standard_Kit"  227.2184  0.1200  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"  227.4267  0.1875  42  73 0 0.50 0 0
i "GM_Standard_Kit"  227.4267  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  227.6350  0.1875  40  73 0 0.50 0 0
i "GM_Standard_Kit"  227.6350  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  227.8434  0.3833  42  79 0 0.50 0 0
i "GM_Standard_Kit"  227.8434  0.2200  36  60 0 0.50 0 0
i "GM_Standard_Kit"  227.8434  0.1800  38  67 0 0.48 0 0
i "GM_Standard_Kit"  227.8434  0.1200  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"  228.0517  0.1875  44  70 0 0.50 0 0
i "GM_Standard_Kit"  228.0517  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"  228.2600  0.1875  45  71 0 0.50 0 0
i "GM_Standard_Kit"  228.2600  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  228.4684  0.1875  47  71 0 0.50 0 0
i "GM_Standard_Kit"  228.4684  0.1200  46  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  228.6767  0.3833  47  81 0 0.50 0 0
i "GM_FX_5_brightness"  228.6767  1.6333  55  70 0 0.42 0 0
i "GM_FX_5_brightness"  228.6767  1.6333  59  70 0 0.42 0 0
i "GM_FX_5_brightness"  228.6767  1.6333  62  70 0 0.42 0 0
i "GM_FX_5_brightness"  228.6767  1.6333  64  70 0 0.42 0 0
i "GM_Standard_Kit"  228.6767  0.2200  36  60 0 0.50 0 0
i "GM_Standard_Kit"  228.6767  0.1200  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"  228.8850  0.1875  47  72 0 0.50 0 0
i "GM_Standard_Kit"  228.8850  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  229.0934  0.3833  47  84 0 0.50 0 0
i "GM_Standard_Kit"  229.0934  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  229.0934  0.1800  38  68 0 0.48 0 0
i "GM_Standard_Kit"  229.0934  0.1200  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"  229.3017  0.1875  45  72 0 0.50 0 0
i "GM_Standard_Kit"  229.3017  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  229.5100  0.1875  45  67 0 0.50 0 0
i "GM_Standard_Kit"  229.5100  0.1200  46  31 0 0.35 0 0
i "GM_Electric_Bass_finger"  229.7184  0.3833  47  81 0 0.50 0 0
i "GM_Standard_Kit"  229.7184  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  229.7184  0.1200  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"  229.9267  0.1875  48  70 0 0.50 0 0
i "GM_Standard_Kit"  229.9267  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  230.1350  0.1917  47  82 0 0.50 0 0
i "GM_Standard_Kit"  230.1350  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  230.1350  0.1800  38  69 0 0.48 0 0
i "GM_Standard_Kit"  230.1350  0.1200  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"  230.3434  0.3833  50  82 0 0.50 0 0
i "GM_FX_6_goblins"  230.3434  1.5000  56  84 0 0.60 0 0
i "GM_Standard_Kit"  230.3434  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  230.3434  0.1200  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  230.3456  0.2292  59  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  230.3468  0.2292  66  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  230.3482  0.2292  62  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  230.3492  0.2292  55  54 0 0.38 0 0
i "GM_Electric_Bass_finger"  230.5517  0.1875  50  67 0 0.50 0 0
i "GM_Standard_Kit"  230.5517  0.1200  42  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  230.5524  0.2292  66  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  230.5533  0.2292  59  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  230.5543  0.2292  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  230.5565  0.2292  55  57 0 0.38 0 0
i "GM_Electric_Bass_finger"  230.7600  0.3833  50  85 0 0.50 0 0
i "GM_Standard_Kit"  230.7600  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  230.7600  0.1800  38  71 0 0.48 0 0
i "GM_Standard_Kit"  230.7600  0.1200  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"  230.9684  0.1875  50  73 0 0.50 0 0
i "GM_Standard_Kit"  230.9684  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  231.1767  0.3833  50  79 0 0.50 0 0
i "GM_Standard_Kit"  231.1767  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  231.1767  0.1200  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  231.1767  0.2292  66  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  231.1774  0.2292  55  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  231.1785  0.2292  59  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  231.1786  0.2292  62  54 0 0.38 0 0
i "GM_Electric_Bass_finger"  231.3850  0.3750  52  73 0 0.50 0 0
i "GM_Standard_Kit"  231.3850  0.1200  42  34 0 0.35 0 0
i "GM_Standard_Kit"  231.5934  0.1200  46  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  231.8017  0.1917  50  81 0 0.50 0 0
i "GM_Standard_Kit"  231.8017  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  231.8017  0.1800  38  71 0 0.48 0 0
i "GM_Standard_Kit"  231.8017  0.1200  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"  232.0100  0.3833  50  84 0 0.50 0 0
i "GM_FX_7_echoes"  232.0100  0.3750  84  96 0 0.78 0 0
i "GM_Rock_Organ"  232.0100  1.6000  57  32 0 0.55 0 0
i "GM_Rock_Organ"  232.0100  1.6000  60  33 0 0.55 0 0
i "GM_Rock_Organ"  232.0100  1.6000  62  33 0 0.55 0 0
i "GM_Rock_Organ"  232.0100  1.6000  65  32 0 0.55 0 0
i "GM_Standard_Kit"  232.0100  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"  232.0100  0.1200  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"  232.2184  0.1875  52  71 0 0.50 0 0
i "GM_Standard_Kit"  232.2184  0.1200  42  32 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  232.2223  0.2292  62  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  232.2230  0.2292  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  232.2231  0.2292  57  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  232.2240  0.2292  65  57 0 0.38 0 0
i "GM_Electric_Bass_finger"  232.4267  0.3833  50  80 0 0.50 0 0
i "GM_FX_7_echoes"  232.4267  0.3750  81 103 0 0.78 0 0
i "GM_Standard_Kit"  232.4267  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"  232.4267  0.1800  38  70 0 0.48 0 0
i "GM_Standard_Kit"  232.4267  0.1200  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"  232.6350  0.1875  48  73 0 0.50 0 0
i "GM_Standard_Kit"  232.6350  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"  232.6350  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  232.8434  0.3833  50  79 0 0.50 0 0
i "GM_Standard_Kit"  232.8434  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  232.8434  0.1200  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"  233.0517  0.3750  48  70 0 0.50 0 0
i "GM_FX_7_echoes"  233.0517  0.3750  79  87 0 0.78 0 0
i "GM_Standard_Kit"  233.0517  0.1200  42  32 0 0.35 0 0
i "GM_Standard_Kit"  233.2600  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"  233.4684  0.1917  50  81 0 0.50 0 0
i "GM_FX_7_echoes"  233.4684  0.1875  77  98 0 0.78 0 0
i "GM_Standard_Kit"  233.4684  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  233.4684  0.1800  38  66 0 0.48 0 0
i "GM_Standard_Kit"  233.4684  0.1200  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  233.4687  0.2292  60  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  233.4721  0.2292  65  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  233.4728  0.2292  57  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  233.4741  0.2292  62  60 0 0.38 0 0
i "GM_Electric_Bass_finger"  233.6767  0.3833  50  82 0 0.50 0 0
i "GM_FX_8_sci_fi"  233.6767  3.0000  63  84 0 0.40 0 0
i "GM_Standard_Kit"  233.6767  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"  233.6767  0.1200  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"  233.8850  0.1875  50  70 0 0.50 0 0
i "GM_Standard_Kit"  233.8850  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  234.0934  0.3833  50  81 0 0.50 0 0
i "GM_Standard_Kit"  234.0934  0.2200  36  60 0 0.50 0 0
i "GM_Standard_Kit"  234.0934  0.1800  38  70 0 0.48 0 0
i "GM_Standard_Kit"  234.0934  0.1200  42  50 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  234.0959  0.2292  55  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  234.0973  0.2292  59  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  234.0975  0.2292  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  234.0989  0.2292  65  59 0 0.38 0 0
i "GM_Standard_Kit"  234.3017  0.1200  42  32 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  234.3045  0.2292  59  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  234.3055  0.2292  55  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  234.3067  0.2292  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  234.3068  0.2292  65  57 0 0.38 0 0
i "GM_Electric_Bass_finger"  234.5100  0.3833  50  81 0 0.50 0 0
i "GM_Standard_Kit"  234.5100  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"  234.5100  0.1200  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"  234.7184  0.1875  52  70 0 0.50 0 0
i "GM_Standard_Kit"  234.7184  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  234.9267  0.1875  41  67 0 0.50 0 0
i "GM_Standard_Kit"  234.9267  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  234.9267  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  235.1350  0.3833  43  83 0 0.50 0 0
i "GM_Standard_Kit"  235.1350  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  235.1350  0.1800  38  68 0 0.48 0 0
i "GM_Standard_Kit"  235.1350  0.1200  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  235.1376  0.2292  62  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  235.1377  0.2292  55  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  235.1388  0.2292  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  235.1399  0.2292  59  57 0 0.38 0 0
i "GM_Electric_Bass_finger"  235.3434  0.1875  43  67 0 0.50 0 0
i "GM_FX_8_sci_fi"  235.3434  1.3333  68  78 0 0.40 0 0
i "GM_Standard_Kit"  235.3434  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  235.5517  0.1875  41  68 0 0.50 0 0
i "GM_Standard_Kit"  235.5517  0.1200  46  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  235.7600  0.3833  43  83 0 0.50 0 0
i "GM_Standard_Kit"  235.7600  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"  235.7600  0.1200  42  50 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  235.7600  0.2292  64  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  235.7632  0.2292  55  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  235.7638  0.2292  59  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  235.7649  0.2292  60  53 0 0.38 0 0
i "GM_Electric_Bass_finger"  235.9684  0.1875  41  68 0 0.50 0 0
i "GM_Standard_Kit"  235.9684  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  236.1767  0.3833  43  79 0 0.50 0 0
i "GM_Standard_Kit"  236.1767  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"  236.1767  0.1800  38  66 0 0.48 0 0
i "GM_Standard_Kit"  236.1767  0.1200  42  47 0 0.35 0 0
i "GM_Standard_Kit"  236.1767  0.1500  50  75 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  236.1784  0.2292  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  236.1793  0.2292  59  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  236.1795  0.2292  64  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  236.1809  0.2292  55  60 0 0.38 0 0
i "GM_Electric_Bass_finger"  236.3850  0.1875  45  69 0 0.50 0 0
i "GM_Standard_Kit"  236.3850  0.1200  42  31 0 0.35 0 0
i "GM_Standard_Kit"  236.3850  0.1500  48  80 0 0.43 0 0
i "GM_Electric_Bass_finger"  236.5934  0.3833  43  83 0 0.50 0 0
i "GM_Standard_Kit"  236.5934  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  236.5934  0.1200  42  47 0 0.35 0 0
i "GM_Standard_Kit"  236.5934  0.1500  47  77 0 0.46 0 0
i "GM_Electric_Bass_finger"  236.8017  0.1875  41  72 0 0.50 0 0
i "GM_Standard_Kit"  236.8017  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"  236.8017  0.1500  45  76 0 0.49 0 0
i "GM_Standard_Kit"  236.8017  0.2000  49  82 0 0.70 0 0
i "GM_Electric_Bass_finger"  237.0100  0.3833  43  82 0 0.50 0 0
i "GM_Sitar"  237.0100  0.7500  76 102 0 0.58 0 0
i "GM_Standard_Kit"  237.0100  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  237.0100  0.1200  42  51 0 0.35 0 0
i "GM_Standard_Kit"  237.0100  0.5000  49  86 0 0.72 0 0
i "GM_Electric_Bass_finger"  237.2184  0.3750  40  70 0 0.50 0 0
i "GM_Standard_Kit"  237.2184  0.1200  42  35 0 0.35 0 0
i "GM_Standard_Kit"  237.4267  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  237.6350  0.1875  40  73 0 0.50 0 0
i "GM_Standard_Kit"  237.6350  0.1200  42  32 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  237.6351  0.2292  55  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  237.6361  0.2292  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  237.6382  0.2292  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  237.6401  0.2292  59  57 0 0.38 0 0
i "GM_Electric_Bass_finger"  237.8434  0.3833  43  83 0 0.50 0 0
i "GM_Sitar"  237.8434  0.3750  72  96 0 0.58 0 0
i "GM_Standard_Kit"  237.8434  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"  237.8434  0.1800  38  67 0 0.48 0 0
i "GM_Standard_Kit"  237.8434  0.1200  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"  238.0517  0.1875  43  68 0 0.50 0 0
i "GM_Standard_Kit"  238.0517  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  238.2600  0.3833  43  79 0 0.50 0 0
i "GM_Sitar"  238.2600  0.3750  72  95 0 0.58 0 0
i "GM_Standard_Kit"  238.2600  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"  238.2600  0.1200  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"  238.4684  0.1875  41  69 0 0.50 0 0
i "GM_Standard_Kit"  238.4684  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  238.6767  0.3833  43  80 0 0.50 0 0
i "GM_Standard_Kit"  238.6767  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  238.6767  0.1200  42  50 0 0.35 0 0
i "GM_Banjo"  238.8850  0.1875  72  93 0 0.76 0 0
i "GM_Electric_Bass_finger"  238.8850  0.1875  45  69 0 0.50 0 0
i "GM_Standard_Kit"  238.8850  0.1200  42  31 0 0.35 0 0
i "GM_Banjo"  239.0934  0.3750  72 101 0 0.76 0 0
i "GM_Electric_Bass_finger"  239.0934  0.3833  43  84 0 0.50 0 0
i "GM_Standard_Kit"  239.0934  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"  239.0934  0.1800  38  70 0 0.48 0 0
i "GM_Standard_Kit"  239.0934  0.1200  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"  239.3017  0.1875  41  71 0 0.50 0 0
i "GM_Standard_Kit"  239.3017  0.1200  42  32 0 0.35 0 0
i "GM_Banjo"  239.5100  0.5625  72 100 0 0.76 0 0
i "GM_Electric_Bass_finger"  239.5100  0.3833  40  82 0 0.50 0 0
i "GM_Standard_Kit"  239.5100  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"  239.5100  0.1200  42  47 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  239.5104  0.2292  55  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  239.5123  0.2292  57  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  239.5137  0.2292  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  239.5159  0.2292  64  54 0 0.38 0 0
i "GM_Electric_Bass_finger"  239.7184  0.3750  40  71 0 0.50 0 0
i "GM_Standard_Kit"  239.7184  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"  239.9267  0.1200  42  34 0 0.35 0 0
i "GM_Banjo"  240.1350  0.1875  72 102 0 0.76 0 0
i "GM_Electric_Bass_finger"  240.1350  0.1917  40  82 0 0.50 0 0
i "GM_Standard_Kit"  240.1350  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"  240.1350  0.1800  38  66 0 0.48 0 0
i "GM_Standard_Kit"  240.1350  0.1200  42  48 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  240.1380  0.2292  60  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  240.1387  0.2292  55  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  240.1403  0.2292  57  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  240.1409  0.2292  64  53 0 0.38 0 0
i "GM_Electric_Bass_finger"  240.3434  0.3833  40  81 0 0.50 0 0
i "GM_Rock_Organ"  240.3434  1.6000  55  35 0 0.55 0 0
i "GM_Rock_Organ"  240.3434  1.6000  57  32 0 0.55 0 0
i "GM_Rock_Organ"  240.3434  1.6000  60  32 0 0.55 0 0
i "GM_Rock_Organ"  240.3434  1.6000  64  34 0 0.55 0 0
i "GM_Shamisen"  240.3434  0.1875  72 101 0 0.37 0 0
i "GM_Standard_Kit"  240.3434  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  240.3434  0.1200  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"  240.5517  0.1875  40  68 0 0.50 0 0
i "GM_Shamisen"  240.5517  0.3750  71  89 0 0.37 0 0
i "GM_Standard_Kit"  240.5517  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  240.7600  0.1875  40  72 0 0.50 0 0
i "GM_Standard_Kit"  240.7600  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"  240.7600  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"  240.9684  0.3833  40  80 0 0.50 0 0
i "GM_Standard_Kit"  240.9684  0.2200  36  60 0 0.50 0 0
i "GM_Standard_Kit"  240.9684  0.1800  38  73 0 0.48 0 0
i "GM_Standard_Kit"  240.9684  0.1200  42  48 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  240.9696  0.2292  64  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  240.9697  0.2292  57  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  240.9705  0.2292  55  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  240.9711  0.2292  60  57 0 0.38 0 0
i "GM_Electric_Bass_finger"  241.1767  0.1875  41  68 0 0.50 0 0
i "GM_Shamisen"  241.1767  0.1875  72  94 0 0.37 0 0
i "GM_Standard_Kit"  241.1767  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  241.3850  0.3833  40  82 0 0.50 0 0
i "GM_Shamisen"  241.3850  0.5625  76  96 0 0.37 0 0
i "GM_Standard_Kit"  241.3850  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"  241.3850  0.1200  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  241.3874  0.2292  55  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  241.3890  0.2292  57  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  241.3896  0.2292  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  241.3902  0.2292  60  56 0 0.38 0 0
i "GM_Electric_Bass_finger"  241.5934  0.3750  41  68 0 0.50 0 0
i "GM_Standard_Kit"  241.5934  0.1200  42  33 0 0.35 0 0
i "GM_Standard_Kit"  241.8017  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"  242.0100  0.3833  38  81 0 0.50 0 0
i "GM_Koto"  242.0100  0.3750  74  95 0 0.56 0 0
i "GM_Standard_Kit"  242.0100  0.2200  36  64 0 0.50 0 0
i "GM_Standard_Kit"  242.0100  0.1200  42  49 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  242.0113  0.2292  62  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  242.0115  0.2292  60  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  242.0126  0.2292  54  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  242.0151  0.2292  57  60 0 0.38 0 0
i "GM_Electric_Bass_finger"  242.2184  0.1875  40  69 0 0.50 0 0
i "GM_Standard_Kit"  242.2184  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  242.4267  0.3833  38  79 0 0.50 0 0
i "GM_Koto"  242.4267  0.5625  78  99 0 0.56 0 0
i "GM_Standard_Kit"  242.4267  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  242.4267  0.1800  38  68 0 0.48 0 0
i "GM_Standard_Kit"  242.4267  0.1200  42  47 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  242.4277  0.2292  60  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  242.4283  0.2292  62  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  242.4285  0.2292  54  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  242.4300  0.2292  57  57 0 0.38 0 0
i "GM_Standard_Kit"  242.6350  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  242.8434  0.1875  38  71 0 0.50 0 0
i "GM_Standard_Kit"  242.8434  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  242.8434  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  243.0517  0.3833  38  82 0 0.50 0 0
i "GM_Koto"  243.0517  0.5625  78  97 0 0.56 0 0
i "GM_Standard_Kit"  243.0517  0.2200  36  60 0 0.50 0 0
i "GM_Standard_Kit"  243.0517  0.1200  42  50 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  243.0518  0.2292  54  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  243.0529  0.2292  57  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  243.0553  0.2292  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  243.0571  0.2292  60  56 0 0.38 0 0
i "GM_Standard_Kit"  243.2600  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  243.4684  0.1875  36  73 0 0.50 0 0
i "GM_Standard_Kit"  243.4684  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  243.6767  0.3833  38  83 0 0.50 0 0
i "GM_Standard_Kit"  243.6767  0.2200  36  60 0 0.50 0 0
i "GM_Standard_Kit"  243.6767  0.1800  38  66 0 0.48 0 0
i "GM_Standard_Kit"  243.6767  0.1200  42  49 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  243.6780  0.2292  60  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  243.6799  0.2292  54  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  243.6806  0.2292  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  243.6821  0.2292  57  55 0 0.38 0 0
i "GM_Electric_Bass_finger"  243.8850  0.3750  38  71 0 0.50 0 0
i "GM_Koto"  243.8850  0.5625  76  93 0 0.56 0 0
i "GM_Standard_Kit"  243.8850  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"  244.0934  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  244.3017  0.1875  40  72 0 0.50 0 0
i "GM_Standard_Kit"  244.3017  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  244.5100  0.3833  38  84 0 0.50 0 0
i "GM_Standard_Kit"  244.5100  0.2200  36  62 0 0.50 0 0
i "GM_Standard_Kit"  244.5100  0.1200  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"  244.7184  0.1875  40  73 0 0.50 0 0
i "GM_Kalimba"  244.7184  0.3750  74  92 0 0.74 0 0
i "GM_Standard_Kit"  244.7184  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"  244.9267  0.1875  38  71 0 0.50 0 0
i "GM_Standard_Kit"  244.9267  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"  244.9267  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  245.1350  0.3833  38  79 0 0.50 0 0
i "GM_Kalimba"  245.1350  0.1875  71  95 0 0.74 0 0
i "GM_Standard_Kit"  245.1350  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  245.1350  0.1800  38  67 0 0.48 0 0
i "GM_Standard_Kit"  245.1350  0.1200  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"  245.3434  0.1875  38  72 0 0.50 0 0
i "GM_Kalimba"  245.3434  0.3750  72  86 0 0.74 0 0
i "GM_Standard_Kit"  245.3434  0.1200  42  31 0 0.35 0 0
i "GM_Standard_Kit"  245.5517  0.1200  42  36 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  245.5517  0.2292  62  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  245.5519  0.2292  59  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  245.5535  0.2292  55  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  245.5552  0.2292  54  57 0 0.38 0 0
i "GM_Electric_Bass_finger"  245.7600  0.3833  38  82 0 0.50 0 0
i "GM_Kalimba"  245.7600  0.3750  74 100 0 0.74 0 0
i "GM_Standard_Kit"  245.7600  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  245.7600  0.1200  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"  245.9684  0.1875  40  70 0 0.50 0 0
i "GM_Standard_Kit"  245.9684  0.1200  42  33 0 0.35 0 0
i "GM_Bag_pipe"  246.1767  0.3750  69 103 0 0.35 0 0
i "GM_Electric_Bass_finger"  246.1767  0.3833  40  85 0 0.50 0 0
i "GM_Standard_Kit"  246.1767  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"  246.1767  0.1200  42  51 0 0.35 0 0
i "GM_Standard_Kit"  246.3850  0.1200  42  36 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  246.3852  0.2292  55  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  246.3863  0.2292  61  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  246.3899  0.2292  57  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  246.3906  0.2292  52  56 0 0.38 0 0
i "GM_Electric_Bass_finger"  246.5934  0.3833  40  82 0 0.50 0 0
i "GM_Standard_Kit"  246.5934  0.2200  36  65 0 0.50 0 0
i "GM_Standard_Kit"  246.5934  0.1800  38  69 0 0.48 0 0
i "GM_Standard_Kit"  246.5934  0.1200  42  48 0 0.35 0 0
i "GM_Bag_pipe"  246.8017  0.3750  59  87 0 0.35 0 0
i "GM_Electric_Bass_finger"  246.8017  0.3750  40  72 0 0.50 0 0
i "GM_Standard_Kit"  246.8017  0.1200  42  32 0 0.35 0 0
i "GM_Standard_Kit"  247.0100  0.1200  42  36 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  247.0101  0.2292  52  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  247.0103  0.2292  57  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  247.0119  0.2292  61  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  247.0148  0.2292  55  59 0 0.38 0 0
i "GM_Electric_Bass_finger"  247.2184  0.3833  40  80 0 0.50 0 0
i "GM_Standard_Kit"  247.2184  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  247.2184  0.1200  42  51 0 0.35 0 0
i "GM_Bag_pipe"  247.4267  0.3750  57  91 0 0.35 0 0
i "GM_Electric_Bass_finger"  247.4267  0.1875  40  71 0 0.50 0 0
i "GM_Standard_Kit"  247.4267  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  247.6350  0.1875  43  67 0 0.50 0 0
i "GM_Standard_Kit"  247.6350  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  247.8434  0.3833  45  81 0 0.50 0 0
i "GM_Fiddle"  247.8434  0.7500  57  98 0 0.53 0 0
i "GM_Rock_Organ"  247.8434  1.6000  53  32 0 0.55 0 0
i "GM_Rock_Organ"  247.8434  1.6000  57  36 0 0.55 0 0
i "GM_Rock_Organ"  247.8434  1.6000  60  35 0 0.55 0 0
i "GM_Rock_Organ"  247.8434  1.6000  62  35 0 0.55 0 0
i "GM_Standard_Kit"  247.8434  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  247.8434  0.1200  42  48 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  247.8437  0.2292  53  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  247.8448  0.2292  62  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  247.8453  0.2292  57  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  247.8477  0.2292  60  52 0 0.38 0 0
i "GM_Standard_Kit"  248.0517  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  248.2600  0.1875  45  73 0 0.50 0 0
i "GM_Standard_Kit"  248.2600  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  248.4684  0.1875  41  69 0 0.50 0 0
i "GM_Standard_Kit"  248.4684  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  248.6767  0.3833  38  85 0 0.50 0 0
i "GM_Fiddle"  248.6767  0.3750  57 103 0 0.53 0 0
i "GM_Standard_Kit"  248.6767  0.2200  36  66 0 0.50 0 0
i "GM_Standard_Kit"  248.6767  0.1800  38  66 0 0.48 0 0
i "GM_Standard_Kit"  248.6767  0.1200  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  248.6767  0.2292  57  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  248.6771  0.2292  53  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  248.6808  0.2292  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  248.6819  0.2292  60  54 0 0.38 0 0
i "GM_Electric_Bass_finger"  248.8850  0.1875  38  67 0 0.50 0 0
i "GM_Standard_Kit"  248.8850  0.1200  42  32 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  248.8858  0.2292  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  248.8871  0.2292  62  52 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  248.8877  0.2292  57  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  248.8902  0.2292  53  53 0 0.38 0 0
i "GM_Electric_Bass_finger"  249.0934  0.3833  38  85 0 0.50 0 0
i "GM_Standard_Kit"  249.0934  0.2200  36  59 0 0.50 0 0
i "GM_Standard_Kit"  249.0934  0.1200  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"  249.3017  0.1875  40  71 0 0.50 0 0
i "GM_Fiddle"  249.3017  0.1875  58  90 0 0.53 0 0
i "GM_Standard_Kit"  249.3017  0.1200  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  249.5100  0.3833  38  82 0 0.50 0 0
i "GM_Shanai"  249.5100  0.5625  59 102 0 0.71 0 0
i "GM_Standard_Kit"  249.5100  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"  249.5100  0.1200  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  249.5102  0.2292  59  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  249.5120  0.2292  55  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  249.5134  0.2292  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  249.5139  0.2292  53  58 0 0.38 0 0
i "GM_Electric_Bass_finger"  249.7184  0.1875  38  67 0 0.50 0 0
i "GM_Standard_Kit"  249.7184  0.1200  42  34 0 0.35 0 0
i "GM_Electric_Bass_finger"  249.9267  0.1875  41  73 0 0.50 0 0
i "GM_Standard_Kit"  249.9267  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  250.1350  0.3833  43  82 0 0.50 0 0
i "GM_Shanai"  250.1350  0.3750  59 101 0 0.71 0 0
i "GM_Standard_Kit"  250.1350  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  250.1350  0.1800  38  66 0 0.48 0 0
i "GM_Standard_Kit"  250.1350  0.1200  42  50 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  250.1368  0.2292  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  250.1371  0.2292  53  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  250.1400  0.2292  55  53 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  250.1402  0.2292  59  58 0 0.38 0 0
i "GM_Electric_Bass_finger"  250.3434  0.1875  43  68 0 0.50 0 0
i "GM_Standard_Kit"  250.3434  0.1200  42  31 0 0.35 0 0
i "GM_Electric_Bass_finger"  250.5517  0.3833  43  85 0 0.50 0 0
i "GM_Shanai"  250.5517  0.1875  59  97 0 0.71 0 0
i "GM_Standard_Kit"  250.5517  0.2200  36  61 0 0.50 0 0
i "GM_Standard_Kit"  250.5517  0.1200  42  48 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  250.5535  0.2292  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  250.5543  0.2292  55  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  250.5547  0.2292  59  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  250.5570  0.2292  53  52 0 0.38 0 0
i "GM_Electric_Bass_finger"  250.7600  0.1875  43  72 0 0.50 0 0
i "GM_Shanai"  250.7600  0.3750  57  90 0 0.71 0 0
i "GM_Standard_Kit"  250.7600  0.1200  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"  250.9684  0.1875  41  70 0 0.50 0 0
i "GM_Standard_Kit"  250.9684  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  250.9684  0.1200  46  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  251.1767  0.3833  43  79 0 0.50 0 0
i "GM_Standard_Kit"  251.1767  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  251.1767  0.1800  38  71 0 0.48 0 0
i "GM_Standard_Kit"  251.1767  0.1200  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"  251.3850  0.1875  41  71 0 0.50 0 0
i "GM_Shanai"  251.3850  0.1875  55  88 0 0.71 0 0
i "GM_Standard_Kit"  251.3850  0.1200  42  32 0 0.35 0 0
i "GM_Electric_Bass_finger"  251.5934  0.3833  43  81 0 0.50 0 0
i "GM_Standard_Kit"  251.5934  0.2200  36  58 0 0.50 0 0
i "GM_Standard_Kit"  251.5934  0.1200  42  49 0 0.35 0 0
i "GM_Standard_Kit"  251.5934  0.1500  50  75 0 0.40 0 0
i "GM_Shanai"  251.8017  0.3750  60  94 0 0.71 0 0
i "GM_Standard_Kit"  251.8017  0.1200  42  33 0 0.35 0 0
i "GM_Standard_Kit"  251.8017  0.1500  48  82 0 0.43 0 0
i "GM_Electric_Bass_finger"  252.0100  0.1875  45  72 0 0.50 0 0
i "GM_Standard_Kit"  252.0100  0.1200  42  33 0 0.35 0 0
i "GM_Standard_Kit"  252.0100  0.1500  47  74 0 0.46 0 0
i "GM_Electric_Bass_finger"  252.2184  0.3833  43  81 0 0.50 0 0
i "GM_Standard_Kit"  252.2184  0.2200  36  63 0 0.50 0 0
i "GM_Standard_Kit"  252.2184  0.1800  38  70 0 0.48 0 0
i "GM_Standard_Kit"  252.2184  0.1200  42  46 0 0.35 0 0
i "GM_Standard_Kit"  252.2184  0.1500  45  79 0 0.49 0 0
i "GM_Electric_Bass_finger"  252.4267  0.1875  45  68 0 0.50 0 0
i "GM_Shanai"  252.4267  0.3750  59  86 0 0.71 0 0
i "GM_Standard_Kit"  252.4267  0.1200  42  35 0 0.35 0 0
i "GM_Standard_Kit"  252.4267  0.1500  43  84 0 0.52 0 0
i "GM_Electric_Bass_finger"  252.6350  0.1875  43  70 0 0.50 0 0
i "GM_Standard_Kit"  252.6350  0.1200  42  35 0 0.35 0 0
i "GM_Standard_Kit"  252.6350  0.1500  41  78 0 0.55 0 0
i "GM_Standard_Kit"  252.6350  0.2000  49  82 0 0.70 0 0
i "GM_Alto_Sax"  252.8434  0.2212  71  57 0 0.62 0 0
i "GM_Slap_Bass_1"  252.8434  0.3538  43  84 0 0.50 0 0
i "GM_Standard_Kit"  252.8434  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"  252.8434  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  252.8434  0.2200  51  44 0 0.70 0 0
i "GM_Standard_Kit"  252.8434  0.5000  49  86 0 0.72 0 0
i "GM_Tenor_Sax"  252.8434  0.2212  55  57 0 0.35 0 0
i "GM_Trombone"  252.8434  0.2212  60  57 0 0.28 0 0
i "GM_Trumpet"  252.8434  0.2212  76  60 0 0.72 0 0
i "GM_Electric_Piano_1"  252.8447  0.2115  52  52 0 0.42 0 0
i "GM_Electric_Piano_1"  252.8467  0.2115  60  55 0 0.42 0 0
i "GM_Electric_Piano_1"  252.8467  0.2115  55  59 0 0.42 0 0
i "GM_Electric_Piano_1"  252.8471  0.2115  59  60 0 0.42 0 0
i "GM_Slap_Bass_1"  253.0357  0.3462  43  71 0 0.50 0 0
i "GM_Standard_Kit"  253.0357  0.1200  42  39 0 0.35 0 0
i "GM_Standard_Kit"  253.2280  0.1200  42  39 0 0.35 0 0
i "GM_Slap_Bass_1"  253.4203  0.1731  45  70 0 0.50 0 0
i "GM_Standard_Kit"  253.4203  0.1200  42  40 0 0.35 0 0
i "GM_Slap_Bass_1"  253.6126  0.1731  47  69 0 0.50 0 0
i "GM_Standard_Kit"  253.6126  0.1200  42  36 0 0.35 0 0
i "GM_Alto_Sax"  253.8049  0.2212  71  55 0 0.62 0 0
i "GM_Slap_Bass_1"  253.8049  0.3538  48  80 0 0.50 0 0
i "GM_Standard_Kit"  253.8049  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"  253.8049  0.1800  38  81 0 0.48 0 0
i "GM_Standard_Kit"  253.8049  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  253.8049  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  253.8049  0.2212  55  56 0 0.35 0 0
i "GM_Trombone"  253.8049  0.2212  60  61 0 0.28 0 0
i "GM_Trumpet"  253.8049  0.2212  76  57 0 0.72 0 0
i "GM_Electric_Piano_1"  253.8060  0.2115  52  53 0 0.42 0 0
i "GM_Electric_Piano_1"  253.8068  0.2115  55  52 0 0.42 0 0
i "GM_Electric_Piano_1"  253.8087  0.2115  60  52 0 0.42 0 0
i "GM_Electric_Piano_1"  253.8107  0.2115  59  53 0 0.42 0 0
i "GM_Slap_Bass_1"  253.9972  0.1731  47  67 0 0.50 0 0
i "GM_Standard_Kit"  253.9972  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"  254.1895  0.1731  48  72 0 0.50 0 0
i "GM_Standard_Kit"  254.1895  0.1200  46  37 0 0.35 0 0
i "GM_Alto_Sax"  254.3818  0.2212  71  60 0 0.62 0 0
i "GM_Slap_Bass_1"  254.3818  0.3538  47  85 0 0.50 0 0
i "GM_Standard_Kit"  254.3818  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"  254.3818  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  254.3818  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  254.3818  0.2212  55  61 0 0.35 0 0
i "GM_Trombone"  254.3818  0.2212  62  58 0 0.28 0 0
i "GM_Trumpet"  254.3818  0.2212  76  60 0 0.72 0 0
i "GM_Agogo"  254.5741  0.3462  76  88 0 0.51 0 0
i "GM_Slap_Bass_1"  254.5741  0.3462  48  72 0 0.50 0 0
i "GM_Standard_Kit"  254.5741  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"  254.7664  0.1200  42  41 0 0.35 0 0
i "GM_Agogo"  254.9587  0.5192  76 103 0 0.51 0 0
i "GM_Alto_Sax"  254.9587  0.2212  71  58 0 0.62 0 0
i "GM_Slap_Bass_1"  254.9587  0.3538  47  81 0 0.50 0 0
i "GM_Standard_Kit"  254.9587  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"  254.9587  0.1800  38  82 0 0.48 0 0
i "GM_Standard_Kit"  254.9587  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  254.9587  0.2200  51  44 0 0.70 0 0
i "GM_Tenor_Sax"  254.9587  0.2212  55  57 0 0.35 0 0
i "GM_Trombone"  254.9587  0.2212  62  61 0 0.28 0 0
i "GM_Trumpet"  254.9587  0.2212  76  55 0 0.72 0 0
i "GM_Electric_Piano_1"  254.9593  0.2115  62  52 0 0.42 0 0
i "GM_Electric_Piano_1"  254.9607  0.2115  59  60 0 0.42 0 0
i "GM_Electric_Piano_1"  254.9609  0.2115  64  59 0 0.42 0 0
i "GM_Electric_Piano_1"  254.9623  0.2115  55  52 0 0.42 0 0
i "GM_Standard_Kit"  255.1510  0.1200  42  40 0 0.35 0 0
i "GM_Slap_Bass_1"  255.3434  0.1731  48  73 0 0.50 0 0
i "GM_Standard_Kit"  255.3434  0.1200  42  37 0 0.35 0 0
i "GM_Agogo"  255.5357  0.3462  74 102 0 0.51 0 0
i "GM_Slap_Bass_1"  255.5357  0.3538  47  82 0 0.50 0 0
i "GM_Standard_Kit"  255.5357  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"  255.5357  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  255.5357  0.2200  51  49 0 0.70 0 0
i "GM_Electric_Piano_1"  255.5391  0.2115  64  57 0 0.42 0 0
i "GM_Electric_Piano_1"  255.5393  0.2115  62  57 0 0.42 0 0
i "GM_Electric_Piano_1"  255.5403  0.2115  55  57 0 0.42 0 0
i "GM_Electric_Piano_1"  255.5403  0.2115  59  58 0 0.42 0 0
i "GM_Slap_Bass_1"  255.7280  0.1731  48  71 0 0.50 0 0
i "GM_Standard_Kit"  255.7280  0.1200  42  40 0 0.35 0 0
i "GM_Alto_Sax"  255.9203  0.2212  69  59 0 0.62 0 0
i "GM_Slap_Bass_1"  255.9203  0.3538  45  79 0 0.50 0 0
i "GM_Standard_Kit"  255.9203  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"  255.9203  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  255.9203  0.2200  51  45 0 0.70 0 0
i "GM_Steel_Drums"  255.9203  0.3462  72  96 0 0.69 0 0
i "GM_Tenor_Sax"  255.9203  0.2212  55  59 0 0.35 0 0
i "GM_Trombone"  255.9203  0.2212  60  59 0 0.28 0 0
i "GM_Trumpet"  255.9203  0.2212  76  61 0 0.72 0 0
i "GM_Electric_Piano_1"  255.9214  0.2115  60  52 0 0.42 0 0
i "GM_Electric_Piano_1"  255.9222  0.2115  64  55 0 0.42 0 0
i "GM_Electric_Piano_1"  255.9237  0.2115  57  59 0 0.42 0 0
i "GM_Electric_Piano_1"  255.9263  0.2115  55  52 0 0.42 0 0
i "GM_Slap_Bass_1"  256.1126  0.1731  47  67 0 0.50 0 0
i "GM_Standard_Kit"  256.1126  0.1200  42  39 0 0.35 0 0
i "GM_Alto_Sax"  256.3049  0.2212  69  55 0 0.62 0 0
i "GM_Slap_Bass_1"  256.3049  0.3538  45  84 0 0.50 0 0
i "GM_Standard_Kit"  256.3049  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"  256.3049  0.1800  38  80 0 0.48 0 0
i "GM_Standard_Kit"  256.3049  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  256.3049  0.2200  51  45 0 0.70 0 0
i "GM_Tenor_Sax"  256.3049  0.2212  55  58 0 0.35 0 0
i "GM_Trombone"  256.3049  0.2212  60  58 0 0.28 0 0
i "GM_Trumpet"  256.3049  0.2212  76  61 0 0.72 0 0
i "GM_Electric_Piano_1"  256.3049  0.2115  57  55 0 0.42 0 0
i "GM_Electric_Piano_1"  256.3052  0.2115  64  57 0 0.42 0 0
i "GM_Electric_Piano_1"  256.3095  0.2115  60  56 0 0.42 0 0
i "GM_Electric_Piano_1"  256.3096  0.2115  55  60 0 0.42 0 0
i "GM_Standard_Kit"  256.4972  0.1200  42  37 0 0.35 0 0
i "GM_Steel_Drums"  256.4972  0.1731  74  91 0 0.69 0 0
i "GM_Alto_Sax"  256.6895  0.2212  69  56 0 0.62 0 0
i "GM_Slap_Bass_1"  256.6895  0.3538  45  84 0 0.50 0 0
i "GM_Standard_Kit"  256.6895  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"  256.6895  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  256.6895  0.2200  51  46 0 0.70 0 0
i "GM_Steel_Drums"  256.6895  0.3462  72 100 0 0.69 0 0
i "GM_Tenor_Sax"  256.6895  0.2212  55  59 0 0.35 0 0
i "GM_Trombone"  256.6895  0.2212  60  57 0 0.28 0 0
i "GM_Trumpet"  256.6895  0.2212  76  62 0 0.72 0 0
i "GM_Slap_Bass_1"  256.8818  0.1731  45  69 0 0.50 0 0
i "GM_Standard_Kit"  256.8818  0.1200  42  39 0 0.35 0 0
i "GM_Electric_Piano_1"  256.8822  0.2115  60  54 0 0.42 0 0
i "GM_Electric_Piano_1"  256.8842  0.2115  64  52 0 0.42 0 0
i "GM_Electric_Piano_1"  256.8852  0.2115  55  59 0 0.42 0 0
i "GM_Electric_Piano_1"  256.8862  0.2115  57  60 0 0.42 0 0
i "GM_Slap_Bass_1"  257.0741  0.3538  45  81 0 0.50 0 0
i "GM_Standard_Kit"  257.0741  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  257.0741  0.1800  38  79 0 0.48 0 0
i "GM_Standard_Kit"  257.0741  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  257.0741  0.2200  51  45 0 0.70 0 0
i "GM_Steel_Drums"  257.0741  0.3462  72  98 0 0.69 0 0
i "GM_Standard_Kit"  257.2664  0.1200  42  40 0 0.35 0 0
i "GM_Alto_Sax"  257.4587  0.2212  72  59 0 0.62 0 0
i "GM_Slap_Bass_1"  257.4587  0.3538  45  80 0 0.50 0 0
i "GM_Standard_Kit"  257.4587  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"  257.4587  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  257.4587  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  257.4587  0.2212  57  55 0 0.35 0 0
i "GM_Trombone"  257.4587  0.2212  62  62 0 0.28 0 0
i "GM_Trumpet"  257.4587  0.2212  78  60 0 0.72 0 0
i "GM_Woodblock"  257.4587  0.1635  62  80 0 0.31 0 0
i "GM_Slap_Bass_1"  257.6510  0.1731  42  73 0 0.50 0 0
i "GM_Standard_Kit"  257.6510  0.1200  42  36 0 0.35 0 0
i "GM_Woodblock"  257.6510  0.1635  69  92 0 0.31 0 0
i "GM_Slap_Bass_1"  257.8434  0.1731  43  72 0 0.50 0 0
i "GM_Standard_Kit"  257.8434  0.1200  42  41 0 0.35 0 0
i "GM_Slap_Bass_1"  258.0357  0.3538  45  84 0 0.50 0 0
i "GM_Standard_Kit"  258.0357  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  258.0357  0.1800  38  78 0 0.48 0 0
i "GM_Standard_Kit"  258.0357  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  258.0357  0.2200  51  46 0 0.70 0 0
i "GM_Electric_Piano_1"  258.0370  0.2115  54  54 0 0.42 0 0
i "GM_Electric_Piano_1"  258.0380  0.2115  57  59 0 0.42 0 0
i "GM_Electric_Piano_1"  258.0397  0.2115  60  58 0 0.42 0 0
i "GM_Electric_Piano_1"  258.0402  0.2115  62  60 0 0.42 0 0
i "GM_Slap_Bass_1"  258.2280  0.3462  48  72 0 0.50 0 0
i "GM_Standard_Kit"  258.2280  0.1200  42  36 0 0.35 0 0
i "GM_Woodblock"  258.2280  0.1635  69  90 0 0.31 0 0
i "GM_Standard_Kit"  258.4203  0.1200  46  41 0 0.35 0 0
i "GM_Woodblock"  258.4203  0.1635  62  90 0 0.31 0 0
i "GM_Alto_Sax"  258.6126  0.2212  72  61 0 0.62 0 0
i "GM_Slap_Bass_1"  258.6126  0.3538  50  83 0 0.50 0 0
i "GM_Standard_Kit"  258.6126  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"  258.6126  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  258.6126  0.2200  51  45 0 0.70 0 0
i "GM_Tenor_Sax"  258.6126  0.2212  57  57 0 0.35 0 0
i "GM_Trombone"  258.6126  0.2212  62  56 0 0.28 0 0
i "GM_Trumpet"  258.6126  0.2212  78  59 0 0.72 0 0
i "GM_Woodblock"  258.6126  0.1635  62  84 0 0.31 0 0
i "GM_Electric_Piano_1"  258.6136  0.2115  60  55 0 0.42 0 0
i "GM_Electric_Piano_1"  258.6139  0.2115  62  55 0 0.42 0 0
i "GM_Electric_Piano_1"  258.6149  0.2115  54  56 0 0.42 0 0
i "GM_Electric_Piano_1"  258.6173  0.2115  57  59 0 0.42 0 0
i "GM_Slap_Bass_1"  258.8049  0.1731  48  68 0 0.50 0 0
i "GM_Standard_Kit"  258.8049  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"  258.9972  0.1731  50  70 0 0.50 0 0
i "GM_Standard_Kit"  258.9972  0.1200  42  40 0 0.35 0 0
i "GM_Woodblock"  258.9972  0.1635  62  79 0 0.31 0 0
i "GM_Slap_Bass_1"  259.1895  0.3462  48  71 0 0.50 0 0
i "GM_Standard_Kit"  259.1895  0.1200  42  38 0 0.35 0 0
i "GM_Woodblock"  259.1895  0.1635  69  91 0 0.31 0 0
i "GM_Standard_Kit"  259.3818  0.1200  46  41 0 0.35 0 0
i "GM_Woodblock"  259.3818  0.1635  62  84 0 0.31 0 0
i "GM_Alto_Sax"  259.5741  0.2212  72  56 0 0.62 0 0
i "GM_Slap_Bass_1"  259.5741  0.1769  50  79 0 0.50 0 0
i "GM_Standard_Kit"  259.5741  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"  259.5741  0.1800  38  77 0 0.48 0 0
i "GM_Standard_Kit"  259.5741  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  259.5741  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  259.5741  0.2212  57  60 0 0.35 0 0
i "GM_Trombone"  259.5741  0.2212  62  59 0 0.28 0 0
i "GM_Trumpet"  259.5741  0.2212  78  56 0 0.72 0 0
i "GM_Woodblock"  259.5741  0.1635  62  83 0 0.31 0 0
i "GM_Alto_Sax"  259.7664  0.2212  72  61 0 0.62 0 0
i "GM_Slap_Bass_1"  259.7664  0.3538  48  79 0 0.50 0 0
i "GM_Standard_Kit"  259.7664  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"  259.7664  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  259.7664  0.2200  51  48 0 0.70 0 0
i "GM_Taiko_Drum"  259.7664  0.1635  36  82 0 0.49 0 0
i "GM_Tenor_Sax"  259.7664  0.2212  58  55 0 0.35 0 0
i "GM_Trombone"  259.7664  0.2212  63  58 0 0.28 0 0
i "GM_Trumpet"  259.7664  0.2212  79  55 0 0.72 0 0
i "GM_Slap_Bass_1"  259.9587  0.1731  46  68 0 0.50 0 0
i "GM_Standard_Kit"  259.9587  0.1200  42  37 0 0.35 0 0
i "GM_Taiko_Drum"  259.9587  0.1635  43  78 0 0.49 0 0
i "GM_Alto_Sax"  260.1510  0.2212  72  57 0 0.62 0 0
i "GM_Slap_Bass_1"  260.1510  0.3538  48  85 0 0.50 0 0
i "GM_Standard_Kit"  260.1510  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"  260.1510  0.1800  38  78 0 0.48 0 0
i "GM_Standard_Kit"  260.1510  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  260.1510  0.2200  51  45 0 0.70 0 0
i "GM_Tenor_Sax"  260.1510  0.2212  58  62 0 0.35 0 0
i "GM_Trombone"  260.1510  0.2212  63  56 0 0.28 0 0
i "GM_Trumpet"  260.1510  0.2212  79  55 0 0.72 0 0
i "GM_Electric_Piano_1"  260.1514  0.2115  58  55 0 0.42 0 0
i "GM_Electric_Piano_1"  260.1522  0.2115  63  52 0 0.42 0 0
i "GM_Electric_Piano_1"  260.1550  0.2115  67  52 0 0.42 0 0
i "GM_Electric_Piano_1"  260.1553  0.2115  60  52 0 0.42 0 0
i "GM_Slap_Bass_1"  260.3434  0.1731  48  71 0 0.50 0 0
i "GM_Standard_Kit"  260.3434  0.1200  42  41 0 0.35 0 0
i "GM_Slap_Bass_1"  260.5357  0.3538  48  82 0 0.50 0 0
i "GM_Standard_Kit"  260.5357  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"  260.5357  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  260.5357  0.2200  51  48 0 0.70 0 0
i "GM_Taiko_Drum"  260.5357  0.1635  43  90 0 0.49 0 0
i "GM_Standard_Kit"  260.7280  0.1200  42  39 0 0.35 0 0
i "GM_Taiko_Drum"  260.7280  0.1635  43  82 0 0.49 0 0
i "GM_Slap_Bass_1"  260.9203  0.3538  48  84 0 0.50 0 0
i "GM_Standard_Kit"  260.9203  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"  260.9203  0.1800  38  83 0 0.48 0 0
i "GM_Standard_Kit"  260.9203  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  260.9203  0.2200  51  48 0 0.70 0 0
i "GM_Taiko_Drum"  260.9203  0.1635  36  94 0 0.49 0 0
i "GM_Electric_Piano_1"  260.9213  0.2115  63  55 0 0.42 0 0
i "GM_Electric_Piano_1"  260.9215  0.2115  60  53 0 0.42 0 0
i "GM_Electric_Piano_1"  260.9217  0.2115  58  57 0 0.42 0 0
i "GM_Electric_Piano_1"  260.9237  0.2115  67  59 0 0.42 0 0
i "GM_Slap_Bass_1"  261.1126  0.1731  46  69 0 0.50 0 0
i "GM_Standard_Kit"  261.1126  0.1200  42  36 0 0.35 0 0
i "GM_Taiko_Drum"  261.1126  0.1635  36  92 0 0.49 0 0
i "GM_Alto_Sax"  261.3049  0.2212  63  60 0 0.62 0 0
i "GM_Slap_Bass_1"  261.3049  0.3538  48  79 0 0.50 0 0
i "GM_Standard_Kit"  261.3049  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"  261.3049  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  261.3049  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  261.3049  0.2212  60  57 0 0.35 0 0
i "GM_Trombone"  261.3049  0.2212  65  61 0 0.28 0 0
i "GM_Trumpet"  261.3049  0.2212  81  61 0 0.72 0 0
i "GM_Slap_Bass_1"  261.4972  0.1731  48  68 0 0.50 0 0
i "GM_Standard_Kit"  261.4972  0.1200  42  36 0 0.35 0 0
i "GM_Melodic_Tom"  261.6895  0.1635  48  87 0 0.67 0 0
i "GM_Slap_Bass_1"  261.6895  0.3462  46  67 0 0.50 0 0
i "GM_Standard_Kit"  261.6895  0.1200  42  39 0 0.35 0 0
i "GM_Standard_Kit"  261.8818  0.1200  42  40 0 0.35 0 0
i "GM_Slap_Bass_1"  262.0741  0.1731  45  67 0 0.50 0 0
i "GM_Standard_Kit"  262.0741  0.1200  42  38 0 0.35 0 0
i "GM_Melodic_Tom"  262.2664  0.1635  53  79 0 0.67 0 0
i "GM_Slap_Bass_1"  262.2664  0.3538  46  83 0 0.50 0 0
i "GM_Standard_Kit"  262.2664  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"  262.2664  0.1800  38  81 0 0.48 0 0
i "GM_Standard_Kit"  262.2664  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  262.2664  0.2200  51  45 0 0.70 0 0
i "GM_Electric_Piano_1"  262.2671  0.2115  62  60 0 0.42 0 0
i "GM_Electric_Piano_1"  262.2676  0.2115  69  56 0 0.42 0 0
i "GM_Electric_Piano_1"  262.2702  0.2115  58  60 0 0.42 0 0
i "GM_Electric_Piano_1"  262.2718  0.2115  65  52 0 0.42 0 0
i "GM_Slap_Bass_1"  262.4587  0.3462  48  71 0 0.50 0 0
i "GM_Standard_Kit"  262.4587  0.1200  42  37 0 0.35 0 0
i "GM_Melodic_Tom"  262.6510  0.1635  41  86 0 0.67 0 0
i "GM_Standard_Kit"  262.6510  0.1200  42  40 0 0.35 0 0
i "GM_Alto_Sax"  262.8434  0.2212  62  57 0 0.62 0 0
i "GM_Slap_Bass_1"  262.8434  0.3538  46  84 0 0.50 0 0
i "GM_Standard_Kit"  262.8434  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"  262.8434  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  262.8434  0.2200  51  48 0 0.70 0 0
i "GM_Synth_Drum"  262.8434  0.1635  53  83 0 0.29 0 0
i "GM_Tenor_Sax"  262.8434  0.2212  58  56 0 0.35 0 0
i "GM_Trombone"  262.8434  0.2212  65  57 0 0.28 0 0
i "GM_Trumpet"  262.8434  0.2212  81  56 0 0.72 0 0
i "GM_Electric_Piano_1"  262.8434  0.2115  62  54 0 0.42 0 0
i "GM_Electric_Piano_1"  262.8465  0.2115  69  55 0 0.42 0 0
i "GM_Electric_Piano_1"  262.8487  0.2115  65  52 0 0.42 0 0
i "GM_Electric_Piano_1"  262.8489  0.2115  58  53 0 0.42 0 0
i "GM_Slap_Bass_1"  263.0357  0.3462  48  69 0 0.50 0 0
i "GM_Standard_Kit"  263.0357  0.1200  42  41 0 0.35 0 0
i "GM_Synth_Drum"  263.0357  0.1635  46  92 0 0.29 0 0
i "GM_Standard_Kit"  263.2280  0.1200  42  39 0 0.35 0 0
i "GM_Alto_Sax"  263.4203  0.2212  62  62 0 0.62 0 0
i "GM_Slap_Bass_1"  263.4203  0.3538  46  79 0 0.50 0 0
i "GM_Standard_Kit"  263.4203  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"  263.4203  0.1800  38  81 0 0.48 0 0
i "GM_Standard_Kit"  263.4203  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  263.4203  0.2200  51  44 0 0.70 0 0
i "GM_Synth_Drum"  263.4203  0.1635  58  91 0 0.29 0 0
i "GM_Tenor_Sax"  263.4203  0.2212  58  57 0 0.35 0 0
i "GM_Trombone"  263.4203  0.2212  65  62 0 0.28 0 0
i "GM_Trumpet"  263.4203  0.2212  81  56 0 0.72 0 0
i "GM_Electric_Piano_1"  263.4223  0.2115  65  55 0 0.42 0 0
i "GM_Electric_Piano_1"  263.4227  0.2115  58  58 0 0.42 0 0
i "GM_Electric_Piano_1"  263.4229  0.2115  62  57 0 0.42 0 0
i "GM_Electric_Piano_1"  263.4236  0.2115  69  54 0 0.42 0 0
i "GM_Slap_Bass_1"  263.6126  0.1731  46  72 0 0.50 0 0
i "GM_Standard_Kit"  263.6126  0.1200  42  37 0 0.35 0 0
i "GM_Slap_Bass_1"  263.8049  0.3538  46  80 0 0.50 0 0
i "GM_Standard_Kit"  263.8049  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"  263.8049  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  263.8049  0.2200  51  47 0 0.70 0 0
i "GM_Synth_Drum"  263.8049  0.1635  58  80 0 0.29 0 0
i "GM_Electric_Piano_1"  263.8052  0.2115  69  56 0 0.42 0 0
i "GM_Electric_Piano_1"  263.8057  0.2115  65  56 0 0.42 0 0
i "GM_Electric_Piano_1"  263.8065  0.2115  58  57 0 0.42 0 0
i "GM_Electric_Piano_1"  263.8102  0.2115  62  59 0 0.42 0 0
i "GM_Slap_Bass_1"  263.9972  0.1731  45  72 0 0.50 0 0
i "GM_Standard_Kit"  263.9972  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"  264.1895  0.1731  46  68 0 0.50 0 0
i "GM_Standard_Kit"  264.1895  0.1200  42  37 0 0.35 0 0
i "GM_Synth_Drum"  264.1895  0.1635  53  83 0 0.29 0 0
i "GM_Alto_Sax"  264.3818  0.2212  62  61 0 0.62 0 0
i "GM_Reverse_Cymbal"  264.3818  2.7692  60  84 0 0.47 0 0
i "GM_Slap_Bass_1"  264.3818  0.3538  46  82 0 0.50 0 0
i "GM_Standard_Kit"  264.3818  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  264.3818  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  264.3818  0.2200  51  46 0 0.70 0 0
i "GM_Tenor_Sax"  264.3818  0.2212  58  62 0 0.35 0 0
i "GM_Trombone"  264.3818  0.2212  63  58 0 0.28 0 0
i "GM_Trumpet"  264.3818  0.2212  79  57 0 0.72 0 0
i "GM_Slap_Bass_1"  264.5741  0.1731  44  69 0 0.50 0 0
i "GM_Standard_Kit"  264.5741  0.1200  42  38 0 0.35 0 0
i "GM_Electric_Piano_1"  264.5748  0.2115  63  55 0 0.42 0 0
i "GM_Electric_Piano_1"  264.5759  0.2115  67  59 0 0.42 0 0
i "GM_Electric_Piano_1"  264.5764  0.2115  58  53 0 0.42 0 0
i "GM_Electric_Piano_1"  264.5793  0.2115  62  56 0 0.42 0 0
i "GM_Slap_Bass_1"  264.7664  0.3538  46  84 0 0.50 0 0
i "GM_Standard_Kit"  264.7664  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"  264.7664  0.1800  38  77 0 0.48 0 0
i "GM_Standard_Kit"  264.7664  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  264.7664  0.2200  51  47 0 0.70 0 0
i "GM_Slap_Bass_1"  264.9587  0.1731  48  70 0 0.50 0 0
i "GM_Standard_Kit"  264.9587  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"  265.1510  0.1731  48  70 0 0.50 0 0
i "GM_Standard_Kit"  265.1510  0.1200  42  41 0 0.35 0 0
i "GM_Alto_Sax"  265.3434  0.2212  62  58 0 0.62 0 0
i "GM_Slap_Bass_1"  265.3434  0.3538  46  81 0 0.50 0 0
i "GM_Standard_Kit"  265.3434  0.2200  36  68 0 0.50 0 0
i "GM_Standard_Kit"  265.3434  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  265.3434  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  265.3434  0.2212  58  56 0 0.35 0 0
i "GM_Trombone"  265.3434  0.2212  63  57 0 0.28 0 0
i "GM_Trumpet"  265.3434  0.2212  79  55 0 0.72 0 0
i "GM_Standard_Kit"  265.5357  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"  265.7280  0.1731  48  69 0 0.50 0 0
i "GM_Standard_Kit"  265.7280  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"  265.7280  0.1200  42  37 0 0.35 0 0
i "GM_Alto_Sax"  265.9203  0.2212  62  56 0 0.62 0 0
i "GM_Reverse_Cymbal"  265.9203  1.2308  60  78 0 0.47 0 0
i "GM_Slap_Bass_1"  265.9203  0.3538  46  80 0 0.50 0 0
i "GM_Standard_Kit"  265.9203  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  265.9203  0.1800  38  82 0 0.48 0 0
i "GM_Standard_Kit"  265.9203  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  265.9203  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  265.9203  0.2212  58  56 0 0.35 0 0
i "GM_Trombone"  265.9203  0.2212  63  58 0 0.28 0 0
i "GM_Trumpet"  265.9203  0.2212  79  62 0 0.72 0 0
i "GM_Electric_Piano_1"  265.9212  0.2115  58  54 0 0.42 0 0
i "GM_Electric_Piano_1"  265.9231  0.2115  63  60 0 0.42 0 0
i "GM_Electric_Piano_1"  265.9239  0.2115  62  58 0 0.42 0 0
i "GM_Electric_Piano_1"  265.9251  0.2115  67  54 0 0.42 0 0
i "GM_Slap_Bass_1"  266.1126  0.1731  48  67 0 0.50 0 0
i "GM_Standard_Kit"  266.1126  0.1200  42  37 0 0.35 0 0
i "GM_Alto_Sax"  266.3049  0.2212  62  55 0 0.62 0 0
i "GM_Slap_Bass_1"  266.3049  0.3538  46  82 0 0.50 0 0
i "GM_Standard_Kit"  266.3049  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"  266.3049  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  266.3049  0.2200  51  44 0 0.70 0 0
i "GM_Standard_Kit"  266.3049  0.1500  50  77 0 0.40 0 0
i "GM_Tenor_Sax"  266.3049  0.2212  58  56 0 0.35 0 0
i "GM_Trombone"  266.3049  0.2212  63  62 0 0.28 0 0
i "GM_Trumpet"  266.3049  0.2212  79  60 0 0.72 0 0
i "GM_Electric_Piano_1"  266.3067  0.2115  62  56 0 0.42 0 0
i "GM_Electric_Piano_1"  266.3069  0.2115  67  57 0 0.42 0 0
i "GM_Electric_Piano_1"  266.3081  0.2115  58  60 0 0.42 0 0
i "GM_Electric_Piano_1"  266.3095  0.2115  63  56 0 0.42 0 0
i "GM_Slap_Bass_1"  266.4972  0.1731  48  70 0 0.50 0 0
i "GM_Standard_Kit"  266.4972  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  266.4972  0.1500  48  79 0 0.43 0 0
i "GM_Slap_Bass_1"  266.6895  0.1731  46  73 0 0.50 0 0
i "GM_Standard_Kit"  266.6895  0.1200  46  40 0 0.35 0 0
i "GM_Standard_Kit"  266.6895  0.1500  47  78 0 0.46 0 0
i "GM_Electric_Piano_1"  266.6903  0.2115  63  60 0 0.42 0 0
i "GM_Electric_Piano_1"  266.6909  0.2115  67  60 0 0.42 0 0
i "GM_Electric_Piano_1"  266.6920  0.2115  58  57 0 0.42 0 0
i "GM_Electric_Piano_1"  266.6925  0.2115  62  58 0 0.42 0 0
i "GM_Alto_Sax"  266.8818  0.2212  62  55 0 0.62 0 0
i "GM_Slap_Bass_1"  266.8818  0.3538  46  84 0 0.50 0 0
i "GM_Standard_Kit"  266.8818  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"  266.8818  0.1800  38  76 0 0.48 0 0
i "GM_Standard_Kit"  266.8818  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  266.8818  0.2200  51  47 0 0.70 0 0
i "GM_Standard_Kit"  266.8818  0.1500  45  84 0 0.49 0 0
i "GM_Tenor_Sax"  266.8818  0.2212  58  56 0 0.35 0 0
i "GM_Trombone"  266.8818  0.2212  63  60 0 0.28 0 0
i "GM_Trumpet"  266.8818  0.2212  79  62 0 0.72 0 0
i "GM_Standard_Kit"  267.0741  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  267.0741  0.1500  43  86 0 0.52 0 0
i "GM_Slap_Bass_1"  267.2664  0.1731  44  71 0 0.50 0 0
i "GM_Standard_Kit"  267.2664  0.1200  46  39 0 0.35 0 0
i "GM_Standard_Kit"  267.2664  0.1500  41  81 0 0.55 0 0
i "GM_Standard_Kit"  267.2664  0.2000  49  82 0 0.70 0 0
i "GM_Alto_Sax"  267.4587  0.2212  72  59 0 0.62 0 0
i "GM_Guitar_Fret_Noise"  267.4587  1.3846  60  84 0 0.65 0 0
i "GM_Slap_Bass_1"  267.4587  0.3538  45  81 0 0.50 0 0
i "GM_Standard_Kit"  267.4587  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"  267.4587  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  267.4587  0.2200  51  48 0 0.70 0 0
i "GM_Standard_Kit"  267.4587  0.5000  49  86 0 0.72 0 0
i "GM_Standard_Kit"  267.4587  0.3500  57  68 0 0.78 0 0
i "GM_Tenor_Sax"  267.4587  0.2212  57  57 0 0.35 0 0
i "GM_Trombone"  267.4587  0.2212  64  58 0 0.28 0 0
i "GM_Trumpet"  267.4587  0.2212  79  61 0 0.72 0 0
i "GM_Slap_Bass_1"  267.6510  0.1731  43  71 0 0.50 0 0
i "GM_Standard_Kit"  267.6510  0.1200  42  37 0 0.35 0 0
i "GM_Electric_Piano_1"  267.6527  0.2115  67  55 0 0.42 0 0
i "GM_Electric_Piano_1"  267.6545  0.2115  60  53 0 0.42 0 0
i "GM_Electric_Piano_1"  267.6550  0.2115  57  54 0 0.42 0 0
i "GM_Electric_Piano_1"  267.6561  0.2115  64  55 0 0.42 0 0
i "GM_Slap_Bass_1"  267.8434  0.3538  45  85 0 0.50 0 0
i "GM_Standard_Kit"  267.8434  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"  267.8434  0.1800  38  78 0 0.48 0 0
i "GM_Standard_Kit"  267.8434  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  267.8434  0.2200  51  44 0 0.70 0 0
i "GM_Slap_Bass_1"  268.0357  0.1731  43  73 0 0.50 0 0
i "GM_Standard_Kit"  268.0357  0.1200  42  36 0 0.35 0 0
i "GM_Alto_Sax"  268.2280  0.2212  72  59 0 0.62 0 0
i "GM_Slap_Bass_1"  268.2280  0.3538  45  82 0 0.50 0 0
i "GM_Standard_Kit"  268.2280  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"  268.2280  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  268.2280  0.2200  51  46 0 0.70 0 0
i "GM_Tenor_Sax"  268.2280  0.2212  57  61 0 0.35 0 0
i "GM_Trombone"  268.2280  0.2212  64  56 0 0.28 0 0
i "GM_Trumpet"  268.2280  0.2212  79  55 0 0.72 0 0
i "GM_Slap_Bass_1"  268.4203  0.3462  43  69 0 0.50 0 0
i "GM_Standard_Kit"  268.4203  0.1200  42  37 0 0.35 0 0
i "GM_Standard_Kit"  268.6126  0.1200  42  39 0 0.35 0 0
i "GM_Alto_Sax"  268.8049  0.2212  72  55 0 0.62 0 0
i "GM_Slap_Bass_1"  268.8049  0.1769  45  81 0 0.50 0 0
i "GM_Standard_Kit"  268.8049  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"  268.8049  0.1800  38  80 0 0.48 0 0
i "GM_Standard_Kit"  268.8049  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  268.8049  0.2200  51  46 0 0.70 0 0
i "GM_Tenor_Sax"  268.8049  0.2212  57  56 0 0.35 0 0
i "GM_Trombone"  268.8049  0.2212  64  61 0 0.28 0 0
i "GM_Trumpet"  268.8049  0.2212  79  57 0 0.72 0 0
i "GM_Electric_Piano_1"  268.8055  0.2115  67  57 0 0.42 0 0
i "GM_Electric_Piano_1"  268.8057  0.2115  64  53 0 0.42 0 0
i "GM_Electric_Piano_1"  268.8063  0.2115  60  55 0 0.42 0 0
i "GM_Electric_Piano_1"  268.8069  0.2115  57  53 0 0.42 0 0
i "GM_Alto_Sax"  268.9972  0.2212  72  57 0 0.62 0 0
i "GM_Breath_Noise"  268.9972  1.3846  60  84 0 0.26 0 0
i "GM_Slap_Bass_1"  268.9972  0.3538  45  81 0 0.50 0 0
i "GM_Standard_Kit"  268.9972  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"  268.9972  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  268.9972  0.2200  51  46 0 0.70 0 0
i "GM_Tenor_Sax"  268.9972  0.2212  57  55 0 0.35 0 0
i "GM_Trombone"  268.9972  0.2212  62  59 0 0.28 0 0
i "GM_Trumpet"  268.9972  0.2212  78  56 0 0.72 0 0
i "GM_Electric_Piano_1"  268.9981  0.2115  60  57 0 0.42 0 0
i "GM_Electric_Piano_1"  269.0004  0.2115  62  60 0 0.42 0 0
i "GM_Electric_Piano_1"  269.0007  0.2115  66  60 0 0.42 0 0
i "GM_Electric_Piano_1"  269.0023  0.2115  57  60 0 0.42 0 0
i "GM_Slap_Bass_1"  269.1895  0.1731  45  69 0 0.50 0 0
i "GM_Standard_Kit"  269.1895  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Piano_1"  269.1896  0.2115  66  56 0 0.42 0 0
i "GM_Electric_Piano_1"  269.1901  0.2115  57  52 0 0.42 0 0
i "GM_Electric_Piano_1"  269.1949  0.2115  62  53 0 0.42 0 0
i "GM_Electric_Piano_1"  269.1951  0.2115  60  60 0 0.42 0 0
i "GM_Alto_Sax"  269.3818  0.2212  72  55 0 0.62 0 0
i "GM_Slap_Bass_1"  269.3818  0.3538  45  82 0 0.50 0 0
i "GM_Standard_Kit"  269.3818  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"  269.3818  0.1800  38  76 0 0.48 0 0
i "GM_Standard_Kit"  269.3818  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  269.3818  0.2200  51  49 0 0.70 0 0
i "GM_Tenor_Sax"  269.3818  0.2212  57  60 0 0.35 0 0
i "GM_Trombone"  269.3818  0.2212  62  55 0 0.28 0 0
i "GM_Trumpet"  269.3818  0.2212  78  58 0 0.72 0 0
i "GM_Slap_Bass_1"  269.5741  0.3462  45  70 0 0.50 0 0
i "GM_Standard_Kit"  269.5741  0.1200  42  37 0 0.35 0 0
i "GM_Standard_Kit"  269.7664  0.1200  46  36 0 0.35 0 0
i "GM_Slap_Bass_1"  269.9587  0.3538  45  81 0 0.50 0 0
i "GM_Standard_Kit"  269.9587  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"  269.9587  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  269.9587  0.2200  51  48 0 0.70 0 0
i "GM_Slap_Bass_1"  270.1510  0.3462  45  72 0 0.50 0 0
i "GM_Standard_Kit"  270.1510  0.1200  42  39 0 0.35 0 0
i "GM_Standard_Kit"  270.3434  0.1200  42  38 0 0.35 0 0
i "GM_Seashore"  270.5357  1.3846  60  84 0 0.44 0 0
i "GM_Slap_Bass_1"  270.5357  0.3538  43  81 0 0.50 0 0
i "GM_Standard_Kit"  270.5357  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  270.5357  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  270.5357  0.2200  51  45 0 0.70 0 0
i "GM_Slap_Bass_1"  270.7280  0.1731  42  70 0 0.50 0 0
i "GM_Standard_Kit"  270.7280  0.1200  42  39 0 0.35 0 0
i "GM_Electric_Piano_1"  270.7281  0.2115  59  60 0 0.42 0 0
i "GM_Electric_Piano_1"  270.7300  0.2115  55  57 0 0.42 0 0
i "GM_Electric_Piano_1"  270.7326  0.2115  66  59 0 0.42 0 0
i "GM_Electric_Piano_1"  270.7328  0.2115  62  53 0 0.42 0 0
i "GM_Alto_Sax"  270.9203  0.2212  71  56 0 0.62 0 0
i "GM_Slap_Bass_1"  270.9203  0.3538  43  84 0 0.50 0 0
i "GM_Standard_Kit"  270.9203  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"  270.9203  0.1800  38  78 0 0.48 0 0
i "GM_Standard_Kit"  270.9203  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  270.9203  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  270.9203  0.2212  55  56 0 0.35 0 0
i "GM_Trombone"  270.9203  0.2212  62  60 0 0.28 0 0
i "GM_Trumpet"  270.9203  0.2212  78  56 0 0.72 0 0
i "GM_Slap_Bass_1"  271.1126  0.1731  42  69 0 0.50 0 0
i "GM_Standard_Kit"  271.1126  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Piano_1"  271.1131  0.2115  59  52 0 0.42 0 0
i "GM_Electric_Piano_1"  271.1147  0.2115  55  55 0 0.42 0 0
i "GM_Electric_Piano_1"  271.1175  0.2115  62  59 0 0.42 0 0
i "GM_Electric_Piano_1"  271.1180  0.2115  66  53 0 0.42 0 0
i "GM_Alto_Sax"  271.3049  0.2212  71  60 0 0.62 0 0
i "GM_Slap_Bass_1"  271.3049  0.3538  43  81 0 0.50 0 0
i "GM_Standard_Kit"  271.3049  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"  271.3049  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  271.3049  0.2200  51  44 0 0.70 0 0
i "GM_Tenor_Sax"  271.3049  0.2212  55  57 0 0.35 0 0
i "GM_Trombone"  271.3049  0.2212  62  57 0 0.28 0 0
i "GM_Trumpet"  271.3049  0.2212  78  56 0 0.72 0 0
i "GM_Slap_Bass_1"  271.4972  0.1731  42  69 0 0.50 0 0
i "GM_Standard_Kit"  271.4972  0.1200  42  40 0 0.35 0 0
i "GM_Electric_Piano_1"  271.4989  0.2115  66  59 0 0.42 0 0
i "GM_Electric_Piano_1"  271.4994  0.2115  62  54 0 0.42 0 0
i "GM_Electric_Piano_1"  271.5015  0.2115  59  55 0 0.42 0 0
i "GM_Electric_Piano_1"  271.5026  0.2115  55  60 0 0.42 0 0
i "GM_Alto_Sax"  271.6895  0.2212  71  58 0 0.62 0 0
i "GM_Slap_Bass_1"  271.6895  0.3538  43  84 0 0.50 0 0
i "GM_Standard_Kit"  271.6895  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"  271.6895  0.1800  38  79 0 0.48 0 0
i "GM_Standard_Kit"  271.6895  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  271.6895  0.2200  51  45 0 0.70 0 0
i "GM_Tenor_Sax"  271.6895  0.2212  55  56 0 0.35 0 0
i "GM_Trombone"  271.6895  0.2212  62  61 0 0.28 0 0
i "GM_Trumpet"  271.6895  0.2212  78  59 0 0.72 0 0
i "GM_Slap_Bass_1"  271.8818  0.1731  43  69 0 0.50 0 0
i "GM_Standard_Kit"  271.8818  0.1200  42  38 0 0.35 0 0
i "GM_Alto_Sax"  272.0741  0.2212  71  55 0 0.62 0 0
i "GM_Bird_Tweet"  272.0741  2.0769  90  84 0 0.63 0 0
i "GM_Slap_Bass_1"  272.0741  0.3538  42  81 0 0.50 0 0
i "GM_Standard_Kit"  272.0741  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"  272.0741  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  272.0741  0.2200  51  45 0 0.70 0 0
i "GM_Tenor_Sax"  272.0741  0.2212  57  61 0 0.35 0 0
i "GM_Trombone"  272.0741  0.2212  63  62 0 0.28 0 0
i "GM_Trumpet"  272.0741  0.2212  78  61 0 0.72 0 0
i "GM_Electric_Piano_1"  272.0764  0.2115  59  57 0 0.42 0 0
i "GM_Electric_Piano_1"  272.0767  0.2115  57  53 0 0.42 0 0
i "GM_Electric_Piano_1"  272.0773  0.2115  63  52 0 0.42 0 0
i "GM_Electric_Piano_1"  272.0789  0.2115  66  58 0 0.42 0 0
i "GM_Slap_Bass_1"  272.2664  0.1731  44  72 0 0.50 0 0
i "GM_Standard_Kit"  272.2664  0.1200  42  39 0 0.35 0 0
i "GM_Slap_Bass_1"  272.4587  0.1731  42  70 0 0.50 0 0
i "GM_Standard_Kit"  272.4587  0.1200  42  39 0 0.35 0 0
i "GM_Slap_Bass_1"  272.6510  0.3538  42  84 0 0.50 0 0
i "GM_Standard_Kit"  272.6510  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"  272.6510  0.1800  38  80 0 0.48 0 0
i "GM_Standard_Kit"  272.6510  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  272.6510  0.2200  51  47 0 0.70 0 0
i "GM_Slap_Bass_1"  272.8434  0.3462  44  68 0 0.50 0 0
i "GM_Standard_Kit"  272.8434  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"  273.0357  0.1200  46  37 0 0.35 0 0
i "GM_Alto_Sax"  273.2280  0.2212  71  56 0 0.62 0 0
i "GM_Bird_Tweet"  273.2280  0.9231  95  78 0 0.63 0 0
i "GM_Slap_Bass_1"  273.2280  0.3538  47  80 0 0.50 0 0
i "GM_Standard_Kit"  273.2280  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"  273.2280  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  273.2280  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  273.2280  0.2212  55  58 0 0.35 0 0
i "GM_Trombone"  273.2280  0.2212  62  55 0 0.28 0 0
i "GM_Trumpet"  273.2280  0.2212  76  62 0 0.72 0 0
i "GM_Slap_Bass_1"  273.4203  0.1731  50  69 0 0.50 0 0
i "GM_Standard_Kit"  273.4203  0.1200  42  41 0 0.35 0 0
i "GM_Standard_Kit"  273.6126  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"  273.8049  0.3462  48  73 0 0.50 0 0
i "GM_Standard_Kit"  273.8049  0.1200  42  37 0 0.35 0 0
i "GM_Standard_Kit"  273.9972  0.1200  42  39 0 0.35 0 0
i "GM_Alto_Sax"  274.1895  0.2212  71  61 0 0.62 0 0
i "GM_Slap_Bass_1"  274.1895  0.1769  47  83 0 0.50 0 0
i "GM_Standard_Kit"  274.1895  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"  274.1895  0.1800  38  77 0 0.48 0 0
i "GM_Standard_Kit"  274.1895  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  274.1895  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  274.1895  0.2212  55  62 0 0.35 0 0
i "GM_Trombone"  274.1895  0.2212  62  62 0 0.28 0 0
i "GM_Trumpet"  274.1895  0.2212  76  61 0 0.72 0 0
i "GM_Alto_Sax"  274.3818  0.2212  71  59 0 0.62 0 0
i "GM_Slap_Bass_1"  274.3818  0.3538  47  81 0 0.50 0 0
i "GM_Standard_Kit"  274.3818  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"  274.3818  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  274.3818  0.2200  51  44 0 0.70 0 0
i "GM_Telephone_Ring"  274.3818  1.3846  60  84 0 0.24 0 0
i "GM_Tenor_Sax"  274.3818  0.2212  55  57 0 0.35 0 0
i "GM_Trombone"  274.3818  0.2212  62  60 0 0.28 0 0
i "GM_Trumpet"  274.3818  0.2212  76  57 0 0.72 0 0
i "GM_Electric_Piano_1"  274.3845  0.2115  62  57 0 0.42 0 0
i "GM_Electric_Piano_1"  274.3852  0.2115  64  54 0 0.42 0 0
i "GM_Electric_Piano_1"  274.3856  0.2115  55  59 0 0.42 0 0
i "GM_Electric_Piano_1"  274.3866  0.2115  59  59 0 0.42 0 0
i "GM_Slap_Bass_1"  274.5741  0.1731  50  72 0 0.50 0 0
i "GM_Standard_Kit"  274.5741  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Piano_1"  274.5760  0.2115  62  58 0 0.42 0 0
i "GM_Electric_Piano_1"  274.5763  0.2115  59  56 0 0.42 0 0
i "GM_Electric_Piano_1"  274.5773  0.2115  64  53 0 0.42 0 0
i "GM_Electric_Piano_1"  274.5787  0.2115  55  60 0 0.42 0 0
i "GM_Alto_Sax"  274.7664  0.2212  71  57 0 0.62 0 0
i "GM_Slap_Bass_1"  274.7664  0.3538  52  79 0 0.50 0 0
i "GM_Standard_Kit"  274.7664  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  274.7664  0.1800  38  83 0 0.48 0 0
i "GM_Standard_Kit"  274.7664  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  274.7664  0.2200  51  46 0 0.70 0 0
i "GM_Tenor_Sax"  274.7664  0.2212  55  60 0 0.35 0 0
i "GM_Trombone"  274.7664  0.2212  62  57 0 0.28 0 0
i "GM_Trumpet"  274.7664  0.2212  76  55 0 0.72 0 0
i "GM_Slap_Bass_1"  274.9587  0.1731  50  70 0 0.50 0 0
i "GM_Standard_Kit"  274.9587  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"  275.1510  0.1731  48  67 0 0.50 0 0
i "GM_Standard_Kit"  275.1510  0.1200  42  41 0 0.35 0 0
i "GM_Alto_Sax"  275.3434  0.2212  71  61 0 0.62 0 0
i "GM_Slap_Bass_1"  275.3434  0.3538  47  85 0 0.50 0 0
i "GM_Standard_Kit"  275.3434  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"  275.3434  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  275.3434  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  275.3434  0.2212  55  57 0 0.35 0 0
i "GM_Trombone"  275.3434  0.2212  62  56 0 0.28 0 0
i "GM_Trumpet"  275.3434  0.2212  76  58 0 0.72 0 0
i "GM_Slap_Bass_1"  275.5357  0.1731  43  70 0 0.50 0 0
i "GM_Standard_Kit"  275.5357  0.1200  42  36 0 0.35 0 0
i "GM_Slap_Bass_1"  275.7280  0.1731  43  70 0 0.50 0 0
i "GM_Standard_Kit"  275.7280  0.1200  42  40 0 0.35 0 0
i "GM_Helicopter"  275.9203  1.3846  60  84 0 0.42 0 0
i "GM_Slap_Bass_1"  275.9203  0.3538  45  80 0 0.50 0 0
i "GM_Standard_Kit"  275.9203  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"  275.9203  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  275.9203  0.2200  51  46 0 0.70 0 0
i "GM_Electric_Piano_1"  275.9206  0.2115  60  57 0 0.42 0 0
i "GM_Electric_Piano_1"  275.9232  0.2115  64  54 0 0.42 0 0
i "GM_Electric_Piano_1"  275.9237  0.2115  57  52 0 0.42 0 0
i "GM_Electric_Piano_1"  275.9260  0.2115  55  58 0 0.42 0 0
i "GM_Slap_Bass_1"  276.1126  0.1731  43  68 0 0.50 0 0
i "GM_Standard_Kit"  276.1126  0.1200  42  39 0 0.35 0 0
i "GM_Slap_Bass_1"  276.3049  0.3538  45  84 0 0.50 0 0
i "GM_Standard_Kit"  276.3049  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"  276.3049  0.1800  38  78 0 0.48 0 0
i "GM_Standard_Kit"  276.3049  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  276.3049  0.2200  51  44 0 0.70 0 0
i "GM_Standard_Kit"  276.4972  0.1200  42  39 0 0.35 0 0
i "GM_Slap_Bass_1"  276.6895  0.1731  47  70 0 0.50 0 0
i "GM_Standard_Kit"  276.6895  0.1200  42  37 0 0.35 0 0
i "GM_Electric_Piano_1"  276.6901  0.2115  55  59 0 0.42 0 0
i "GM_Electric_Piano_1"  276.6919  0.2115  57  52 0 0.42 0 0
i "GM_Electric_Piano_1"  276.6939  0.2115  60  60 0 0.42 0 0
i "GM_Electric_Piano_1"  276.6950  0.2115  64  56 0 0.42 0 0
i "GM_Alto_Sax"  276.8818  0.2212  69  59 0 0.62 0 0
i "GM_Slap_Bass_1"  276.8818  0.3538  45  84 0 0.50 0 0
i "GM_Standard_Kit"  276.8818  0.2200  36  68 0 0.50 0 0
i "GM_Standard_Kit"  276.8818  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  276.8818  0.2200  51  49 0 0.70 0 0
i "GM_Tenor_Sax"  276.8818  0.2212  55  61 0 0.35 0 0
i "GM_Trombone"  276.8818  0.2212  60  58 0 0.28 0 0
i "GM_Trumpet"  276.8818  0.2212  76  58 0 0.72 0 0
i "GM_Slap_Bass_1"  277.0741  0.1731  43  71 0 0.50 0 0
i "GM_Standard_Kit"  277.0741  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Piano_1"  277.0762  0.2115  55  53 0 0.42 0 0
i "GM_Electric_Piano_1"  277.0764  0.2115  57  54 0 0.42 0 0
i "GM_Electric_Piano_1"  277.0782  0.2115  64  52 0 0.42 0 0
i "GM_Electric_Piano_1"  277.0792  0.2115  60  52 0 0.42 0 0
i "GM_Alto_Sax"  277.2664  0.2212  69  59 0 0.62 0 0
i "GM_Slap_Bass_1"  277.2664  0.1769  45  80 0 0.50 0 0
i "GM_Standard_Kit"  277.2664  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"  277.2664  0.1800  38  77 0 0.48 0 0
i "GM_Standard_Kit"  277.2664  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  277.2664  0.2200  51  46 0 0.70 0 0
i "GM_Tenor_Sax"  277.2664  0.2212  55  61 0 0.35 0 0
i "GM_Trombone"  277.2664  0.2212  60  58 0 0.28 0 0
i "GM_Trumpet"  277.2664  0.2212  76  62 0 0.72 0 0
i "GM_Alto_Sax"  277.4587  0.2212  71  60 0 0.62 0 0
i "GM_Applause"  277.4587  1.3846  60  84 0 0.60 0 0
i "GM_Slap_Bass_1"  277.4587  0.3538  47  85 0 0.50 0 0
i "GM_Standard_Kit"  277.4587  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"  277.4587  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  277.4587  0.2200  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  277.4587  0.2212  57  62 0 0.35 0 0
i "GM_Trombone"  277.4587  0.2212  63  60 0 0.28 0 0
i "GM_Trumpet"  277.4587  0.2212  78  55 0 0.72 0 0
i "GM_Slap_Bass_1"  277.6510  0.1731  47  69 0 0.50 0 0
i "GM_Standard_Kit"  277.6510  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"  277.8434  0.3538  47  84 0 0.50 0 0
i "GM_Standard_Kit"  277.8434  0.2200  36  74 0 0.50 0 0
i "GM_Standard_Kit"  277.8434  0.1800  38  81 0 0.48 0 0
i "GM_Standard_Kit"  277.8434  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  277.8434  0.2200  51  47 0 0.70 0 0
i "GM_Electric_Piano_1"  277.8434  0.2115  59  56 0 0.42 0 0
i "GM_Electric_Piano_1"  277.8445  0.2115  57  55 0 0.42 0 0
i "GM_Electric_Piano_1"  277.8457  0.2115  54  58 0 0.42 0 0
i "GM_Electric_Piano_1"  277.8469  0.2115  63  54 0 0.42 0 0
i "GM_Slap_Bass_1"  278.0357  0.1731  47  73 0 0.50 0 0
i "GM_Standard_Kit"  278.0357  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"  278.2280  0.1731  49  73 0 0.50 0 0
i "GM_Standard_Kit"  278.2280  0.1200  46  38 0 0.35 0 0
i "GM_Alto_Sax"  278.4203  0.2212  71  55 0 0.62 0 0
i "GM_Slap_Bass_1"  278.4203  0.3538  47  85 0 0.50 0 0
i "GM_Standard_Kit"  278.4203  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"  278.4203  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  278.4203  0.2200  51  45 0 0.70 0 0
i "GM_Tenor_Sax"  278.4203  0.2212  57  60 0 0.35 0 0
i "GM_Trombone"  278.4203  0.2212  63  57 0 0.28 0 0
i "GM_Trumpet"  278.4203  0.2212  78  55 0 0.72 0 0
i "GM_Electric_Piano_1"  278.4203  0.2115  63  57 0 0.42 0 0
i "GM_Electric_Piano_1"  278.4224  0.2115  57  53 0 0.42 0 0
i "GM_Electric_Piano_1"  278.4259  0.2115  59  52 0 0.42 0 0
i "GM_Electric_Piano_1"  278.4262  0.2115  54  55 0 0.42 0 0
i "GM_Standard_Kit"  278.6126  0.1200  42  41 0 0.35 0 0
i "GM_Alto_Sax"  278.8049  0.2212  71  59 0 0.62 0 0
i "GM_Slap_Bass_1"  278.8049  0.1769  47  80 0 0.50 0 0
i "GM_Standard_Kit"  278.8049  0.2200  36  70 0 0.50 0 0
i "GM_Standard_Kit"  278.8049  0.1800  38  83 0 0.48 0 0
i "GM_Standard_Kit"  278.8049  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  278.8049  0.2200  51  45 0 0.70 0 0
i "GM_Tenor_Sax"  278.8049  0.2212  57  57 0 0.35 0 0
i "GM_Trombone"  278.8049  0.2212  63  59 0 0.28 0 0
i "GM_Trumpet"  278.8049  0.2212  78  56 0 0.72 0 0
i "GM_Gunshot"  278.9972  2.7692  60  84 0 0.22 0 0
i "GM_Slap_Bass_1"  278.9972  0.3538  47  85 0 0.50 0 0
i "GM_Standard_Kit"  278.9972  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"  278.9972  0.1200  42  57 0 0.35 0 0
i "GM_Standard_Kit"  278.9972  0.2200  51  44 0 0.70 0 0
i "GM_Slap_Bass_1"  279.1895  0.3462  48  69 0 0.50 0 0
i "GM_Standard_Kit"  279.1895  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"  279.3818  0.1200  42  40 0 0.35 0 0
i "GM_Alto_Sax"  279.5741  0.2212  71  59 0 0.62 0 0
i "GM_Slap_Bass_1"  279.5741  0.3538  47  83 0 0.50 0 0
i "GM_Standard_Kit"  279.5741  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"  279.5741  0.1800  38  82 0 0.48 0 0
i "GM_Standard_Kit"  279.5741  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  279.5741  0.2200  51  49 0 0.70 0 0
i "GM_Tenor_Sax"  279.5741  0.2212  55  59 0 0.35 0 0
i "GM_Trombone"  279.5741  0.2212  62  58 0 0.28 0 0
i "GM_Trumpet"  279.5741  0.2212  76  62 0 0.72 0 0
i "GM_Electric_Piano_1"  279.5750  0.2115  62  57 0 0.42 0 0
i "GM_Electric_Piano_1"  279.5769  0.2115  64  54 0 0.42 0 0
i "GM_Electric_Piano_1"  279.5775  0.2115  59  52 0 0.42 0 0
i "GM_Electric_Piano_1"  279.5797  0.2115  55  60 0 0.42 0 0
i "GM_Slap_Bass_1"  279.7664  0.3462  45  68 0 0.50 0 0
i "GM_Standard_Kit"  279.7664  0.1200  42  39 0 0.35 0 0
i "GM_Standard_Kit"  279.9587  0.1200  42  37 0 0.35 0 0
i "GM_Slap_Bass_1"  280.1510  0.3538  47  80 0 0.50 0 0
i "GM_Standard_Kit"  280.1510  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"  280.1510  0.1200  42  56 0 0.35 0 0
i "GM_Standard_Kit"  280.1510  0.2200  51  48 0 0.70 0 0
i "GM_Slap_Bass_1"  280.3434  0.1731  45  68 0 0.50 0 0
i "GM_Standard_Kit"  280.3434  0.1200  42  39 0 0.35 0 0
i "GM_Electric_Piano_1"  280.3439  0.2115  64  60 0 0.42 0 0
i "GM_Electric_Piano_1"  280.3439  0.2115  62  53 0 0.42 0 0
i "GM_Electric_Piano_1"  280.3449  0.2115  59  57 0 0.42 0 0
i "GM_Electric_Piano_1"  280.3465  0.2115  55  55 0 0.42 0 0
i "GM_Alto_Sax"  280.5357  0.2212  71  58 0 0.62 0 0
i "GM_Gunshot"  280.5357  1.2308  60  78 0 0.22 0 0
i "GM_Slap_Bass_1"  280.5357  0.3538  47  80 0 0.50 0 0
i "GM_Standard_Kit"  280.5357  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"  280.5357  0.1800  38  77 0 0.48 0 0
i "GM_Standard_Kit"  280.5357  0.1200  42  58 0 0.35 0 0
i "GM_Standard_Kit"  280.5357  0.2200  51  49 0 0.70 0 0
i "GM_Tenor_Sax"  280.5357  0.2212  55  60 0 0.35 0 0
i "GM_Trombone"  280.5357  0.2212  62  58 0 0.28 0 0
i "GM_Trumpet"  280.5357  0.2212  76  55 0 0.72 0 0
i "GM_Slap_Bass_1"  280.7280  0.3462  47  68 0 0.50 0 0
i "GM_Standard_Kit"  280.7280  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"  280.9203  0.1200  42  36 0 0.35 0 0
i "GM_Electric_Piano_1"  280.9207  0.2115  59  56 0 0.42 0 0
i "GM_Electric_Piano_1"  280.9240  0.2115  55  52 0 0.42 0 0
i "GM_Electric_Piano_1"  280.9245  0.2115  64  54 0 0.42 0 0
i "GM_Electric_Piano_1"  280.9257  0.2115  62  60 0 0.42 0 0
i "GM_Slap_Bass_1"  281.1126  0.3538  47  82 0 0.50 0 0
i "GM_Standard_Kit"  281.1126  0.2200  36  67 0 0.50 0 0
i "GM_Standard_Kit"  281.1126  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  281.1126  0.2200  51  49 0 0.70 0 0
i "GM_Standard_Kit"  281.1126  0.1500  50  85 0 0.40 0 0
i "GM_Slap_Bass_1"  281.3049  0.1731  47  73 0 0.50 0 0
i "GM_Standard_Kit"  281.3049  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  281.3049  0.1500  48  82 0 0.43 0 0
i "GM_Slap_Bass_1"  281.4972  0.1731  47  73 0 0.50 0 0
i "GM_Standard_Kit"  281.4972  0.1200  46  36 0 0.35 0 0
i "GM_Standard_Kit"  281.4972  0.1500  47  83 0 0.46 0 0
i "GM_Alto_Sax"  281.6895  0.2212  71  57 0 0.62 0 0
i "GM_Slap_Bass_1"  281.6895  0.3538  47  85 0 0.50 0 0
i "GM_Standard_Kit"  281.6895  0.2200  36  69 0 0.50 0 0
i "GM_Standard_Kit"  281.6895  0.1800  38  83 0 0.48 0 0
i "GM_Standard_Kit"  281.6895  0.1200  42  55 0 0.35 0 0
i "GM_Standard_Kit"  281.6895  0.2200  51  47 0 0.70 0 0
i "GM_Standard_Kit"  281.6895  0.1500  45  80 0 0.49 0 0
i "GM_Tenor_Sax"  281.6895  0.2212  55  55 0 0.35 0 0
i "GM_Trombone"  281.6895  0.2212  62  60 0 0.28 0 0
i "GM_Trumpet"  281.6895  0.2212  76  58 0 0.72 0 0
i "GM_Electric_Piano_1"  281.6906  0.2115  59  59 0 0.42 0 0
i "GM_Electric_Piano_1"  281.6921  0.2115  62  58 0 0.42 0 0
i "GM_Electric_Piano_1"  281.6924  0.2115  55  58 0 0.42 0 0
i "GM_Electric_Piano_1"  281.6938  0.2115  64  56 0 0.42 0 0
i "GM_Slap_Bass_1"  281.8818  0.1731  47  69 0 0.50 0 0
i "GM_Standard_Kit"  281.8818  0.1200  42  37 0 0.35 0 0
i "GM_Standard_Kit"  281.8818  0.1500  43  83 0 0.52 0 0
i "GM_Standard_Kit"  281.8818  0.2000  49  82 0 0.70 0 0
i "GM_Slap_Bass_1"  282.0741  0.4000  48  84 0 0.50 0 0
i "GM_Standard_Kit"  282.0741  0.2200  36  75 0 0.50 0 0
i "GM_Standard_Kit"  282.0741  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  282.0741  0.2200  51  44 0 0.70 0 0
i "GM_Standard_Kit"  282.0741  0.5000  49  86 0 0.72 0 0
i "GM_Standard_Kit"  282.0741  0.3500  57  68 0 0.78 0 0
i "GM_Acoustic_Grand_Piano"  282.0742  0.3043  55  58 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  282.0747  0.3043  59  58 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  282.0779  0.3043  60  57 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  282.0779  0.3043  64  58 0 0.40 0 0
i "GM_Slap_Bass_1"  282.2915  0.1957  47  76 0 0.50 0 0
i "GM_Standard_Kit"  282.2915  0.1200  42  39 0 0.35 0 0
i "GM_Slap_Bass_1"  282.5089  0.1957  45  77 0 0.50 0 0
i "GM_Standard_Kit"  282.5089  0.1200  42  36 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  282.5106  0.3043  59  64 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  282.5118  0.3043  55  59 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  282.5124  0.3043  64  64 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  282.5129  0.3043  60  60 0 0.40 0 0
i "GM_Alto_Sax"  282.7263  0.2500  71  62 0 0.62 0 0
i "GM_Slap_Bass_1"  282.7263  0.4000  43  84 0 0.50 0 0
i "GM_Standard_Kit"  282.7263  0.2200  36  73 0 0.50 0 0
i "GM_Standard_Kit"  282.7263  0.1800  38  82 0 0.48 0 0
i "GM_Standard_Kit"  282.7263  0.1200  42  53 0 0.35 0 0
i "GM_Standard_Kit"  282.7263  0.2200  51  44 0 0.70 0 0
i "GM_Tenor_Sax"  282.7263  0.2500  55  62 0 0.35 0 0
i "GM_Trombone"  282.7263  0.2500  60  62 0 0.28 0 0
i "GM_Trumpet"  282.7263  0.2500  76  62 0 0.72 0 0
i "GM_Slap_Bass_1"  282.9437  0.1957  45  76 0 0.50 0 0
i "GM_Standard_Kit"  282.9437  0.1200  42  40 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  282.9439  0.3043  59  59 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  282.9448  0.3043  64  58 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  282.9453  0.3043  55  62 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  282.9496  0.3043  60  59 0 0.40 0 0
i "GM_Alto_Sax"  283.1611  0.2500  71  57 0 0.62 0 0
i "GM_Slap_Bass_1"  283.1611  0.4000  43  89 0 0.50 0 0
i "GM_Standard_Kit"  283.1611  0.2200  36  68 0 0.50 0 0
i "GM_Standard_Kit"  283.1611  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  283.1611  0.2200  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  283.1611  0.2500  55  57 0 0.35 0 0
i "GM_Trombone"  283.1611  0.2500  60  58 0 0.28 0 0
i "GM_Trumpet"  283.1611  0.2500  76  60 0 0.72 0 0
i "GM_Slap_Bass_1"  283.3785  0.1957  45  77 0 0.50 0 0
i "GM_Standard_Kit"  283.3785  0.1200  42  41 0 0.35 0 0
i "GM_Slap_Bass_1"  283.5959  0.1957  43  72 0 0.50 0 0
i "GM_Standard_Kit"  283.5959  0.1200  46  40 0 0.35 0 0
i "GM_Alto_Sax"  283.8133  0.2500  69  59 0 0.62 0 0
i "GM_Slap_Bass_1"  283.8133  0.4000  45  89 0 0.50 0 0
i "GM_Standard_Kit"  283.8133  0.2200  36  71 0 0.50 0 0
i "GM_Standard_Kit"  283.8133  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  283.8133  0.2200  51  49 0 0.70 0 0
i "GM_Standard_Kit"  283.8133  0.1500  50  80 0 0.40 0 0
i "GM_Standard_Kit"  283.8133  0.5000  49  86 0 0.72 0 0
i "GM_Standard_Kit"  283.8133  0.3500  57  68 0 0.78 0 0
i "GM_Tenor_Sax"  283.8133  0.2500  55  59 0 0.35 0 0
i "GM_Trombone"  283.8133  0.2500  60  60 0 0.28 0 0
i "GM_Trumpet"  283.8133  0.2500  76  56 0 0.72 0 0
i "GM_Acoustic_Grand_Piano"  283.8147  0.3043  60  57 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  283.8158  0.3043  57  57 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  283.8171  0.3043  55  62 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  283.8188  0.3043  64  61 0 0.40 0 0
i "GM_Slap_Bass_1"  284.0306  0.3913  45  72 0 0.50 0 0
i "GM_Standard_Kit"  284.0306  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"  284.0306  0.1500  48  81 0 0.43 0 0
i "GM_Standard_Kit"  284.2480  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  284.2480  0.1500  47  76 0 0.46 0 0
i "GM_Acoustic_Grand_Piano"  284.2504  0.3043  55  56 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  284.2512  0.3043  60  63 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  284.2520  0.3043  64  60 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  284.2537  0.3043  57  62 0 0.40 0 0
i "GM_Alto_Sax"  284.4654  0.2500  69  60 0 0.62 0 0
i "GM_Slap_Bass_1"  284.4654  0.4000  45  86 0 0.50 0 0
i "GM_Standard_Kit"  284.4654  0.2200  36  72 0 0.50 0 0
i "GM_Standard_Kit"  284.4654  0.1800  38  79 0 0.48 0 0
i "GM_Standard_Kit"  284.4654  0.1200  42  54 0 0.35 0 0
i "GM_Standard_Kit"  284.4654  0.2200  51  49 0 0.70 0 0
i "GM_Standard_Kit"  284.4654  0.1500  45  77 0 0.49 0 0
i "GM_Tenor_Sax"  284.4654  0.2500  55  55 0 0.35 0 0
i "GM_Trombone"  284.4654  0.2500  60  62 0 0.28 0 0
i "GM_Trumpet"  284.4654  0.2500  76  60 0 0.72 0 0
i "GM_Slap_Bass_1"  284.6828  0.1957  48  77 0 0.50 0 0
i "GM_Standard_Kit"  284.6828  0.1200  42  39 0 0.35 0 0
i "GM_Standard_Kit"  284.6828  0.1500  43  84 0 0.52 0 0
i "GM_Slap_Bass_1"  284.9002  0.3913  50  76 0 0.50 0 0
i "GM_Standard_Kit"  284.9002  0.1200  42  40 0 0.35 0 0
i "GM_Standard_Kit"  284.9002  0.1500  41  77 0 0.55 0 0
i "GM_Standard_Kit"  285.1176  0.1200  42  41 0 0.35 0 0
i "GM_Standard_Kit"  285.1176  0.1500  41  86 0 0.58 0 0
i "GM_Slap_Bass_1"  285.3350  0.1957  52  72 0 0.50 0 0
i "GM_Standard_Kit"  285.3350  0.1200  42  36 0 0.35 0 0
i "GM_Standard_Kit"  285.3350  0.1500  41  79 0 0.61 0 0
i "GM_Standard_Kit"  285.3350  0.2000  49  82 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"  285.5524  1.5217  55  74 0 0.38 0 0
i "GM_Alto_Sax"  285.5524  1.3913  62  66 0 0.60 0 0
i "GM_Electric_Bass_finger"  285.5524  1.7391  28  88 0 0.50 0 0
i "GM_Rock_Organ"  285.5524  1.3913  55  66 0 0.50 0 0
i "GM_Standard_Kit"  285.5524  0.5500  49  88 0 0.72 0 0
i "GM_Standard_Kit"  285.5524  0.4500  36  80 0 0.50 0 0
i "GM_Tenor_Sax"  285.5524  1.3913  55  66 0 0.40 0 0
i "GM_Trombone"  285.5524  1.3913  55  66 0 0.30 0 0
i "GM_Trumpet"  285.5524  1.3913  71  66 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"  285.5604  1.5217  59  74 0 0.38 0 0
i "GM_Alto_Sax"  285.5674  1.3913  64  66 0 0.60 0 0
i "GM_Rock_Organ"  285.5674  1.3913  59  66 0 0.50 0 0
i "GM_Tenor_Sax"  285.5674  1.3913  59  66 0 0.40 0 0
i "GM_Trombone"  285.5674  1.3913  59  66 0 0.30 0 0
i "GM_Trumpet"  285.5674  1.3913  74  66 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"  285.5684  1.5217  62  74 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  285.5764  1.5217  64  74 0 0.38 0 0
i "GM_Alto_Sax"  285.5824  1.3913  67  66 0 0.60 0 0
i "GM_Rock_Organ"  285.5824  1.3913  62  66 0 0.50 0 0
i "GM_Tenor_Sax"  285.5824  1.3913  62  66 0 0.40 0 0
i "GM_Trombone"  285.5824  1.3913  62  66 0 0.30 0 0
i "GM_Trumpet"  285.5824  1.3913  76  66 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"  286.4220  0.6957  57  76 0 0.40 0 0
i "GM_Standard_Kit"  286.4220  0.2500  38  78 0 0.48 0 0
i "GM_Acoustic_Grand_Piano"  286.4270  0.6957  59  76 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  286.4320  0.6957  63  76 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  286.4370  0.6957  66  76 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  287.2915  1.5217  55  78 0 0.40 0 0
i "GM_Brass_Section"  287.2915  1.6522  62  70 0 0.55 0 0
i "GM_Brass_Section"  287.2915  1.6522  66  70 0 0.55 0 0
i "GM_Brass_Section"  287.2915  1.6522  67  70 0 0.55 0 0
i "GM_Brass_Section"  287.2915  1.6522  71  70 0 0.55 0 0
i "GM_Electric_Bass_finger"  287.2915  1.7391  31  88 0 0.50 0 0
i "GM_Standard_Kit"  287.2915  0.5000  49  90 0 0.70 0 0
i "GM_Standard_Kit"  287.2915  0.4000  36  82 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  287.2995  1.5217  59  78 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  287.3075  1.5217  62  78 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  287.3155  1.5217  66  78 0 0.40 0 0
e 289.900
</CsScore>
</CsoundSynthesizer>
