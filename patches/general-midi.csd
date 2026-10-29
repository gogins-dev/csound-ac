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

The score is a big-band / prog-rock showcase in which every General MIDI program
takes a turn, over electric bass, rock kit, piano/EP punches, and
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
; Big-band / prog-rock, 144 bpm. Straight eighths; every 8th feature bar is 7/8.
; Harmony cycles Em–C–G–D / Am–F–C–B7 then Dm–Bb–F–C / Ab–Eb–Bb–A7.
; Every General MIDI program takes one bar over electric bass, rock kit, and punches.
; i "instrument" time duration key velocity front_back left_right bottom_top phase
i "GM_Standard_Kit"    0.0000  0.2500  36  62 0 0.50 0 0
i "GM_Standard_Kit"    0.0000  0.1500  42  44 0 0.35 0 0
i "GM_Standard_Kit"    0.0000  0.5500  49  88 0 0.72 0 0
i "GM_Standard_Kit"    0.0000  0.4000  57  70 0 0.78 0 0
i "GM_Standard_Kit"    0.4167  0.1500  42  45 0 0.35 0 0
i "GM_Standard_Kit"    0.8333  0.2000  38  63 0 0.48 0 0
i "GM_Standard_Kit"    0.8333  0.1500  42  47 0 0.35 0 0
i "GM_Standard_Kit"    1.2500  0.1500  42  45 0 0.35 0 0
i "GM_Electric_Bass_finger"    1.6667  0.1917  36  80 0 0.50 0 0
i "GM_Standard_Kit"    1.6667  0.2500  36  61 0 0.50 0 0
i "GM_Standard_Kit"    1.6667  0.1500  42  44 0 0.35 0 0
i "GM_Electric_Bass_finger"    1.8750  0.1917  36  76 0 0.50 0 0
i "GM_Standard_Kit"    1.8750  0.1500  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"    2.0833  0.1917  39  79 0 0.50 0 0
i "GM_Standard_Kit"    2.0833  0.2000  38  74 0 0.48 0 0
i "GM_Standard_Kit"    2.0833  0.1500  42  47 0 0.35 0 0
i "GM_Standard_Kit"    2.2917  0.1500  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"    2.5000  0.1917  43  81 0 0.50 0 0
i "GM_Standard_Kit"    2.5000  0.2500  36  60 0 0.50 0 0
i "GM_Standard_Kit"    2.5000  0.1500  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"    2.7083  0.1917  46  68 0 0.50 0 0
i "GM_Standard_Kit"    2.7083  0.1500  42  33 0 0.35 0 0
i "GM_Electric_Bass_finger"    2.9167  0.1917  43  85 0 0.50 0 0
i "GM_Standard_Kit"    2.9167  0.2000  38  64 0 0.48 0 0
i "GM_Standard_Kit"    2.9167  0.1500  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"    3.1250  0.1917  41  71 0 0.50 0 0
i "GM_Standard_Kit"    3.1250  0.1500  46  36 0 0.35 0 0
i "GM_Electric_Bass_finger"    3.3333  0.1917  43  82 0 0.50 0 0
i "GM_Rock_Organ"    3.3333  1.6000  55  48 0 0.55 0 0
i "GM_Rock_Organ"    3.3333  1.6000  62  47 0 0.55 0 0
i "GM_Rock_Organ"    3.3333  1.6000  66  50 0 0.55 0 0
i "GM_Rock_Organ"    3.3333  1.6000  71  50 0 0.55 0 0
i "GM_Standard_Kit"    3.3333  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"    3.3333  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"    3.3333  0.5500  49  88 0 0.72 0 0
i "GM_Standard_Kit"    3.5417  0.1500  42  37 0 0.35 0 0
i "GM_Electric_Bass_finger"    3.7500  0.1917  46  79 0 0.50 0 0
i "GM_Standard_Kit"    3.7500  0.2000  38  72 0 0.48 0 0
i "GM_Standard_Kit"    3.7500  0.1500  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"    3.9583  0.1917  45  72 0 0.50 0 0
i "GM_Standard_Kit"    3.9583  0.1500  42  41 0 0.35 0 0
i "GM_Electric_Bass_finger"    4.1667  0.1917  43  84 0 0.50 0 0
i "GM_Standard_Kit"    4.1667  0.2500  36  62 0 0.50 0 0
i "GM_Standard_Kit"    4.1667  0.1500  42  46 0 0.35 0 0
i "GM_Standard_Kit"    4.3750  0.1500  42  40 0 0.35 0 0
i "GM_Electric_Bass_finger"    4.5833  0.1917  41  78 0 0.50 0 0
i "GM_Standard_Kit"    4.5833  0.2000  38  70 0 0.48 0 0
i "GM_Standard_Kit"    4.5833  0.1500  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"    4.7917  0.1917  43  68 0 0.50 0 0
i "GM_Standard_Kit"    4.7917  0.1500  46  37 0 0.35 0 0
i "GM_Electric_Bass_finger"    5.0000  0.1917  38  85 0 0.50 0 0
i "GM_Rock_Organ"    5.0000  1.6000  50  54 0 0.55 0 0
i "GM_Rock_Organ"    5.0000  1.6000  57  54 0 0.55 0 0
i "GM_Rock_Organ"    5.0000  1.6000  60  52 0 0.55 0 0
i "GM_Rock_Organ"    5.0000  1.6000  66  51 0 0.55 0 0
i "GM_Standard_Kit"    5.0000  0.2500  36  67 0 0.50 0 0
i "GM_Standard_Kit"    5.0000  0.1500  42  49 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"    5.0017  0.1458  62  66 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    5.0024  0.1458  60  60 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    5.0051  0.1458  69  61 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    5.0080  0.1458  66  69 0 0.40 0 0
i "GM_Standard_Kit"    5.2083  0.1500  42  39 0 0.35 0 0
i "GM_Electric_Bass_finger"    5.4167  0.1917  41  86 0 0.50 0 0
i "GM_Standard_Kit"    5.4167  0.2000  38  79 0 0.48 0 0
i "GM_Standard_Kit"    5.4167  0.1500  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"    5.5244  0.1458  57  60 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    5.5270  0.1458  60  65 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    5.5275  0.1458  66  66 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    5.5287  0.1458  50  63 0 0.40 0 0
i "GM_Standard_Kit"    5.6250  0.1500  46  40 0 0.35 0 0
i "GM_Electric_Bass_finger"    5.8333  0.1917  45  86 0 0.50 0 0
i "GM_Standard_Kit"    5.8333  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"    5.8333  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"    5.8333  0.1800  50  87 0 0.40 0 0
i "GM_Standard_Kit"    6.0417  0.1500  42  37 0 0.35 0 0
i "GM_Standard_Kit"    6.0417  0.1800  48  77 0 0.44 0 0
i "GM_Acoustic_Grand_Piano"    6.1460  0.1458  60  65 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    6.1464  0.1458  50  63 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    6.1488  0.1458  66  67 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    6.1505  0.1458  57  63 0 0.40 0 0
i "GM_Electric_Bass_finger"    6.2500  0.1917  45  80 0 0.50 0 0
i "GM_Standard_Kit"    6.2500  0.2000  38  72 0 0.48 0 0
i "GM_Standard_Kit"    6.2500  0.1500  42  50 0 0.35 0 0
i "GM_Standard_Kit"    6.2500  0.1800  47  76 0 0.48 0 0
i "GM_Electric_Bass_finger"    6.4583  0.1917  43  74 0 0.50 0 0
i "GM_Standard_Kit"    6.4583  0.1500  46  38 0 0.35 0 0
i "GM_Standard_Kit"    6.4583  0.1800  45  76 0 0.52 0 0
i "GM_Standard_Kit"    6.4583  0.2000  49  82 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"    6.6667  0.3667  76  99 0 0.40 0 0
i "GM_Electric_Bass_finger"    6.6667  0.1917  45  85 0 0.50 0 0
i "GM_Standard_Kit"    6.6667  0.2500  36  64 0 0.50 0 0
i "GM_Standard_Kit"    6.6667  0.1500  42  47 0 0.35 0 0
i "GM_Standard_Kit"    6.6667  0.5500  49  88 0 0.72 0 0
i "GM_Standard_Kit"    6.6667  0.4000  57  70 0 0.78 0 0
i "GM_Acoustic_Grand_Piano"    6.6677  0.1458  67  77 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    6.6681  0.1458  60  71 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    6.6700  0.1458  45  79 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    6.6706  0.1458  52  78 0 0.40 0 0
i "GM_Electric_Bass_finger"    6.8750  0.1917  45  74 0 0.50 0 0
i "GM_Standard_Kit"    6.8750  0.1500  42  41 0 0.35 0 0
i "GM_Electric_Bass_finger"    7.0833  0.1917  48  78 0 0.50 0 0
i "GM_Standard_Kit"    7.0833  0.2000  38  73 0 0.48 0 0
i "GM_Standard_Kit"    7.0833  0.1500  42  50 0 0.35 0 0
i "GM_Standard_Kit"    7.1875  0.2500  36  64 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"    7.1892  0.1458  60  73 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    7.1920  0.1458  45  79 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    7.1924  0.1458  52  74 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    7.1935  0.1458  67  71 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    7.2917  0.1833  76  94 0 0.40 0 0
i "GM_Standard_Kit"    7.2917  0.1500  42  36 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"    7.5000  0.3667  72 106 0 0.40 0 0
i "GM_Electric_Bass_finger"    7.5000  0.1917  52  78 0 0.50 0 0
i "GM_Standard_Kit"    7.5000  0.2500  36  68 0 0.50 0 0
i "GM_Standard_Kit"    7.5000  0.1500  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"    7.7083  0.1917  43  72 0 0.50 0 0
i "GM_Standard_Kit"    7.7083  0.1500  42  40 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"    7.8139  0.1458  60  75 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    7.8145  0.1458  52  70 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    7.8147  0.1458  45  77 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"    7.8167  0.1458  67  72 0 0.40 0 0
i "GM_Electric_Bass_finger"    7.9167  0.1917  52  81 0 0.50 0 0
i "GM_Standard_Kit"    7.9167  0.2000  38  67 0 0.48 0 0
i "GM_Standard_Kit"    7.9167  0.1500  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"    8.1250  0.1833  71  94 0 0.40 0 0
i "GM_Electric_Bass_finger"    8.1250  0.1917  50  74 0 0.50 0 0
i "GM_Standard_Kit"    8.1250  0.1500  46  39 0 0.35 0 0
i "GM_Bright_Acoustic_Piano"    8.3333  0.1833  69  99 0 0.58 0 0
i "GM_Electric_Bass_finger"    8.3333  0.1917  41  80 0 0.50 0 0
i "GM_Standard_Kit"    8.3333  0.2500  36  62 0 0.50 0 0
i "GM_Standard_Kit"    8.3333  0.1500  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"    8.5417  0.1917  41  73 0 0.50 0 0
i "GM_Standard_Kit"    8.5417  0.1500  42  37 0 0.35 0 0
i "GM_Bright_Acoustic_Piano"    8.7500  0.1833  69 100 0 0.58 0 0
i "GM_Electric_Bass_finger"    8.7500  0.1917  48  83 0 0.50 0 0
i "GM_Standard_Kit"    8.7500  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"    8.7500  0.1500  42  48 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"    8.8543  0.1458  53  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    8.8548  0.1458  57  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    8.8551  0.1458  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    8.8572  0.1458  52  63 0 0.38 0 0
i "GM_Bright_Acoustic_Piano"    8.9583  0.1833  67  95 0 0.58 0 0
i "GM_Standard_Kit"    8.9583  0.1500  46  35 0 0.35 0 0
i "GM_Bright_Acoustic_Piano"    9.1667  0.3667  69 102 0 0.58 0 0
i "GM_Electric_Bass_finger"    9.1667  0.1917  44  85 0 0.50 0 0
i "GM_Standard_Kit"    9.1667  0.2500  36  63 0 0.50 0 0
i "GM_Standard_Kit"    9.1667  0.1500  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"    9.3750  0.1917  43  74 0 0.50 0 0
i "GM_Standard_Kit"    9.3750  0.1500  42  38 0 0.35 0 0
i "GM_Bright_Acoustic_Piano"    9.5833  0.1833  64  97 0 0.58 0 0
i "GM_Electric_Bass_finger"    9.5833  0.1917  41  78 0 0.50 0 0
i "GM_Standard_Kit"    9.5833  0.2000  38  64 0 0.48 0 0
i "GM_Standard_Kit"    9.5833  0.1500  42  50 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"    9.5870  0.1458  67  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    9.5892  0.1458  60  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    9.5900  0.1458  71  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    9.5908  0.1458  64  63 0 0.38 0 0
i "GM_Bright_Acoustic_Piano"    9.7917  0.1833  65  90 0 0.58 0 0
i "GM_Electric_Bass_finger"    9.7917  0.1917  48  68 0 0.50 0 0
i "GM_Standard_Kit"    9.7917  0.1500  46  37 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"    9.7941  0.1458  60  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    9.7955  0.1458  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    9.7977  0.1458  59  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"    9.7993  0.1458  67  55 0 0.38 0 0
i "GM_Electric_Bass_finger"   10.0000  0.1917  36  79 0 0.50 0 0
i "GM_Electric_Grand_Piano"   10.0000  0.1833  71  95 0 0.76 0 0
i "GM_Rock_Organ"   10.0000  1.6000  48  35 0 0.55 0 0
i "GM_Rock_Organ"   10.0000  1.6000  52  34 0 0.55 0 0
i "GM_Rock_Organ"   10.0000  1.6000  55  38 0 0.55 0 0
i "GM_Rock_Organ"   10.0000  1.6000  59  33 0 0.55 0 0
i "GM_Standard_Kit"   10.0000  0.2500  36  67 0 0.50 0 0
i "GM_Standard_Kit"   10.0000  0.1500  42  49 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   10.0002  0.1458  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   10.0003  0.1458  59  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   10.0046  0.1458  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   10.0052  0.1458  64  63 0 0.38 0 0
i "GM_Electric_Bass_finger"   10.2083  0.1917  39  72 0 0.50 0 0
i "GM_Standard_Kit"   10.2083  0.1500  42  37 0 0.35 0 0
i "GM_Electric_Bass_finger"   10.4167  0.1917  41  81 0 0.50 0 0
i "GM_Electric_Grand_Piano"   10.4167  0.1833  72 100 0 0.76 0 0
i "GM_Standard_Kit"   10.4167  0.2000  38  73 0 0.48 0 0
i "GM_Standard_Kit"   10.4167  0.1500  42  52 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   10.5227  0.1458  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   10.5245  0.1458  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   10.5270  0.1458  64  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   10.5272  0.1458  71  64 0 0.38 0 0
i "GM_Electric_Bass_finger"   10.6250  0.1917  43  74 0 0.50 0 0
i "GM_Electric_Grand_Piano"   10.6250  0.1833  67  93 0 0.76 0 0
i "GM_Standard_Kit"   10.6250  0.1500  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"   10.8333  0.1917  41  86 0 0.50 0 0
i "GM_Electric_Grand_Piano"   10.8333  0.3667  67  98 0 0.76 0 0
i "GM_Standard_Kit"   10.8333  0.2500  36  65 0 0.50 0 0
i "GM_Standard_Kit"   10.8333  0.1500  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"   11.0417  0.1917  39  73 0 0.50 0 0
i "GM_Standard_Kit"   11.0417  0.1500  42  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   11.1494  0.1458  60  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   11.1501  0.1458  67  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   11.1513  0.1458  76  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   11.1523  0.1458  71  55 0 0.38 0 0
i "GM_Electric_Bass_finger"   11.2500  0.1917  38  85 0 0.50 0 0
i "GM_Electric_Grand_Piano"   11.2500  0.1833  69  94 0 0.76 0 0
i "GM_Standard_Kit"   11.2500  0.2000  38  65 0 0.48 0 0
i "GM_Standard_Kit"   11.2500  0.1500  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"   11.4583  0.1917  36  68 0 0.50 0 0
i "GM_Electric_Grand_Piano"   11.4583  0.1833  67  96 0 0.76 0 0
i "GM_Standard_Kit"   11.4583  0.1500  46  41 0 0.35 0 0
i "GM_Electric_Bass_finger"   11.6667  0.1917  47  79 0 0.50 0 0
i "GM_Honky_tonk_Piano"   11.6667  0.1833  69 103 0 0.38 0 0
i "GM_Standard_Kit"   11.6667  0.2500  36  67 0 0.50 0 0
i "GM_Standard_Kit"   11.6667  0.1500  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   11.6680  0.1458  69  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   11.6701  0.1458  66  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   11.6731  0.1458  63  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   11.6740  0.1458  59  57 0 0.38 0 0
i "GM_Electric_Bass_finger"   11.8750  0.1917  47  76 0 0.50 0 0
i "GM_Standard_Kit"   11.8750  0.1500  42  40 0 0.35 0 0
i "GM_Honky_tonk_Piano"   11.9792  0.0917  69  93 0 0.38 0 0
i "GM_Electric_Bass_finger"   12.0833  0.1917  50  83 0 0.50 0 0
i "GM_Honky_tonk_Piano"   12.0833  0.1833  71 104 0 0.38 0 0
i "GM_Standard_Kit"   12.0833  0.2000  38  76 0 0.48 0 0
i "GM_Standard_Kit"   12.0833  0.1500  42  52 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   12.1913  0.1458  59  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   12.1938  0.1458  57  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   12.1942  0.1458  66  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   12.1947  0.1458  63  62 0 0.38 0 0
i "GM_Electric_Bass_finger"   12.2917  0.1917  52  68 0 0.50 0 0
i "GM_Honky_tonk_Piano"   12.2917  0.1833  69  95 0 0.38 0 0
i "GM_Standard_Kit"   12.2917  0.1500  42  40 0 0.35 0 0
i "GM_Electric_Bass_finger"   12.5000  0.1917  42  83 0 0.50 0 0
i "GM_Honky_tonk_Piano"   12.5000  0.1833  75  98 0 0.38 0 0
i "GM_Standard_Kit"   12.5000  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"   12.5000  0.1500  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"   12.7083  0.1917  45  68 0 0.50 0 0
i "GM_Standard_Kit"   12.7083  0.1500  42  35 0 0.35 0 0
i "GM_Honky_tonk_Piano"   12.8125  0.0917  71  93 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   12.8167  0.1458  66  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   12.8171  0.1458  59  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   12.8186  0.1458  63  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   12.8191  0.1458  69  62 0 0.38 0 0
i "GM_Electric_Bass_finger"   12.9167  0.1917  42  85 0 0.50 0 0
i "GM_Honky_tonk_Piano"   12.9167  0.3667  71  87 0 0.38 0 0
i "GM_Standard_Kit"   12.9167  0.2000  38  66 0 0.48 0 0
i "GM_Standard_Kit"   12.9167  0.1500  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"   13.1250  0.1917  52  74 0 0.50 0 0
i "GM_Standard_Kit"   13.1250  0.1500  46  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   13.3333  0.1917  50  80 0 0.50 0 0
i "GM_Electric_Piano_1"   13.3333  0.5500  77 100 0 0.56 0 0
i "GM_Standard_Kit"   13.3333  0.2500  36  63 0 0.50 0 0
i "GM_Standard_Kit"   13.3333  0.1500  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"   13.5417  0.1917  38  75 0 0.50 0 0
i "GM_Standard_Kit"   13.5417  0.1500  42  39 0 0.35 0 0
i "GM_Electric_Piano_1"   13.6459  0.1458  45  74 0 0.56 0 0
i "GM_Electric_Piano_1"   13.6474  0.1458  38  73 0 0.56 0 0
i "GM_Electric_Piano_1"   13.6478  0.1458  60  77 0 0.56 0 0
i "GM_Electric_Piano_1"   13.6484  0.1458  53  75 0 0.56 0 0
i "GM_Electric_Bass_finger"   13.7500  0.1917  41  86 0 0.50 0 0
i "GM_Standard_Kit"   13.7500  0.2000  38  72 0 0.48 0 0
i "GM_Standard_Kit"   13.7500  0.1500  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"   13.9583  0.1917  43  71 0 0.50 0 0
i "GM_Standard_Kit"   13.9583  0.1500  42  41 0 0.35 0 0
i "GM_Electric_Piano_1"   13.9592  0.1458  38  79 0 0.56 0 0
i "GM_Electric_Piano_1"   13.9593  0.1458  45  78 0 0.56 0 0
i "GM_Electric_Piano_1"   13.9633  0.1458  53  73 0 0.56 0 0
i "GM_Electric_Piano_1"   13.9639  0.1458  60  76 0 0.56 0 0
i "GM_Electric_Bass_finger"   14.1667  0.1917  45  84 0 0.50 0 0
i "GM_Electric_Piano_1"   14.1667  0.3667  77 106 0 0.56 0 0
i "GM_Standard_Kit"   14.1667  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"   14.1667  0.1500  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"   14.3750  0.1917  48  72 0 0.50 0 0
i "GM_Standard_Kit"   14.3750  0.1500  42  37 0 0.35 0 0
i "GM_Electric_Bass_finger"   14.5833  0.1917  45  80 0 0.50 0 0
i "GM_Electric_Piano_1"   14.5833  0.3667  70  99 0 0.56 0 0
i "GM_Standard_Kit"   14.5833  0.2000  38  65 0 0.48 0 0
i "GM_Standard_Kit"   14.5833  0.1500  42  47 0 0.35 0 0
i "GM_Electric_Piano_1"   14.5835  0.1458  38  80 0 0.56 0 0
i "GM_Electric_Piano_1"   14.5850  0.1458  60  80 0 0.56 0 0
i "GM_Electric_Piano_1"   14.5866  0.1458  45  78 0 0.56 0 0
i "GM_Electric_Piano_1"   14.5883  0.1458  53  78 0 0.56 0 0
i "GM_Electric_Bass_finger"   14.7917  0.1917  43  68 0 0.50 0 0
i "GM_Standard_Kit"   14.7917  0.1500  46  38 0 0.35 0 0
i "GM_Electric_Bass_finger"   15.0000  0.1917  46  79 0 0.50 0 0
i "GM_Electric_Piano_2"   15.0000  0.1833  62  96 0 0.74 0 0
i "GM_Standard_Kit"   15.0000  0.2500  36  67 0 0.50 0 0
i "GM_Standard_Kit"   15.0000  0.1500  42  52 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   15.0009  0.1458  58  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   15.0040  0.1458  65  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   15.0051  0.1458  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   15.0067  0.1458  69  55 0 0.38 0 0
i "GM_Electric_Bass_finger"   15.2083  0.1917  46  74 0 0.50 0 0
i "GM_Standard_Kit"   15.2083  0.1500  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   15.4167  0.1917  49  86 0 0.50 0 0
i "GM_Electric_Piano_2"   15.4167  0.1833  62 100 0 0.74 0 0
i "GM_Standard_Kit"   15.4167  0.2000  38  74 0 0.48 0 0
i "GM_Standard_Kit"   15.4167  0.1500  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   15.5217  0.1458  58  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   15.5247  0.1458  69  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   15.5250  0.1458  65  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   15.5269  0.1458  62  63 0 0.38 0 0
i "GM_Electric_Bass_finger"   15.6250  0.1917  51  70 0 0.50 0 0
i "GM_Electric_Piano_2"   15.6250  0.1833  65  87 0 0.74 0 0
i "GM_Standard_Kit"   15.6250  0.1500  46  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   15.8333  0.1917  41  81 0 0.50 0 0
i "GM_Electric_Piano_2"   15.8333  0.3667  62  97 0 0.74 0 0
i "GM_Standard_Kit"   15.8333  0.2500  36  67 0 0.50 0 0
i "GM_Standard_Kit"   15.8333  0.1500  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"   16.0417  0.1917  44  68 0 0.50 0 0
i "GM_Standard_Kit"   16.0417  0.1500  42  40 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   16.1468  0.1458  53  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   16.1505  0.1458  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   16.1526  0.1458  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   16.1532  0.1458  64  55 0 0.38 0 0
i "GM_Electric_Bass_finger"   16.2500  0.1917  41  79 0 0.50 0 0
i "GM_Electric_Piano_2"   16.2500  0.1833  65  93 0 0.74 0 0
i "GM_Standard_Kit"   16.2500  0.2000  38  66 0 0.48 0 0
i "GM_Standard_Kit"   16.2500  0.1500  42  46 0 0.35 0 0
i "GM_Electric_Piano_2"   16.4583  0.1833  65  88 0 0.74 0 0
i "GM_Standard_Kit"   16.4583  0.1500  46  37 0 0.35 0 0
i "GM_Electric_Bass_finger"   16.6667  0.1917  41  83 0 0.50 0 0
i "GM_Harpsichord"   16.6667  0.1833  64  99 0 0.36 0 0
i "GM_Rock_Organ"   16.6667  1.6000  53  39 0 0.55 0 0
i "GM_Rock_Organ"   16.6667  1.6000  60  34 0 0.55 0 0
i "GM_Rock_Organ"   16.6667  1.6000  64  38 0 0.55 0 0
i "GM_Rock_Organ"   16.6667  1.6000  69  36 0 0.55 0 0
i "GM_Standard_Kit"   16.6667  0.2500  36  63 0 0.50 0 0
i "GM_Standard_Kit"   16.6667  0.1500  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"   16.8750  0.1917  46  70 0 0.50 0 0
i "GM_Harpsichord"   16.8750  0.1833  65  95 0 0.36 0 0
i "GM_Standard_Kit"   16.8750  0.1500  42  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   16.9796  0.1458  57  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   16.9816  0.1458  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   16.9867  0.1458  60  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   16.9871  0.1458  53  63 0 0.38 0 0
i "GM_Electric_Bass_finger"   17.0833  0.1917  44  84 0 0.50 0 0
i "GM_Harpsichord"   17.0833  0.1833  70 104 0 0.36 0 0
i "GM_Standard_Kit"   17.0833  0.2000  38  76 0 0.48 0 0
i "GM_Standard_Kit"   17.0833  0.1500  42  51 0 0.35 0 0
i "GM_Harpsichord"   17.2917  0.1833  70  88 0 0.36 0 0
i "GM_Standard_Kit"   17.2917  0.1500  42  36 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   17.2949  0.1458  52  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.2958  0.1458  57  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.2959  0.1458  53  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.2968  0.1458  60  55 0 0.38 0 0
i "GM_Electric_Bass_finger"   17.5000  0.1917  41  80 0 0.50 0 0
i "GM_Harpsichord"   17.5000  0.3667  65 105 0 0.36 0 0
i "GM_Standard_Kit"   17.5000  0.2500  36  68 0 0.50 0 0
i "GM_Standard_Kit"   17.5000  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"   17.7083  0.1500  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"   17.9167  0.1917  51  83 0 0.50 0 0
i "GM_Harpsichord"   17.9167  0.3667  57  89 0 0.36 0 0
i "GM_Standard_Kit"   17.9167  0.2500  36  65 0 0.50 0 0
i "GM_Standard_Kit"   17.9167  0.2000  38  67 0 0.48 0 0
i "GM_Standard_Kit"   17.9167  0.1500  42  47 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   17.9176  0.1458  57  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.9202  0.1458  64  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.9226  0.1458  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   17.9245  0.1458  53  54 0 0.38 0 0
i "GM_Electric_Bass_finger"   18.1250  0.1917  41  69 0 0.50 0 0
i "GM_Standard_Kit"   18.1250  0.1500  46  37 0 0.35 0 0
i "GM_Clavi"   18.3333  0.3667  60 102 0 0.54 0 0
i "GM_Electric_Bass_finger"   18.3333  0.1917  36  82 0 0.50 0 0
i "GM_Standard_Kit"   18.3333  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"   18.3333  0.1500  42  49 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   18.3339  0.1146  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   18.3365  0.1146  59  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   18.3368  0.1146  67  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   18.3412  0.1146  60  59 0 0.38 0 0
i "GM_Standard_Kit"   18.5417  0.1500  42  37 0 0.35 0 0
i "GM_Clavi"   18.7500  0.1833  60  99 0 0.54 0 0
i "GM_Electric_Bass_finger"   18.7500  0.1917  36  81 0 0.50 0 0
i "GM_Standard_Kit"   18.7500  0.2500  36  62 0 0.50 0 0
i "GM_Standard_Kit"   18.7500  0.2000  38  77 0 0.48 0 0
i "GM_Standard_Kit"   18.7500  0.1500  42  50 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   18.8545  0.1146  64  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   18.8553  0.1146  71  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   18.8617  0.1146  67  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   18.8620  0.1146  60  57 0 0.38 0 0
i "GM_Clavi"   18.9583  0.1833  65  92 0 0.54 0 0
i "GM_Electric_Bass_finger"   18.9583  0.1917  46  70 0 0.50 0 0
i "GM_Standard_Kit"   18.9583  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"   18.9583  0.1500  42  37 0 0.35 0 0
i "GM_Standard_Kit"   18.9583  0.1800  50  83 0 0.40 0 0
i "GM_Clavi"   19.1667  0.1833  60  99 0 0.54 0 0
i "GM_Electric_Bass_finger"   19.1667  0.1917  43  84 0 0.50 0 0
i "GM_Standard_Kit"   19.1667  0.1500  42  48 0 0.35 0 0
i "GM_Standard_Kit"   19.1667  0.1800  48  86 0 0.44 0 0
i "GM_Clavi"   19.3750  0.1833  55  95 0 0.54 0 0
i "GM_Electric_Bass_finger"   19.3750  0.1917  41  74 0 0.50 0 0
i "GM_Standard_Kit"   19.3750  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"   19.3750  0.1500  42  39 0 0.35 0 0
i "GM_Standard_Kit"   19.3750  0.1800  47  80 0 0.48 0 0
i "GM_Acoustic_Grand_Piano"   19.4801  0.1146  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   19.4820  0.1146  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   19.4842  0.1146  60  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   19.4848  0.1146  59  54 0 0.38 0 0
i "GM_Clavi"   19.5833  0.1833  55  96 0 0.54 0 0
i "GM_Electric_Bass_finger"   19.5833  0.1917  39  78 0 0.50 0 0
i "GM_Standard_Kit"   19.5833  0.1500  46  48 0 0.35 0 0
i "GM_Standard_Kit"   19.5833  0.1800  45  84 0 0.52 0 0
i "GM_Standard_Kit"   19.5833  0.2000  49  82 0 0.70 0 0
i "GM_Celesta"   19.7917  0.3958  87  98 0 0.72 0 0
i "GM_Electric_Bass_finger"   19.7917  0.1917  44  78 0 0.50 0 0
i "GM_Standard_Kit"   19.7917  0.2500  36  65 0 0.50 0 0
i "GM_Standard_Kit"   19.7917  0.1500  42  47 0 0.35 0 0
i "GM_Standard_Kit"   19.7917  0.5500  49  88 0 0.72 0 0
i "GM_Standard_Kit"   19.7917  0.4000  57  70 0 0.78 0 0
i "GM_Electric_Bass_finger"   20.0000  0.1917  44  69 0 0.50 0 0
i "GM_Standard_Kit"   20.0000  0.1500  42  39 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   20.0027  0.1458  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.0028  0.1458  56  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.0064  0.1458  67  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.0067  0.1458  63  55 0 0.38 0 0
i "GM_Electric_Bass_finger"   20.2083  0.1917  47  81 0 0.50 0 0
i "GM_Standard_Kit"   20.2083  0.2000  38  74 0 0.48 0 0
i "GM_Standard_Kit"   20.2083  0.1500  42  51 0 0.35 0 0
i "GM_Celesta"   20.4167  0.1979  87  96 0 0.72 0 0
i "GM_Electric_Bass_finger"   20.4167  0.1917  49  69 0 0.50 0 0
i "GM_Standard_Kit"   20.4167  0.1500  42  40 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   20.4196  0.1458  63  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.4198  0.1458  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.4202  0.1458  56  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.4234  0.1458  55  57 0 0.38 0 0
i "GM_Celesta"   20.6250  0.3958  87 100 0 0.72 0 0
i "GM_Electric_Bass_finger"   20.6250  0.1917  51  79 0 0.50 0 0
i "GM_Standard_Kit"   20.6250  0.2500  36  66 0 0.50 0 0
i "GM_Standard_Kit"   20.6250  0.1500  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   20.7318  0.1458  55  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.7326  0.1458  60  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.7338  0.1458  63  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   20.7352  0.1458  56  56 0 0.38 0 0
i "GM_Electric_Bass_finger"   20.8333  0.1917  42  70 0 0.50 0 0
i "GM_Standard_Kit"   20.8333  0.1500  42  40 0 0.35 0 0
i "GM_Electric_Bass_finger"   21.0417  0.1917  51  86 0 0.50 0 0
i "GM_Standard_Kit"   21.0417  0.2000  38  66 0 0.48 0 0
i "GM_Standard_Kit"   21.0417  0.1500  42  46 0 0.35 0 0
i "GM_Celesta"   21.2500  0.1979  85  97 0 0.72 0 0
i "GM_Electric_Bass_finger"   21.2500  0.1917  49  73 0 0.50 0 0
i "GM_Standard_Kit"   21.2500  0.1500  46  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   21.2506  0.1458  56  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   21.2535  0.1458  60  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   21.2537  0.1458  67  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   21.2539  0.1458  63  64 0 0.38 0 0
i "GM_Electric_Bass_finger"   21.4583  0.1917  39  81 0 0.50 0 0
i "GM_Glockenspiel"   21.4583  0.5938  87 105 0 0.33 0 0
i "GM_Standard_Kit"   21.4583  0.2500  36  63 0 0.50 0 0
i "GM_Standard_Kit"   21.4583  0.1500  42  49 0 0.35 0 0
i "GM_Standard_Kit"   21.6667  0.1500  42  39 0 0.35 0 0
i "GM_Electric_Bass_finger"   21.8750  0.1917  42  83 0 0.50 0 0
i "GM_Standard_Kit"   21.8750  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"   21.8750  0.1500  42  52 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   21.8757  0.1458  63  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   21.8795  0.1458  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   21.8815  0.1458  70  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   21.8820  0.1458  67  58 0 0.38 0 0
i "GM_Standard_Kit"   22.0833  0.1500  42  38 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   22.1880  0.1458  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   22.1880  0.1458  70  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   22.1920  0.1458  63  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   22.1927  0.1458  67  60 0 0.38 0 0
i "GM_Electric_Bass_finger"   22.2917  0.1917  39  84 0 0.50 0 0
i "GM_Glockenspiel"   22.2917  0.3958  82 102 0 0.33 0 0
i "GM_Standard_Kit"   22.2917  0.2500  36  67 0 0.50 0 0
i "GM_Standard_Kit"   22.2917  0.1500  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"   22.5000  0.1917  46  71 0 0.50 0 0
i "GM_Standard_Kit"   22.5000  0.1500  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   22.7083  0.1917  49  83 0 0.50 0 0
i "GM_Glockenspiel"   22.7083  0.3958  86  93 0 0.33 0 0
i "GM_Standard_Kit"   22.7083  0.2000  38  67 0 0.48 0 0
i "GM_Standard_Kit"   22.7083  0.1500  42  49 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   22.7090  0.1458  69  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   22.7110  0.1458  62  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   22.7142  0.1458  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   22.7146  0.1458  58  55 0 0.38 0 0
i "GM_Electric_Bass_finger"   22.9167  0.1917  51  76 0 0.50 0 0
i "GM_Standard_Kit"   22.9167  0.1500  46  40 0 0.35 0 0
i "GM_Electric_Bass_finger"   23.1250  0.1917  46  79 0 0.50 0 0
i "GM_Music_Box"   23.1250  0.3958  89  98 0 0.52 0 0
i "GM_Rock_Organ"   23.1250  1.6000  58  36 0 0.55 0 0
i "GM_Rock_Organ"   23.1250  1.6000  62  35 0 0.55 0 0
i "GM_Rock_Organ"   23.1250  1.6000  65  38 0 0.55 0 0
i "GM_Rock_Organ"   23.1250  1.6000  69  37 0 0.55 0 0
i "GM_Standard_Kit"   23.1250  0.2500  36  67 0 0.50 0 0
i "GM_Standard_Kit"   23.1250  0.1500  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"   23.3333  0.1917  46  76 0 0.50 0 0
i "GM_Standard_Kit"   23.3333  0.1500  42  39 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   23.3347  0.1458  57  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   23.3357  0.1458  62  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   23.3364  0.1458  58  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   23.3371  0.1458  65  55 0 0.38 0 0
i "GM_Electric_Bass_finger"   23.5417  0.1917  49  78 0 0.50 0 0
i "GM_Standard_Kit"   23.5417  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"   23.5417  0.1500  42  46 0 0.35 0 0
i "GM_Standard_Kit"   23.6458  0.2500  36  69 0 0.50 0 0
i "GM_Electric_Bass_finger"   23.7500  0.1917  51  68 0 0.50 0 0
i "GM_Music_Box"   23.7500  0.1979  87  89 0 0.52 0 0
i "GM_Standard_Kit"   23.7500  0.1500  42  41 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   23.7501  0.1458  65  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   23.7552  0.1458  58  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   23.7573  0.1458  69  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   23.7573  0.1458  62  61 0 0.38 0 0
i "GM_Electric_Bass_finger"   23.9583  0.1917  41  79 0 0.50 0 0
i "GM_Music_Box"   23.9583  0.3958  94 103 0 0.52 0 0
i "GM_Standard_Kit"   23.9583  0.2500  36  64 0 0.50 0 0
i "GM_Standard_Kit"   23.9583  0.1500  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   24.0634  0.1458  58  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   24.0644  0.1458  65  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   24.0654  0.1458  62  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   24.0673  0.1458  69  57 0 0.38 0 0
i "GM_Electric_Bass_finger"   24.1667  0.1917  44  74 0 0.50 0 0
i "GM_Standard_Kit"   24.1667  0.1500  42  37 0 0.35 0 0
i "GM_Electric_Bass_finger"   24.3750  0.1917  41  80 0 0.50 0 0
i "GM_Standard_Kit"   24.3750  0.2000  38  64 0 0.48 0 0
i "GM_Standard_Kit"   24.3750  0.1500  42  52 0 0.35 0 0
i "GM_Electric_Bass_finger"   24.5833  0.1917  51  70 0 0.50 0 0
i "GM_Music_Box"   24.5833  0.1979  98  87 0 0.52 0 0
i "GM_Standard_Kit"   24.5833  0.1500  46  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   24.5848  0.1458  58  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   24.5866  0.1458  62  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   24.5872  0.1458  69  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   24.5883  0.1458  65  62 0 0.38 0 0
i "GM_Electric_Bass_finger"   24.7917  0.1917  45  86 0 0.50 0 0
i "GM_Standard_Kit"   24.7917  0.2500  36  62 0 0.50 0 0
i "GM_Standard_Kit"   24.7917  0.1500  42  51 0 0.35 0 0
i "GM_Vibraphone"   24.7917  0.3667  76  99 0 0.70 0 0
i "GM_Standard_Kit"   25.0000  0.1500  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"   25.2083  0.1917  45  82 0 0.50 0 0
i "GM_Standard_Kit"   25.2083  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"   25.2083  0.1500  42  50 0 0.35 0 0
i "GM_Vibraphone"   25.2083  0.1833  76 105 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"   25.2090  0.1458  57  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.2091  0.1458  67  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.2133  0.1458  64  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.2139  0.1458  73  55 0 0.38 0 0
i "GM_Electric_Bass_finger"   25.4167  0.1917  43  68 0 0.50 0 0
i "GM_Standard_Kit"   25.4167  0.1500  42  38 0 0.35 0 0
i "GM_Vibraphone"   25.4167  0.1833  81  88 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"   25.5216  0.1458  64  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.5233  0.1458  57  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.5242  0.1458  61  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   25.5255  0.1458  55  62 0 0.38 0 0
i "GM_Electric_Bass_finger"   25.6250  0.1917  52  80 0 0.50 0 0
i "GM_Standard_Kit"   25.6250  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"   25.6250  0.1500  42  47 0 0.35 0 0
i "GM_Vibraphone"   25.6250  0.1833  73 105 0 0.70 0 0
i "GM_Electric_Bass_finger"   25.8333  0.1917  50  70 0 0.50 0 0
i "GM_Standard_Kit"   25.8333  0.1500  42  41 0 0.35 0 0
i "GM_Vibraphone"   25.8333  0.1833  74  88 0 0.70 0 0
i "GM_Electric_Bass_finger"   26.0417  0.1917  48  78 0 0.50 0 0
i "GM_Standard_Kit"   26.0417  0.2500  36  67 0 0.50 0 0
i "GM_Standard_Kit"   26.0417  0.2000  38  66 0 0.48 0 0
i "GM_Standard_Kit"   26.0417  0.1500  42  48 0 0.35 0 0
i "GM_Vibraphone"   26.0417  0.1833  67  94 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"   26.0420  0.1458  57  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   26.0442  0.1458  73  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   26.0459  0.1458  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   26.0492  0.1458  67  58 0 0.38 0 0
i "GM_Standard_Kit"   26.2500  0.1500  46  36 0 0.35 0 0
i "GM_Vibraphone"   26.2500  0.1833  66  87 0 0.70 0 0
i "GM_Electric_Bass_finger"   26.4583  0.1917  40  81 0 0.50 0 0
i "GM_Marimba"   26.4583  0.1833  64 101 0 0.31 0 0
i "GM_Standard_Kit"   26.4583  0.2500  36  65 0 0.50 0 0
i "GM_Standard_Kit"   26.4583  0.1500  42  50 0 0.35 0 0
i "GM_Standard_Kit"   26.6667  0.1500  42  40 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   26.7711  0.1458  67  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   26.7723  0.1458  62  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   26.7758  0.1458  52  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   26.7763  0.1458  59  56 0 0.38 0 0
i "GM_Electric_Bass_finger"   26.8750  0.1917  40  79 0 0.50 0 0
i "GM_Marimba"   26.8750  0.1833  69 100 0 0.31 0 0
i "GM_Standard_Kit"   26.8750  0.2000  38  75 0 0.48 0 0
i "GM_Standard_Kit"   26.8750  0.1500  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"   27.0833  0.1917  50  72 0 0.50 0 0
i "GM_Marimba"   27.0833  0.1833  69  90 0 0.31 0 0
i "GM_Standard_Kit"   27.0833  0.1500  42  41 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   27.0851  0.1458  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   27.0866  0.1458  71  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   27.0890  0.1458  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   27.0912  0.1458  67  60 0 0.38 0 0
i "GM_Electric_Bass_finger"   27.2917  0.1917  47  85 0 0.50 0 0
i "GM_Marimba"   27.2917  0.3667  62  99 0 0.31 0 0
i "GM_Standard_Kit"   27.2917  0.2500  36  64 0 0.50 0 0
i "GM_Standard_Kit"   27.2917  0.1500  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"   27.5000  0.1917  45  73 0 0.50 0 0
i "GM_Standard_Kit"   27.5000  0.1500  42  39 0 0.35 0 0
i "GM_Electric_Bass_finger"   27.7083  0.1917  43  85 0 0.50 0 0
i "GM_Marimba"   27.7083  0.1833  64  94 0 0.31 0 0
i "GM_Standard_Kit"   27.7083  0.2000  38  69 0 0.48 0 0
i "GM_Standard_Kit"   27.7083  0.1500  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   27.7135  0.1458  59  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   27.7149  0.1458  62  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   27.7157  0.1458  52  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   27.7157  0.1458  55  56 0 0.38 0 0
i "GM_Electric_Bass_finger"   27.9167  0.1917  42  69 0 0.50 0 0
i "GM_Marimba"   27.9167  0.1833  67  92 0 0.31 0 0
i "GM_Standard_Kit"   27.9167  0.1500  46  35 0 0.35 0 0
i "GM_Electric_Bass_finger"   28.1250  0.1917  36  78 0 0.50 0 0
i "GM_Standard_Kit"   28.1250  0.2500  36  64 0 0.50 0 0
i "GM_Standard_Kit"   28.1250  0.1500  42  48 0 0.35 0 0
i "GM_Xylophone"   28.1250  0.3958  83  95 0 0.49 0 0
i "GM_Acoustic_Grand_Piano"   28.1269  0.1458  67  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   28.1286  0.1458  64  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   28.1287  0.1458  60  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   28.1293  0.1458  71  62 0 0.38 0 0
i "GM_Electric_Bass_finger"   28.3333  0.1917  39  71 0 0.50 0 0
i "GM_Standard_Kit"   28.3333  0.1500  42  39 0 0.35 0 0
i "GM_Electric_Bass_finger"   28.5417  0.1917  41  79 0 0.50 0 0
i "GM_Standard_Kit"   28.5417  0.2000  38  75 0 0.48 0 0
i "GM_Standard_Kit"   28.5417  0.1500  42  50 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   28.6472  0.1458  67  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   28.6503  0.1458  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   28.6506  0.1458  71  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   28.6533  0.1458  76  54 0 0.38 0 0
i "GM_Standard_Kit"   28.7500  0.1500  42  39 0 0.35 0 0
i "GM_Xylophone"   28.7500  0.1979  77  91 0 0.49 0 0
i "GM_Electric_Bass_finger"   28.9583  0.1917  41  85 0 0.50 0 0
i "GM_Standard_Kit"   28.9583  0.2500  36  66 0 0.50 0 0
i "GM_Standard_Kit"   28.9583  0.1500  42  51 0 0.35 0 0
i "GM_Xylophone"   28.9583  0.3958  83 104 0 0.49 0 0
i "GM_Electric_Bass_finger"   29.1667  0.1917  39  73 0 0.50 0 0
i "GM_Standard_Kit"   29.1667  0.1500  42  36 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   29.2723  0.1458  66  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   29.2728  0.1458  59  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   29.2737  0.1458  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   29.2763  0.1458  55  59 0 0.38 0 0
i "GM_Electric_Bass_finger"   29.3750  0.1917  38  83 0 0.50 0 0
i "GM_Standard_Kit"   29.3750  0.2000  38  66 0 0.48 0 0
i "GM_Standard_Kit"   29.3750  0.1500  42  50 0 0.35 0 0
i "GM_Standard_Kit"   29.5833  0.1500  46  40 0 0.35 0 0
i "GM_Xylophone"   29.5833  0.1979  79  93 0 0.49 0 0
i "GM_Electric_Bass_finger"   29.7917  0.1917  43  84 0 0.50 0 0
i "GM_Rock_Organ"   29.7917  1.6000  55  37 0 0.55 0 0
i "GM_Rock_Organ"   29.7917  1.6000  62  35 0 0.55 0 0
i "GM_Rock_Organ"   29.7917  1.6000  66  38 0 0.55 0 0
i "GM_Rock_Organ"   29.7917  1.6000  71  36 0 0.55 0 0
i "GM_Standard_Kit"   29.7917  0.2500  36  68 0 0.50 0 0
i "GM_Standard_Kit"   29.7917  0.1500  42  50 0 0.35 0 0
i "GM_Tubular_Bells"   29.7917  0.5500  66 105 0 0.67 0 0
i "GM_Electric_Bass_finger"   30.0000  0.1917  46  69 0 0.50 0 0
i "GM_Standard_Kit"   30.0000  0.1500  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   30.2083  0.1917  48  85 0 0.50 0 0
i "GM_Standard_Kit"   30.2083  0.2000  38  73 0 0.48 0 0
i "GM_Standard_Kit"   30.2083  0.1500  42  48 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   30.3151  0.1458  71  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   30.3151  0.1458  62  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   30.3160  0.1458  66  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   30.3197  0.1458  55  62 0 0.38 0 0
i "GM_Electric_Bass_finger"   30.4167  0.1917  50  74 0 0.50 0 0
i "GM_Standard_Kit"   30.4167  0.1500  42  37 0 0.35 0 0
i "GM_Tubular_Bells"   30.4167  0.1833  67  96 0 0.67 0 0
i "GM_Electric_Bass_finger"   30.6250  0.1917  48  82 0 0.50 0 0
i "GM_Standard_Kit"   30.6250  0.2500  36  63 0 0.50 0 0
i "GM_Standard_Kit"   30.6250  0.1500  42  46 0 0.35 0 0
i "GM_Tubular_Bells"   30.6250  0.3667  62 105 0 0.67 0 0
i "GM_Electric_Bass_finger"   30.8333  0.1917  46  75 0 0.50 0 0
i "GM_Standard_Kit"   30.8333  0.1500  42  40 0 0.35 0 0
i "GM_Electric_Bass_finger"   31.0417  0.1917  45  84 0 0.50 0 0
i "GM_Standard_Kit"   31.0417  0.2500  36  68 0 0.50 0 0
i "GM_Standard_Kit"   31.0417  0.2000  38  68 0 0.48 0 0
i "GM_Standard_Kit"   31.0417  0.1500  42  52 0 0.35 0 0
i "GM_Tubular_Bells"   31.0417  0.1833  67  88 0 0.67 0 0
i "GM_Acoustic_Grand_Piano"   31.0442  0.1458  62  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   31.0475  0.1458  55  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   31.0475  0.1458  59  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   31.0487  0.1458  66  55 0 0.38 0 0
i "GM_Electric_Bass_finger"   31.2500  0.1917  43  69 0 0.50 0 0
i "GM_Standard_Kit"   31.2500  0.1500  46  35 0 0.35 0 0
i "GM_Tubular_Bells"   31.2500  0.1833  62  95 0 0.67 0 0
i "GM_Acoustic_Grand_Piano"   31.2510  0.1458  55  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   31.2519  0.1458  62  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   31.2556  0.1458  71  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   31.2578  0.1458  66  61 0 0.38 0 0
i "GM_Dulcimer"   31.4583  0.3667  69  99 0 0.29 0 0
i "GM_Electric_Bass_finger"   31.4583  0.1917  38  78 0 0.50 0 0
i "GM_Standard_Kit"   31.4583  0.2500  36  66 0 0.50 0 0
i "GM_Standard_Kit"   31.4583  0.1500  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"   31.6667  0.1917  41  75 0 0.50 0 0
i "GM_Standard_Kit"   31.6667  0.1500  42  36 0 0.35 0 0
i "GM_Dulcimer"   31.8750  0.1833  66  99 0 0.29 0 0
i "GM_Electric_Bass_finger"   31.8750  0.1917  43  83 0 0.50 0 0
i "GM_Standard_Kit"   31.8750  0.2000  38  75 0 0.48 0 0
i "GM_Standard_Kit"   31.8750  0.1500  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   31.8764  0.1146  72  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   31.8766  0.1146  66  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   31.8819  0.1146  62  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   31.8822  0.1146  69  54 0 0.38 0 0
i "GM_Dulcimer"   32.0833  0.1833  72  97 0 0.29 0 0
i "GM_Electric_Bass_finger"   32.0833  0.1917  45  75 0 0.50 0 0
i "GM_Standard_Kit"   32.0833  0.2500  36  65 0 0.50 0 0
i "GM_Standard_Kit"   32.0833  0.1500  42  38 0 0.35 0 0
i "GM_Standard_Kit"   32.0833  0.1800  50  78 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"   32.1890  0.1146  57  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   32.1918  0.1146  50  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   32.1927  0.1146  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   32.1933  0.1146  66  59 0 0.38 0 0
i "GM_Dulcimer"   32.2917  0.1833  69 104 0 0.29 0 0
i "GM_Electric_Bass_finger"   32.2917  0.1917  43  80 0 0.50 0 0
i "GM_Standard_Kit"   32.2917  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"   32.2917  0.1800  48  81 0 0.44 0 0
i "GM_Dulcimer"   32.5000  0.1833  72  89 0 0.29 0 0
i "GM_Electric_Bass_finger"   32.5000  0.1917  41  75 0 0.50 0 0
i "GM_Standard_Kit"   32.5000  0.2000  38  71 0 0.48 0 0
i "GM_Standard_Kit"   32.5000  0.1500  42  39 0 0.35 0 0
i "GM_Standard_Kit"   32.5000  0.1800  47  87 0 0.48 0 0
i "GM_Dulcimer"   32.7083  0.1833  79  97 0 0.29 0 0
i "GM_Electric_Bass_finger"   32.7083  0.1917  40  81 0 0.50 0 0
i "GM_Standard_Kit"   32.7083  0.1500  46  49 0 0.35 0 0
i "GM_Standard_Kit"   32.7083  0.1800  45  85 0 0.52 0 0
i "GM_Standard_Kit"   32.7083  0.2000  49  82 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"   32.7101  0.1146  72  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   32.7110  0.1146  66  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   32.7117  0.1146  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   32.7153  0.1146  62  56 0 0.38 0 0
i "GM_Drawbar_Organ"   32.9167  0.5500  64  95 0 0.47 0 0
i "GM_Slap_Bass_1"   32.9167  0.1917  45  78 0 0.50 0 0
i "GM_Standard_Kit"   32.9167  0.2500  36  76 0 0.50 0 0
i "GM_Standard_Kit"   32.9167  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"   32.9167  0.2500  51  48 0 0.70 0 0
i "GM_Standard_Kit"   32.9167  0.5500  49  88 0 0.72 0 0
i "GM_Standard_Kit"   32.9167  0.4000  57  70 0 0.78 0 0
i "GM_Standard_Kit"   33.1250  0.1500  42  43 0 0.35 0 0
i "GM_Electric_Piano_1"   33.2297  0.1458  57  66 0 0.42 0 0
i "GM_Electric_Piano_1"   33.2333  0.1458  72  64 0 0.42 0 0
i "GM_Electric_Piano_1"   33.2344  0.1458  67  56 0 0.42 0 0
i "GM_Electric_Piano_1"   33.2364  0.1458  64  61 0 0.42 0 0
i "GM_Slap_Bass_1"   33.3333  0.1917  48  80 0 0.50 0 0
i "GM_Standard_Kit"   33.3333  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"   33.3333  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"   33.3333  0.2500  51  52 0 0.70 0 0
i "GM_Alto_Sax"   33.4375  0.1146  71  54 0 0.62 0 0
i "GM_Standard_Kit"   33.4375  0.2500  36  70 0 0.50 0 0
i "GM_Tenor_Sax"   33.4375  0.1146  65  61 0 0.35 0 0
i "GM_Trombone"   33.4375  0.1146  67  57 0 0.28 0 0
i "GM_Trumpet"   33.4375  0.1146  71  58 0 0.72 0 0
i "GM_Drawbar_Organ"   33.5417  0.1833  62  92 0 0.47 0 0
i "GM_Slap_Bass_1"   33.5417  0.1917  47  68 0 0.50 0 0
i "GM_Standard_Kit"   33.5417  0.1500  42  42 0 0.35 0 0
i "GM_Electric_Piano_1"   33.5426  0.1458  64  62 0 0.42 0 0
i "GM_Electric_Piano_1"   33.5431  0.1458  60  58 0 0.42 0 0
i "GM_Electric_Piano_1"   33.5471  0.1458  55  64 0 0.42 0 0
i "GM_Electric_Piano_1"   33.5476  0.1458  57  64 0 0.42 0 0
i "GM_Drawbar_Organ"   33.7500  0.3667  67 104 0 0.47 0 0
i "GM_Slap_Bass_1"   33.7500  0.1917  45  85 0 0.50 0 0
i "GM_Standard_Kit"   33.7500  0.2500  36  77 0 0.50 0 0
i "GM_Standard_Kit"   33.7500  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"   33.7500  0.2500  51  47 0 0.70 0 0
i "GM_Slap_Bass_1"   33.9583  0.1917  52  74 0 0.50 0 0
i "GM_Standard_Kit"   33.9583  0.1500  42  43 0 0.35 0 0
i "GM_Alto_Sax"   34.1667  0.1146  71  61 0 0.62 0 0
i "GM_Drawbar_Organ"   34.1667  0.1833  62  90 0 0.47 0 0
i "GM_Slap_Bass_1"   34.1667  0.1917  43  78 0 0.50 0 0
i "GM_Standard_Kit"   34.1667  0.2000  38  70 0 0.48 0 0
i "GM_Standard_Kit"   34.1667  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"   34.1667  0.2500  51  47 0 0.70 0 0
i "GM_Tenor_Sax"   34.1667  0.1146  62  62 0 0.35 0 0
i "GM_Trombone"   34.1667  0.1146  67  54 0 0.28 0 0
i "GM_Trumpet"   34.1667  0.1146  79  59 0 0.72 0 0
i "GM_Electric_Piano_1"   34.1684  0.1458  72  65 0 0.42 0 0
i "GM_Electric_Piano_1"   34.1687  0.1458  67  64 0 0.42 0 0
i "GM_Electric_Piano_1"   34.1720  0.1458  57  64 0 0.42 0 0
i "GM_Electric_Piano_1"   34.1729  0.1458  64  59 0 0.42 0 0
i "GM_Alto_Sax"   34.3750  0.1146  76  56 0 0.62 0 0
i "GM_Drawbar_Organ"   34.3750  0.1833  64  93 0 0.47 0 0
i "GM_Slap_Bass_1"   34.3750  0.1917  45  75 0 0.50 0 0
i "GM_Standard_Kit"   34.3750  0.1500  46  40 0 0.35 0 0
i "GM_Tenor_Sax"   34.3750  0.1146  65  62 0 0.35 0 0
i "GM_Trombone"   34.3750  0.1146  67  55 0 0.28 0 0
i "GM_Trumpet"   34.3750  0.1146  71  58 0 0.72 0 0
i "GM_Slap_Bass_1"   34.5833  0.1917  41  85 0 0.50 0 0
i "GM_Standard_Kit"   34.5833  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"   34.5833  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"   34.5833  0.2500  51  47 0 0.70 0 0
i "GM_Percussive_Organ"   34.7917  0.1833  69  93 0 0.65 0 0
i "GM_Slap_Bass_1"   34.7917  0.1917  48  69 0 0.50 0 0
i "GM_Standard_Kit"   34.7917  0.1500  42  44 0 0.35 0 0
i "GM_Alto_Sax"   35.0000  0.1146  76  61 0 0.62 0 0
i "GM_Percussive_Organ"   35.0000  0.3667  64  99 0 0.65 0 0
i "GM_Slap_Bass_1"   35.0000  0.1917  41  78 0 0.50 0 0
i "GM_Standard_Kit"   35.0000  0.2000  38  85 0 0.48 0 0
i "GM_Standard_Kit"   35.0000  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"   35.0000  0.2500  51  46 0 0.70 0 0
i "GM_Tenor_Sax"   35.0000  0.1146  70  61 0 0.35 0 0
i "GM_Trombone"   35.0000  0.1146  59  61 0 0.28 0 0
i "GM_Trumpet"   35.0000  0.1146  79  57 0 0.72 0 0
i "GM_Electric_Piano_1"   35.0017  0.1458  57  58 0 0.42 0 0
i "GM_Electric_Piano_1"   35.0025  0.1458  53  65 0 0.42 0 0
i "GM_Electric_Piano_1"   35.0032  0.1458  60  66 0 0.42 0 0
i "GM_Electric_Piano_1"   35.0080  0.1458  64  61 0 0.42 0 0
i "GM_Slap_Bass_1"   35.2083  0.1917  51  71 0 0.50 0 0
i "GM_Standard_Kit"   35.2083  0.1500  42  39 0 0.35 0 0
i "GM_Alto_Sax"   35.3125  0.1146  68  60 0 0.62 0 0
i "GM_Tenor_Sax"   35.3125  0.1146  70  55 0 0.35 0 0
i "GM_Trombone"   35.3125  0.1146  67  57 0 0.28 0 0
i "GM_Trumpet"   35.3125  0.1146  71  56 0 0.72 0 0
i "GM_Electric_Piano_1"   35.3162  0.1458  57  62 0 0.42 0 0
i "GM_Electric_Piano_1"   35.3181  0.1458  52  65 0 0.42 0 0
i "GM_Electric_Piano_1"   35.3199  0.1458  53  58 0 0.42 0 0
i "GM_Electric_Piano_1"   35.3200  0.1458  60  59 0 0.42 0 0
i "GM_Percussive_Organ"   35.4167  0.1833  60 100 0 0.65 0 0
i "GM_Slap_Bass_1"   35.4167  0.1917  48  82 0 0.50 0 0
i "GM_Standard_Kit"   35.4167  0.2500  36  71 0 0.50 0 0
i "GM_Standard_Kit"   35.4167  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"   35.4167  0.2500  51  49 0 0.70 0 0
i "GM_Percussive_Organ"   35.6250  0.1833  59  88 0 0.65 0 0
i "GM_Slap_Bass_1"   35.6250  0.1917  46  76 0 0.50 0 0
i "GM_Standard_Kit"   35.6250  0.1500  42  40 0 0.35 0 0
i "GM_Alto_Sax"   35.8333  0.1146  68  54 0 0.62 0 0
i "GM_Percussive_Organ"   35.8333  0.3667  60  94 0 0.65 0 0
i "GM_Slap_Bass_1"   35.8333  0.1917  44  81 0 0.50 0 0
i "GM_Standard_Kit"   35.8333  0.2000  38  72 0 0.48 0 0
i "GM_Standard_Kit"   35.8333  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"   35.8333  0.2500  51  50 0 0.70 0 0
i "GM_Tenor_Sax"   35.8333  0.1146  62  56 0 0.35 0 0
i "GM_Trombone"   35.8333  0.1146  67  58 0 0.28 0 0
i "GM_Trumpet"   35.8333  0.1146  76  58 0 0.72 0 0
i "GM_Electric_Piano_1"   35.8351  0.1458  64  61 0 0.42 0 0
i "GM_Electric_Piano_1"   35.8353  0.1458  67  64 0 0.42 0 0
i "GM_Electric_Piano_1"   35.8364  0.1458  60  56 0 0.42 0 0
i "GM_Electric_Piano_1"   35.8398  0.1458  71  63 0 0.42 0 0
i "GM_Slap_Bass_1"   36.0417  0.1917  43  69 0 0.50 0 0
i "GM_Standard_Kit"   36.0417  0.1500  46  43 0 0.35 0 0
i "GM_Rock_Organ"   36.2500  0.5500  71 100 0 0.27 0 0
i "GM_Slap_Bass_1"   36.2500  0.1917  36  85 0 0.50 0 0
i "GM_Standard_Kit"   36.2500  0.2500  36  74 0 0.50 0 0
i "GM_Standard_Kit"   36.2500  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"   36.2500  0.2500  51  46 0 0.70 0 0
i "GM_Slap_Bass_1"   36.4583  0.1917  36  70 0 0.50 0 0
i "GM_Standard_Kit"   36.4583  0.1500  42  43 0 0.35 0 0
i "GM_Slap_Bass_1"   36.6667  0.1917  39  86 0 0.50 0 0
i "GM_Standard_Kit"   36.6667  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"   36.6667  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"   36.6667  0.2500  51  47 0 0.70 0 0
i "GM_Alto_Sax"   36.7708  0.1146  71  62 0 0.62 0 0
i "GM_Standard_Kit"   36.7708  0.2500  36  77 0 0.50 0 0
i "GM_Tenor_Sax"   36.7708  0.1146  65  57 0 0.35 0 0
i "GM_Trombone"   36.7708  0.1146  62  56 0 0.28 0 0
i "GM_Trumpet"   36.7708  0.1146  78  61 0 0.72 0 0
i "GM_Rock_Organ"   36.8750  0.1833  76  90 0 0.27 0 0
i "GM_Slap_Bass_1"   36.8750  0.1917  41  72 0 0.50 0 0
i "GM_Standard_Kit"   36.8750  0.1500  42  40 0 0.35 0 0
i "GM_Rock_Organ"   37.0833  0.3667  79  96 0 0.27 0 0
i "GM_Slap_Bass_1"   37.0833  0.1917  43  83 0 0.50 0 0
i "GM_Standard_Kit"   37.0833  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"   37.0833  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"   37.0833  0.2500  51  48 0 0.70 0 0
i "GM_Slap_Bass_1"   37.2917  0.1917  46  74 0 0.50 0 0
i "GM_Standard_Kit"   37.2917  0.1500  42  43 0 0.35 0 0
i "GM_Alto_Sax"   37.5000  0.1146  75  57 0 0.62 0 0
i "GM_Rock_Organ"   37.5000  0.1833  72  87 0 0.27 0 0
i "GM_Slap_Bass_1"   37.5000  0.1917  43  80 0 0.50 0 0
i "GM_Standard_Kit"   37.5000  0.2000  38  74 0 0.48 0 0
i "GM_Standard_Kit"   37.5000  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"   37.5000  0.2500  51  49 0 0.70 0 0
i "GM_Tenor_Sax"   37.5000  0.1146  62  54 0 0.35 0 0
i "GM_Trombone"   37.5000  0.1146  62  59 0 0.28 0 0
i "GM_Trumpet"   37.5000  0.1146  71  58 0 0.72 0 0
i "GM_Alto_Sax"   37.7083  0.1146  75  58 0 0.62 0 0
i "GM_Rock_Organ"   37.7083  0.1833  74  91 0 0.27 0 0
i "GM_Slap_Bass_1"   37.7083  0.1917  41  72 0 0.50 0 0
i "GM_Standard_Kit"   37.7083  0.1500  46  40 0 0.35 0 0
i "GM_Tenor_Sax"   37.7083  0.1146  69  55 0 0.35 0 0
i "GM_Trombone"   37.7083  0.1146  66  54 0 0.28 0 0
i "GM_Trumpet"   37.7083  0.1146  71  61 0 0.72 0 0
i "GM_Church_Organ"   37.9167  0.5500  63  97 0 0.45 0 0
i "GM_Slap_Bass_1"   37.9167  0.1917  47  78 0 0.50 0 0
i "GM_Standard_Kit"   37.9167  0.2500  36  72 0 0.50 0 0
i "GM_Standard_Kit"   37.9167  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"   37.9167  0.2500  51  48 0 0.70 0 0
i "GM_Alto_Sax"   38.1250  0.1146  70  57 0 0.62 0 0
i "GM_Slap_Bass_1"   38.1250  0.1917  42  69 0 0.50 0 0
i "GM_Standard_Kit"   38.1250  0.1500  42  39 0 0.35 0 0
i "GM_Tenor_Sax"   38.1250  0.1146  64  57 0 0.35 0 0
i "GM_Trombone"   38.1250  0.1146  64  57 0 0.28 0 0
i "GM_Trumpet"   38.1250  0.1146  70  56 0 0.72 0 0
i "GM_Electric_Piano_1"   38.1256  0.1458  59  56 0 0.42 0 0
i "GM_Electric_Piano_1"   38.1276  0.1458  57  60 0 0.42 0 0
i "GM_Electric_Piano_1"   38.1278  0.1458  63  61 0 0.42 0 0
i "GM_Electric_Piano_1"   38.1295  0.1458  66  60 0 0.42 0 0
i "GM_Slap_Bass_1"   38.3333  0.1917  47  83 0 0.50 0 0
i "GM_Standard_Kit"   38.3333  0.2000  38  83 0 0.48 0 0
i "GM_Standard_Kit"   38.3333  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"   38.3333  0.2500  51  51 0 0.70 0 0
i "GM_Standard_Kit"   38.4375  0.2500  36  71 0 0.50 0 0
i "GM_Alto_Sax"   38.5417  0.1146  70  54 0 0.62 0 0
i "GM_Church_Organ"   38.5417  0.1833  64  96 0 0.45 0 0
i "GM_Slap_Bass_1"   38.5417  0.1917  45  74 0 0.50 0 0
i "GM_Standard_Kit"   38.5417  0.1500  42  42 0 0.35 0 0
i "GM_Tenor_Sax"   38.5417  0.1146  61  62 0 0.35 0 0
i "GM_Trombone"   38.5417  0.1146  58  62 0 0.28 0 0
i "GM_Trumpet"   38.5417  0.1146  70  62 0 0.72 0 0
i "GM_Electric_Piano_1"   38.5419  0.1458  66  59 0 0.42 0 0
i "GM_Electric_Piano_1"   38.5444  0.1458  63  61 0 0.42 0 0
i "GM_Electric_Piano_1"   38.5454  0.1458  59  65 0 0.42 0 0
i "GM_Electric_Piano_1"   38.5488  0.1458  57  66 0 0.42 0 0
i "GM_Church_Organ"   38.7500  0.3667  66  99 0 0.45 0 0
i "GM_Slap_Bass_1"   38.7500  0.1917  42  82 0 0.50 0 0
i "GM_Standard_Kit"   38.7500  0.2500  36  76 0 0.50 0 0
i "GM_Standard_Kit"   38.7500  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"   38.7500  0.2500  51  52 0 0.70 0 0
i "GM_Alto_Sax"   38.8542  0.1146  73  59 0 0.62 0 0
i "GM_Tenor_Sax"   38.8542  0.1146  64  59 0 0.35 0 0
i "GM_Trombone"   38.8542  0.1146  58  62 0 0.28 0 0
i "GM_Trumpet"   38.8542  0.1146  73  62 0 0.72 0 0
i "GM_Electric_Piano_1"   38.8547  0.1458  75  63 0 0.42 0 0
i "GM_Electric_Piano_1"   38.8575  0.1458  69  60 0 0.42 0 0
i "GM_Electric_Piano_1"   38.8585  0.1458  66  65 0 0.42 0 0
i "GM_Electric_Piano_1"   38.8592  0.1458  59  65 0 0.42 0 0
i "GM_Standard_Kit"   38.9583  0.1500  42  40 0 0.35 0 0
i "GM_Church_Organ"   39.1667  0.1833  69  90 0 0.45 0 0
i "GM_Slap_Bass_1"   39.1667  0.1917  50  85 0 0.50 0 0
i "GM_Standard_Kit"   39.1667  0.2000  38  73 0 0.48 0 0
i "GM_Standard_Kit"   39.1667  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"   39.1667  0.2500  51  50 0 0.70 0 0
i "GM_Alto_Sax"   39.3750  0.1146  73  60 0 0.62 0 0
i "GM_Church_Organ"   39.3750  0.1833  68  89 0 0.45 0 0
i "GM_Slap_Bass_1"   39.3750  0.1917  49  72 0 0.50 0 0
i "GM_Standard_Kit"   39.3750  0.1500  46  43 0 0.35 0 0
i "GM_Tenor_Sax"   39.3750  0.1146  67  56 0 0.35 0 0
i "GM_Trombone"   39.3750  0.1146  61  57 0 0.28 0 0
i "GM_Trumpet"   39.3750  0.1146  70  54 0 0.72 0 0
i "GM_Electric_Piano_1"   39.3753  0.1458  63  58 0 0.42 0 0
i "GM_Electric_Piano_1"   39.3775  0.1458  69  61 0 0.42 0 0
i "GM_Electric_Piano_1"   39.3781  0.1458  59  62 0 0.42 0 0
i "GM_Electric_Piano_1"   39.3805  0.1458  66  60 0 0.42 0 0
i "GM_Reed_Organ"   39.5833  0.1833  69 105 0 0.63 0 0
i "GM_Slap_Bass_1"   39.5833  0.1917  38  86 0 0.50 0 0
i "GM_Standard_Kit"   39.5833  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"   39.5833  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"   39.5833  0.2500  51  49 0 0.70 0 0
i "GM_Slap_Bass_1"   39.7917  0.1917  38  74 0 0.50 0 0
i "GM_Standard_Kit"   39.7917  0.1500  42  45 0 0.35 0 0
i "GM_Reed_Organ"   39.8958  0.0917  74  87 0 0.63 0 0
i "GM_Alto_Sax"   40.0000  0.1146  73  59 0 0.62 0 0
i "GM_Reed_Organ"   40.0000  0.1833  70  99 0 0.63 0 0
i "GM_Slap_Bass_1"   40.0000  0.1917  41  82 0 0.50 0 0
i "GM_Standard_Kit"   40.0000  0.2000  38  79 0 0.48 0 0
i "GM_Standard_Kit"   40.0000  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"   40.0000  0.2500  51  46 0 0.70 0 0
i "GM_Tenor_Sax"   40.0000  0.1146  70  62 0 0.35 0 0
i "GM_Trombone"   40.0000  0.1146  60  57 0 0.28 0 0
i "GM_Trumpet"   40.0000  0.1146  79  55 0 0.72 0 0
i "GM_Electric_Piano_1"   40.1087  0.1458  50  62 0 0.42 0 0
i "GM_Electric_Piano_1"   40.1092  0.1458  60  60 0 0.42 0 0
i "GM_Electric_Piano_1"   40.1093  0.1458  57  58 0 0.42 0 0
i "GM_Electric_Piano_1"   40.1106  0.1458  65  58 0 0.42 0 0
i "GM_Reed_Organ"   40.2083  0.1833  70  93 0 0.63 0 0
i "GM_Slap_Bass_1"   40.2083  0.1917  43  72 0 0.50 0 0
i "GM_Standard_Kit"   40.2083  0.1500  42  40 0 0.35 0 0
i "GM_Alto_Sax"   40.3125  0.1146  76  61 0 0.62 0 0
i "GM_Tenor_Sax"   40.3125  0.1146  63  59 0 0.35 0 0
i "GM_Trombone"   40.3125  0.1146  64  54 0 0.28 0 0
i "GM_Trumpet"   40.3125  0.1146  72  60 0 0.72 0 0
i "GM_Reed_Organ"   40.4167  0.1833  72  95 0 0.63 0 0
i "GM_Slap_Bass_1"   40.4167  0.1917  45  83 0 0.50 0 0
i "GM_Standard_Kit"   40.4167  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"   40.4167  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"   40.4167  0.2500  51  48 0 0.70 0 0
i "GM_Slap_Bass_1"   40.6250  0.1917  48  73 0 0.50 0 0
i "GM_Standard_Kit"   40.6250  0.1500  42  45 0 0.35 0 0
i "GM_Reed_Organ"   40.7292  0.0917  70  89 0 0.63 0 0
i "GM_Alto_Sax"   40.8333  0.1146  69  60 0 0.62 0 0
i "GM_Reed_Organ"   40.8333  0.3667  74  88 0 0.63 0 0
i "GM_Slap_Bass_1"   40.8333  0.1917  45  80 0 0.50 0 0
i "GM_Standard_Kit"   40.8333  0.2000  38  77 0 0.48 0 0
i "GM_Standard_Kit"   40.8333  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"   40.8333  0.2500  51  48 0 0.70 0 0
i "GM_Tenor_Sax"   40.8333  0.1146  70  60 0 0.35 0 0
i "GM_Trombone"   40.8333  0.1146  64  58 0 0.28 0 0
i "GM_Trumpet"   40.8333  0.1146  72  58 0 0.72 0 0
i "GM_Electric_Piano_1"   40.8348  0.1458  60  56 0 0.42 0 0
i "GM_Electric_Piano_1"   40.8357  0.1458  57  66 0 0.42 0 0
i "GM_Electric_Piano_1"   40.8363  0.1458  50  66 0 0.42 0 0
i "GM_Electric_Piano_1"   40.8371  0.1458  65  58 0 0.42 0 0
i "GM_Slap_Bass_1"   41.0417  0.1917  43  71 0 0.50 0 0
i "GM_Standard_Kit"   41.0417  0.1500  46  45 0 0.35 0 0
i "GM_Electric_Piano_1"   41.0437  0.1458  65  66 0 0.42 0 0
i "GM_Electric_Piano_1"   41.0448  0.1458  69  66 0 0.42 0 0
i "GM_Electric_Piano_1"   41.0472  0.1458  62  62 0 0.42 0 0
i "GM_Electric_Piano_1"   41.0496  0.1458  72  56 0 0.42 0 0
i "GM_Accordion"   41.2500  0.5500  62  97 0 0.25 0 0
i "GM_Slap_Bass_1"   41.2500  0.1917  46  85 0 0.50 0 0
i "GM_Standard_Kit"   41.2500  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"   41.2500  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"   41.2500  0.2500  51  47 0 0.70 0 0
i "GM_Electric_Piano_1"   41.2514  0.1458  74  56 0 0.42 0 0
i "GM_Electric_Piano_1"   41.2546  0.1458  69  56 0 0.42 0 0
i "GM_Electric_Piano_1"   41.2575  0.1458  58  59 0 0.42 0 0
i "GM_Electric_Piano_1"   41.2580  0.1458  65  63 0 0.42 0 0
i "GM_Alto_Sax"   41.4583  0.1146  69  60 0 0.62 0 0
i "GM_Standard_Kit"   41.4583  0.1500  42  39 0 0.35 0 0
i "GM_Tenor_Sax"   41.4583  0.1146  67  60 0 0.35 0 0
i "GM_Trombone"   41.4583  0.1146  64  55 0 0.28 0 0
i "GM_Trumpet"   41.4583  0.1146  72  58 0 0.72 0 0
i "GM_Slap_Bass_1"   41.6667  0.1917  49  83 0 0.50 0 0
i "GM_Standard_Kit"   41.6667  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"   41.6667  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"   41.6667  0.2500  51  52 0 0.70 0 0
i "GM_Electric_Piano_1"   41.7710  0.1458  69  64 0 0.42 0 0
i "GM_Electric_Piano_1"   41.7714  0.1458  65  61 0 0.42 0 0
i "GM_Electric_Piano_1"   41.7733  0.1458  74  64 0 0.42 0 0
i "GM_Electric_Piano_1"   41.7751  0.1458  58  66 0 0.42 0 0
i "GM_Accordion"   41.8750  0.1833  57  89 0 0.25 0 0
i "GM_Alto_Sax"   41.8750  0.1146  78  59 0 0.62 0 0
i "GM_Slap_Bass_1"   41.8750  0.1917  51  74 0 0.50 0 0
i "GM_Standard_Kit"   41.8750  0.1500  42  39 0 0.35 0 0
i "GM_Tenor_Sax"   41.8750  0.1146  63  59 0 0.35 0 0
i "GM_Trombone"   41.8750  0.1146  69  56 0 0.28 0 0
i "GM_Trumpet"   41.8750  0.1146  72  54 0 0.72 0 0
i "GM_Accordion"   42.0833  0.3667  53 100 0 0.25 0 0
i "GM_Slap_Bass_1"   42.0833  0.1917  41  86 0 0.50 0 0
i "GM_Standard_Kit"   42.0833  0.2500  36  77 0 0.50 0 0
i "GM_Standard_Kit"   42.0833  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"   42.0833  0.2500  51  47 0 0.70 0 0
i "GM_Alto_Sax"   42.1875  0.1146  69  58 0 0.62 0 0
i "GM_Tenor_Sax"   42.1875  0.1146  63  55 0 0.35 0 0
i "GM_Trombone"   42.1875  0.1146  60  61 0 0.28 0 0
i "GM_Trumpet"   42.1875  0.1146  76  58 0 0.72 0 0
i "GM_Standard_Kit"   42.2917  0.1500  42  40 0 0.35 0 0
i "GM_Electric_Piano_1"   42.3959  0.1458  53  59 0 0.42 0 0
i "GM_Electric_Piano_1"   42.3959  0.1458  60  64 0 0.42 0 0
i "GM_Electric_Piano_1"   42.3963  0.1458  57  61 0 0.42 0 0
i "GM_Electric_Piano_1"   42.3980  0.1458  64  59 0 0.42 0 0
i "GM_Accordion"   42.5000  0.1833  52  95 0 0.25 0 0
i "GM_Slap_Bass_1"   42.5000  0.1917  41  86 0 0.50 0 0
i "GM_Standard_Kit"   42.5000  0.2000  38  72 0 0.48 0 0
i "GM_Standard_Kit"   42.5000  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"   42.5000  0.2500  51  52 0 0.70 0 0
i "GM_Accordion"   42.7083  0.1833  48  95 0 0.25 0 0
i "GM_Alto_Sax"   42.7083  0.1146  69  59 0 0.62 0 0
i "GM_Slap_Bass_1"   42.7083  0.1917  51  72 0 0.50 0 0
i "GM_Standard_Kit"   42.7083  0.1500  46  42 0 0.35 0 0
i "GM_Tenor_Sax"   42.7083  0.1146  72  56 0 0.35 0 0
i "GM_Trombone"   42.7083  0.1146  64  55 0 0.28 0 0
i "GM_Trumpet"   42.7083  0.1146  76  59 0 0.72 0 0
i "GM_Slap_Bass_1"   42.9167  0.1917  41  79 0 0.50 0 0
i "GM_Standard_Kit"   42.9167  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"   42.9167  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"   42.9167  0.2500  51  49 0 0.70 0 0
i "GM_Harmonica"   43.1250  0.1833  72  88 0 0.43 0 0
i "GM_Slap_Bass_1"   43.1250  0.1917  48  73 0 0.50 0 0
i "GM_Standard_Kit"   43.1250  0.1500  42  43 0 0.35 0 0
i "GM_Alto_Sax"   43.2292  0.1146  68  61 0 0.62 0 0
i "GM_Tenor_Sax"   43.2292  0.1146  70  58 0 0.35 0 0
i "GM_Trombone"   43.2292  0.1146  67  56 0 0.28 0 0
i "GM_Trumpet"   43.2292  0.1146  71  54 0 0.72 0 0
i "GM_Harmonica"   43.3333  0.3667  70  99 0 0.43 0 0
i "GM_Slap_Bass_1"   43.3333  0.1917  41  80 0 0.50 0 0
i "GM_Standard_Kit"   43.3333  0.2000  38  83 0 0.48 0 0
i "GM_Standard_Kit"   43.3333  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"   43.3333  0.2500  51  52 0 0.70 0 0
i "GM_Electric_Piano_1"   43.3367  0.1458  57  65 0 0.42 0 0
i "GM_Electric_Piano_1"   43.3383  0.1458  52  63 0 0.42 0 0
i "GM_Electric_Piano_1"   43.3402  0.1458  53  66 0 0.42 0 0
i "GM_Electric_Piano_1"   43.3407  0.1458  60  57 0 0.42 0 0
i "GM_Alto_Sax"   43.5417  0.1146  68  60 0 0.62 0 0
i "GM_Slap_Bass_1"   43.5417  0.1917  51  76 0 0.50 0 0
i "GM_Standard_Kit"   43.5417  0.1500  42  41 0 0.35 0 0
i "GM_Tenor_Sax"   43.5417  0.1146  67  56 0 0.35 0 0
i "GM_Trombone"   43.5417  0.1146  64  61 0 0.28 0 0
i "GM_Trumpet"   43.5417  0.1146  71  59 0 0.72 0 0
i "GM_Electric_Piano_1"   43.6492  0.1458  57  62 0 0.42 0 0
i "GM_Electric_Piano_1"   43.6493  0.1458  53  63 0 0.42 0 0
i "GM_Electric_Piano_1"   43.6498  0.1458  60  62 0 0.42 0 0
i "GM_Electric_Piano_1"   43.6514  0.1458  52  63 0 0.42 0 0
i "GM_Harmonica"   43.7500  0.1833  72 103 0 0.43 0 0
i "GM_Slap_Bass_1"   43.7500  0.1917  48  78 0 0.50 0 0
i "GM_Standard_Kit"   43.7500  0.2500  36  71 0 0.50 0 0
i "GM_Standard_Kit"   43.7500  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"   43.7500  0.2500  51  51 0 0.70 0 0
i "GM_Harmonica"   43.9583  0.1833  74  90 0 0.43 0 0
i "GM_Standard_Kit"   43.9583  0.1500  42  42 0 0.35 0 0
i "GM_Alto_Sax"   44.1667  0.1146  68  56 0 0.62 0 0
i "GM_Harmonica"   44.1667  0.3667  67  95 0 0.43 0 0
i "GM_Slap_Bass_1"   44.1667  0.1917  44  84 0 0.50 0 0
i "GM_Standard_Kit"   44.1667  0.2000  38  71 0 0.48 0 0
i "GM_Standard_Kit"   44.1667  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"   44.1667  0.2500  51  47 0 0.70 0 0
i "GM_Tenor_Sax"   44.1667  0.1146  67  55 0 0.35 0 0
i "GM_Trombone"   44.1667  0.1146  64  56 0 0.28 0 0
i "GM_Trumpet"   44.1667  0.1146  79  55 0 0.72 0 0
i "GM_Electric_Piano_1"   44.1702  0.1458  60  65 0 0.42 0 0
i "GM_Electric_Piano_1"   44.1708  0.1458  53  56 0 0.42 0 0
i "GM_Electric_Piano_1"   44.1709  0.1458  57  63 0 0.42 0 0
i "GM_Electric_Piano_1"   44.1710  0.1458  52  56 0 0.42 0 0
i "GM_Slap_Bass_1"   44.3750  0.1917  43  68 0 0.50 0 0
i "GM_Standard_Kit"   44.3750  0.1500  46  42 0 0.35 0 0
i "GM_Slap_Bass_1"   44.5833  0.1917  36  84 0 0.50 0 0
i "GM_Standard_Kit"   44.5833  0.2500  36  72 0 0.50 0 0
i "GM_Standard_Kit"   44.5833  0.1500  42  57 0 0.35 0 0
i "GM_Tango_Accordion"   44.5833  0.3667  64 100 0 0.61 0 0
i "GM_Electric_Piano_1"   44.5864  0.1146  64  61 0 0.42 0 0
i "GM_Electric_Piano_1"   44.5887  0.1146  60  62 0 0.42 0 0
i "GM_Electric_Piano_1"   44.5889  0.1146  67  66 0 0.42 0 0
i "GM_Electric_Piano_1"   44.5911  0.1146  59  64 0 0.42 0 0
i "GM_Standard_Kit"   44.7917  0.1500  42  40 0 0.35 0 0
i "GM_Slap_Bass_1"   45.0000  0.1917  41  85 0 0.50 0 0
i "GM_Standard_Kit"   45.0000  0.2500  36  76 0 0.50 0 0
i "GM_Standard_Kit"   45.0000  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"   45.0000  0.1500  42  57 0 0.35 0 0
i "GM_Tango_Accordion"   45.0000  0.1833  64 101 0 0.61 0 0
i "GM_Electric_Piano_1"   45.1094  0.1146  60  59 0 0.42 0 0
i "GM_Electric_Piano_1"   45.1097  0.1146  71  63 0 0.42 0 0
i "GM_Electric_Piano_1"   45.1097  0.1146  64  58 0 0.42 0 0
i "GM_Electric_Piano_1"   45.1103  0.1146  67  58 0 0.42 0 0
i "GM_Slap_Bass_1"   45.2083  0.1917  43  69 0 0.50 0 0
i "GM_Standard_Kit"   45.2083  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"   45.2083  0.1500  42  39 0 0.35 0 0
i "GM_Standard_Kit"   45.2083  0.1800  50  79 0 0.40 0 0
i "GM_Tango_Accordion"   45.2083  0.1833  62  97 0 0.61 0 0
i "GM_Slap_Bass_1"   45.4167  0.1917  41  79 0 0.50 0 0
i "GM_Standard_Kit"   45.4167  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"   45.4167  0.1800  48  80 0 0.44 0 0
i "GM_Tango_Accordion"   45.4167  0.1833  64 104 0 0.61 0 0
i "GM_Slap_Bass_1"   45.6250  0.1917  39  71 0 0.50 0 0
i "GM_Standard_Kit"   45.6250  0.2000  38  79 0 0.48 0 0
i "GM_Standard_Kit"   45.6250  0.1500  42  39 0 0.35 0 0
i "GM_Standard_Kit"   45.6250  0.1800  47  77 0 0.48 0 0
i "GM_Tango_Accordion"   45.6250  0.1833  67  88 0 0.61 0 0
i "GM_Electric_Piano_1"   45.7302  0.1146  60  57 0 0.42 0 0
i "GM_Electric_Piano_1"   45.7312  0.1146  67  61 0 0.42 0 0
i "GM_Electric_Piano_1"   45.7316  0.1146  76  56 0 0.42 0 0
i "GM_Electric_Piano_1"   45.7340  0.1146  71  61 0 0.42 0 0
i "GM_Slap_Bass_1"   45.8333  0.1917  38  86 0 0.50 0 0
i "GM_Standard_Kit"   45.8333  0.1500  46  53 0 0.35 0 0
i "GM_Standard_Kit"   45.8333  0.1800  45  82 0 0.52 0 0
i "GM_Standard_Kit"   45.8333  0.2000  49  82 0 0.70 0 0
i "GM_Tango_Accordion"   45.8333  0.1833  67  93 0 0.61 0 0
i "GM_Slap_Bass_1"   46.0417  0.1917  44  82 0 0.50 0 0
i "GM_Standard_Kit"   46.0417  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"   46.0417  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"   46.0417  0.2500  51  46 0 0.70 0 0
i "GM_Standard_Kit"   46.0417  0.5500  49  88 0 0.72 0 0
i "GM_Standard_Kit"   46.0417  0.4000  57  70 0 0.78 0 0
i "GM_Electric_Piano_1"   46.0424  0.1458  72  61 0 0.42 0 0
i "GM_Electric_Piano_1"   46.0425  0.1458  67  59 0 0.42 0 0
i "GM_Electric_Piano_1"   46.0425  0.1458  63  66 0 0.42 0 0
i "GM_Electric_Piano_1"   46.0482  0.1458  56  65 0 0.42 0 0
i "GM_Acoustic_Guitar_nylon"   46.2500  0.1833  63  88 0 0.22 0 0
i "GM_Slap_Bass_1"   46.2500  0.1917  44  68 0 0.50 0 0
i "GM_Standard_Kit"   46.2500  0.1500  42  42 0 0.35 0 0
i "GM_Alto_Sax"   46.3542  0.1146  71  55 0 0.62 0 0
i "GM_Tenor_Sax"   46.3542  0.1146  70  55 0 0.35 0 0
i "GM_Trombone"   46.3542  0.1146  67  62 0 0.28 0 0
i "GM_Trumpet"   46.3542  0.1146  70  60 0 0.72 0 0
i "GM_Acoustic_Guitar_nylon"   46.4583  0.3667  56 100 0 0.22 0 0
i "GM_Slap_Bass_1"   46.4583  0.1917  47  81 0 0.50 0 0
i "GM_Standard_Kit"   46.4583  0.2000  38  79 0 0.48 0 0
i "GM_Standard_Kit"   46.4583  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"   46.4583  0.2500  51  48 0 0.70 0 0
i "GM_Standard_Kit"   46.5625  0.2500  36  73 0 0.50 0 0
i "GM_Electric_Piano_1"   46.5655  0.1458  56  65 0 0.42 0 0
i "GM_Electric_Piano_1"   46.5678  0.1458  72  58 0 0.42 0 0
i "GM_Electric_Piano_1"   46.5679  0.1458  63  61 0 0.42 0 0
i "GM_Electric_Piano_1"   46.5704  0.1458  67  56 0 0.42 0 0
i "GM_Alto_Sax"   46.6667  0.1146  71  57 0 0.62 0 0
i "GM_Standard_Kit"   46.6667  0.1500  46  42 0 0.35 0 0
i "GM_Tenor_Sax"   46.6667  0.1146  61  59 0 0.35 0 0
i "GM_Trombone"   46.6667  0.1146  62  57 0 0.28 0 0
i "GM_Trumpet"   46.6667  0.1146  70  60 0 0.72 0 0
i "GM_Acoustic_Guitar_nylon"   46.8750  0.1833  56  95 0 0.22 0 0
i "GM_Slap_Bass_1"   46.8750  0.1917  51  83 0 0.50 0 0
i "GM_Standard_Kit"   46.8750  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"   46.8750  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"   46.8750  0.2500  51  49 0 0.70 0 0
i "GM_Acoustic_Guitar_nylon"   47.0833  0.1833  58  95 0 0.22 0 0
i "GM_Standard_Kit"   47.0833  0.1500  42  40 0 0.35 0 0
i "GM_Electric_Piano_1"   47.1881  0.1458  56  58 0 0.42 0 0
i "GM_Electric_Piano_1"   47.1912  0.1458  60  61 0 0.42 0 0
i "GM_Electric_Piano_1"   47.1913  0.1458  63  66 0 0.42 0 0
i "GM_Electric_Piano_1"   47.1923  0.1458  67  59 0 0.42 0 0
i "GM_Acoustic_Guitar_nylon"   47.2917  0.3667  55  88 0 0.22 0 0
i "GM_Alto_Sax"   47.2917  0.1146  71  55 0 0.62 0 0
i "GM_Slap_Bass_1"   47.2917  0.1917  51  82 0 0.50 0 0
i "GM_Standard_Kit"   47.2917  0.2000  38  77 0 0.48 0 0
i "GM_Standard_Kit"   47.2917  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"   47.2917  0.2500  51  48 0 0.70 0 0
i "GM_Tenor_Sax"   47.2917  0.1146  70  56 0 0.35 0 0
i "GM_Trombone"   47.2917  0.1146  58  55 0 0.28 0 0
i "GM_Trumpet"   47.2917  0.1146  79  62 0 0.72 0 0
i "GM_Slap_Bass_1"   47.5000  0.1917  49  72 0 0.50 0 0
i "GM_Standard_Kit"   47.5000  0.1500  46  44 0 0.35 0 0
i "GM_Acoustic_Guitar_steel"   47.7083  0.1833  58 103 0 0.41 0 0
i "GM_Slap_Bass_1"   47.7083  0.1917  39  80 0 0.50 0 0
i "GM_Standard_Kit"   47.7083  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"   47.7083  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"   47.7083  0.2500  51  49 0 0.70 0 0
i "GM_Acoustic_Guitar_steel"   47.9167  0.1833  60  93 0 0.41 0 0
i "GM_Slap_Bass_1"   47.9167  0.1917  39  75 0 0.50 0 0
i "GM_Standard_Kit"   47.9167  0.1500  42  43 0 0.35 0 0
i "GM_Acoustic_Guitar_steel"   48.1250  0.1833  51 100 0 0.41 0 0
i "GM_Alto_Sax"   48.1250  0.1146  71  60 0 0.62 0 0
i "GM_Slap_Bass_1"   48.1250  0.1917  42  80 0 0.50 0 0
i "GM_Standard_Kit"   48.1250  0.2000  38  80 0 0.48 0 0
i "GM_Standard_Kit"   48.1250  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"   48.1250  0.2500  51  46 0 0.70 0 0
i "GM_Tenor_Sax"   48.1250  0.1146  72  58 0 0.35 0 0
i "GM_Trombone"   48.1250  0.1146  62  62 0 0.28 0 0
i "GM_Trumpet"   48.1250  0.1146  81  62 0 0.72 0 0
i "GM_Standard_Kit"   48.2292  0.2500  36  72 0 0.50 0 0
i "GM_Electric_Piano_1"   48.2310  0.1458  67  57 0 0.42 0 0
i "GM_Electric_Piano_1"   48.2325  0.1458  63  56 0 0.42 0 0
i "GM_Electric_Piano_1"   48.2350  0.1458  70  62 0 0.42 0 0
i "GM_Electric_Piano_1"   48.2369  0.1458  62  57 0 0.42 0 0
i "GM_Acoustic_Guitar_steel"   48.3333  0.1833  53  94 0 0.41 0 0
i "GM_Slap_Bass_1"   48.3333  0.1917  44  69 0 0.50 0 0
i "GM_Standard_Kit"   48.3333  0.1500  42  45 0 0.35 0 0
i "GM_Alto_Sax"   48.4375  0.1146  71  60 0 0.62 0 0
i "GM_Tenor_Sax"   48.4375  0.1146  68  60 0 0.35 0 0
i "GM_Trombone"   48.4375  0.1146  62  59 0 0.28 0 0
i "GM_Trumpet"   48.4375  0.1146  77  58 0 0.72 0 0
i "GM_Acoustic_Guitar_steel"   48.5417  0.3667  53 103 0 0.41 0 0
i "GM_Slap_Bass_1"   48.5417  0.1917  46  86 0 0.50 0 0
i "GM_Standard_Kit"   48.5417  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"   48.5417  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"   48.5417  0.2500  51  47 0 0.70 0 0
i "GM_Standard_Kit"   48.7500  0.1500  42  40 0 0.35 0 0
i "GM_Acoustic_Guitar_steel"   48.9583  0.3667  58  92 0 0.41 0 0
i "GM_Alto_Sax"   48.9583  0.1146  71  54 0 0.62 0 0
i "GM_Slap_Bass_1"   48.9583  0.1917  46  86 0 0.50 0 0
i "GM_Standard_Kit"   48.9583  0.2000  38  71 0 0.48 0 0
i "GM_Standard_Kit"   48.9583  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"   48.9583  0.2500  51  50 0 0.70 0 0
i "GM_Tenor_Sax"   48.9583  0.1146  68  62 0 0.35 0 0
i "GM_Trombone"   48.9583  0.1146  65  61 0 0.28 0 0
i "GM_Trumpet"   48.9583  0.1146  77  60 0 0.72 0 0
i "GM_Electric_Piano_1"   48.9586  0.1458  65  57 0 0.42 0 0
i "GM_Electric_Piano_1"   48.9607  0.1458  58  65 0 0.42 0 0
i "GM_Electric_Piano_1"   48.9623  0.1458  69  64 0 0.42 0 0
i "GM_Electric_Piano_1"   48.9635  0.1458  74  56 0 0.42 0 0
i "GM_Standard_Kit"   49.1667  0.1500  46  42 0 0.35 0 0
i "GM_Electric_Piano_1"   49.1676  0.1458  65  62 0 0.42 0 0
i "GM_Electric_Piano_1"   49.1684  0.1458  62  64 0 0.42 0 0
i "GM_Electric_Piano_1"   49.1693  0.1458  69  63 0 0.42 0 0
i "GM_Electric_Piano_1"   49.1700  0.1458  58  57 0 0.42 0 0
i "GM_Electric_Guitar_jazz"   49.3750  0.3667  58  96 0 0.59 0 0
i "GM_Slap_Bass_1"   49.3750  0.1917  46  78 0 0.50 0 0
i "GM_Standard_Kit"   49.3750  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"   49.3750  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"   49.3750  0.2500  51  46 0 0.70 0 0
i "GM_Slap_Bass_1"   49.5833  0.1917  41  71 0 0.50 0 0
i "GM_Standard_Kit"   49.5833  0.1500  42  41 0 0.35 0 0
i "GM_Alto_Sax"   49.7917  0.1146  69  61 0 0.62 0 0
i "GM_Electric_Guitar_jazz"   49.7917  0.1833  53  96 0 0.59 0 0
i "GM_Slap_Bass_1"   49.7917  0.1917  46  82 0 0.50 0 0
i "GM_Standard_Kit"   49.7917  0.2000  38  83 0 0.48 0 0
i "GM_Standard_Kit"   49.7917  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"   49.7917  0.2500  51  50 0 0.70 0 0
i "GM_Tenor_Sax"   49.7917  0.1146  67  60 0 0.35 0 0
i "GM_Trombone"   49.7917  0.1146  64  56 0 0.28 0 0
i "GM_Trumpet"   49.7917  0.1146  81  61 0 0.72 0 0
i "GM_Electric_Piano_1"   49.7929  0.1458  62  58 0 0.42 0 0
i "GM_Electric_Piano_1"   49.7939  0.1458  69  63 0 0.42 0 0
i "GM_Electric_Piano_1"   49.7943  0.1458  58  61 0 0.42 0 0
i "GM_Electric_Piano_1"   49.7980  0.1458  65  66 0 0.42 0 0
i "GM_Standard_Kit"   49.8958  0.2500  36  72 0 0.50 0 0
i "GM_Electric_Guitar_jazz"   50.0000  0.1833  55  94 0 0.59 0 0
i "GM_Slap_Bass_1"   50.0000  0.1917  44  74 0 0.50 0 0
i "GM_Standard_Kit"   50.0000  0.1500  42  43 0 0.35 0 0
i "GM_Alto_Sax"   50.1042  0.1146  78  59 0 0.62 0 0
i "GM_Tenor_Sax"   50.1042  0.1146  67  62 0 0.35 0 0
i "GM_Trombone"   50.1042  0.1146  60  55 0 0.28 0 0
i "GM_Trumpet"   50.1042  0.1146  81  61 0 0.72 0 0
i "GM_Electric_Piano_1"   50.1073  0.1458  58  57 0 0.42 0 0
i "GM_Electric_Piano_1"   50.1086  0.1458  65  61 0 0.42 0 0
i "GM_Electric_Piano_1"   50.1091  0.1458  74  66 0 0.42 0 0
i "GM_Electric_Piano_1"   50.1093  0.1458  69  56 0 0.42 0 0
i "GM_Electric_Guitar_jazz"   50.2083  0.1833  60  98 0 0.59 0 0
i "GM_Slap_Bass_1"   50.2083  0.1917  41  83 0 0.50 0 0
i "GM_Standard_Kit"   50.2083  0.2500  36  74 0 0.50 0 0
i "GM_Standard_Kit"   50.2083  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"   50.2083  0.2500  51  52 0 0.70 0 0
i "GM_Electric_Guitar_jazz"   50.4167  0.1833  65  94 0 0.59 0 0
i "GM_Slap_Bass_1"   50.4167  0.1917  51  72 0 0.50 0 0
i "GM_Standard_Kit"   50.4167  0.1500  42  41 0 0.35 0 0
i "GM_Alto_Sax"   50.6250  0.1146  69  58 0 0.62 0 0
i "GM_Electric_Guitar_jazz"   50.6250  0.1833  70  94 0 0.59 0 0
i "GM_Slap_Bass_1"   50.6250  0.1917  49  79 0 0.50 0 0
i "GM_Standard_Kit"   50.6250  0.2000  38  75 0 0.48 0 0
i "GM_Standard_Kit"   50.6250  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"   50.6250  0.2500  51  52 0 0.70 0 0
i "GM_Tenor_Sax"   50.6250  0.1146  67  62 0 0.35 0 0
i "GM_Trombone"   50.6250  0.1146  64  55 0 0.28 0 0
i "GM_Trumpet"   50.6250  0.1146  76  55 0 0.72 0 0
i "GM_Electric_Piano_1"   50.6283  0.1458  69  66 0 0.42 0 0
i "GM_Electric_Piano_1"   50.6296  0.1458  58  56 0 0.42 0 0
i "GM_Electric_Piano_1"   50.6300  0.1458  74  57 0 0.42 0 0
i "GM_Electric_Piano_1"   50.6316  0.1458  65  63 0 0.42 0 0
i "GM_Electric_Guitar_jazz"   50.8333  0.1833  69  92 0 0.59 0 0
i "GM_Standard_Kit"   50.8333  0.1500  46  42 0 0.35 0 0
i "GM_Alto_Sax"   51.0417  0.1146  71  58 0 0.62 0 0
i "GM_Slap_Bass_1"   51.0417  0.1917  45  81 0 0.50 0 0
i "GM_Standard_Kit"   51.0417  0.2500  36  71 0 0.50 0 0
i "GM_Standard_Kit"   51.0417  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"   51.0417  0.2500  51  49 0 0.70 0 0
i "GM_Tenor_Sax"   51.0417  0.1146  71  57 0 0.35 0 0
i "GM_Trombone"   51.0417  0.1146  62  58 0 0.28 0 0
i "GM_Trumpet"   51.0417  0.1146  71  55 0 0.72 0 0
i "GM_Electric_Guitar_clean"   51.2500  0.1833  64  89 0 0.77 0 0
i "GM_Slap_Bass_1"   51.2500  0.1917  45  73 0 0.50 0 0
i "GM_Standard_Kit"   51.2500  0.1500  42  43 0 0.35 0 0
i "GM_Electric_Piano_1"   51.2505  0.1458  55  58 0 0.42 0 0
i "GM_Electric_Piano_1"   51.2509  0.1458  64  58 0 0.42 0 0
i "GM_Electric_Piano_1"   51.2536  0.1458  61  63 0 0.42 0 0
i "GM_Electric_Piano_1"   51.2578  0.1458  57  64 0 0.42 0 0
i "GM_Electric_Guitar_clean"   51.4583  0.3667  64  97 0 0.77 0 0
i "GM_Slap_Bass_1"   51.4583  0.1917  48  84 0 0.50 0 0
i "GM_Standard_Kit"   51.4583  0.2000  38  84 0 0.48 0 0
i "GM_Standard_Kit"   51.4583  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"   51.4583  0.2500  51  48 0 0.70 0 0
i "GM_Alto_Sax"   51.5625  0.1146  68  58 0 0.62 0 0
i "GM_Standard_Kit"   51.5625  0.2500  36  75 0 0.50 0 0
i "GM_Tenor_Sax"   51.5625  0.1146  62  58 0 0.35 0 0
i "GM_Trombone"   51.5625  0.1146  68  62 0 0.28 0 0
i "GM_Trumpet"   51.5625  0.1146  71  54 0 0.72 0 0
i "GM_Slap_Bass_1"   51.6667  0.1917  50  72 0 0.50 0 0
i "GM_Standard_Kit"   51.6667  0.1500  42  45 0 0.35 0 0
i "GM_Electric_Piano_1"   51.6669  0.1458  61  61 0 0.42 0 0
i "GM_Electric_Piano_1"   51.6675  0.1458  55  60 0 0.42 0 0
i "GM_Electric_Piano_1"   51.6707  0.1458  57  58 0 0.42 0 0
i "GM_Electric_Piano_1"   51.6712  0.1458  64  64 0 0.42 0 0
i "GM_Electric_Guitar_clean"   51.8750  0.1833  64 103 0 0.77 0 0
i "GM_Slap_Bass_1"   51.8750  0.1917  52  79 0 0.50 0 0
i "GM_Standard_Kit"   51.8750  0.2500  36  74 0 0.50 0 0
i "GM_Standard_Kit"   51.8750  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"   51.8750  0.2500  51  46 0 0.70 0 0
i "GM_Electric_Piano_1"   51.9811  0.1458  67  58 0 0.42 0 0
i "GM_Electric_Piano_1"   51.9818  0.1458  57  58 0 0.42 0 0
i "GM_Electric_Piano_1"   51.9827  0.1458  61  61 0 0.42 0 0
i "GM_Electric_Piano_1"   51.9856  0.1458  64  57 0 0.42 0 0
i "GM_Electric_Guitar_clean"   52.0833  0.1833  64  96 0 0.77 0 0
i "GM_Slap_Bass_1"   52.0833  0.1917  43  72 0 0.50 0 0
i "GM_Standard_Kit"   52.0833  0.1500  42  40 0 0.35 0 0
i "GM_Alto_Sax"   52.1875  0.1146  77  58 0 0.62 0 0
i "GM_Tenor_Sax"   52.1875  0.1146  71  58 0 0.35 0 0
i "GM_Trombone"   52.1875  0.1146  59  61 0 0.28 0 0
i "GM_Trumpet"   52.1875  0.1146  74  56 0 0.72 0 0
i "GM_Electric_Guitar_clean"   52.2917  0.3667  62  97 0 0.77 0 0
i "GM_Slap_Bass_1"   52.2917  0.1917  52  84 0 0.50 0 0
i "GM_Standard_Kit"   52.2917  0.2000  38  77 0 0.48 0 0
i "GM_Standard_Kit"   52.2917  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"   52.2917  0.2500  51  51 0 0.70 0 0
i "GM_Slap_Bass_1"   52.5000  0.1917  50  71 0 0.50 0 0
i "GM_Standard_Kit"   52.5000  0.1500  46  44 0 0.35 0 0
i "GM_Electric_Piano_1"   52.5010  0.1458  67  59 0 0.42 0 0
i "GM_Electric_Piano_1"   52.5047  0.1458  73  61 0 0.42 0 0
i "GM_Electric_Piano_1"   52.5059  0.1458  64  61 0 0.42 0 0
i "GM_Electric_Piano_1"   52.5079  0.1458  57  64 0 0.42 0 0
i "GM_Electric_Guitar_muted"   52.7083  0.1833  55 103 0 0.38 0 0
i "GM_Slap_Bass_1"   52.7083  0.1917  40  82 0 0.50 0 0
i "GM_Standard_Kit"   52.7083  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"   52.7083  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"   52.7083  0.2500  51  48 0 0.70 0 0
i "GM_Slap_Bass_1"   52.9167  0.1917  45  73 0 0.50 0 0
i "GM_Standard_Kit"   52.9167  0.1500  42  41 0 0.35 0 0
i "GM_Alto_Sax"   53.0208  0.1146  71  61 0 0.62 0 0
i "GM_Electric_Guitar_muted"   53.0208  0.0917  54  86 0 0.38 0 0
i "GM_Tenor_Sax"   53.0208  0.1146  65  62 0 0.35 0 0
i "GM_Trombone"   53.0208  0.1146  66  57 0 0.28 0 0
i "GM_Trumpet"   53.0208  0.1146  78  56 0 0.72 0 0
i "GM_Electric_Piano_1"   53.0213  0.1458  71  66 0 0.42 0 0
i "GM_Electric_Piano_1"   53.0237  0.1458  67  58 0 0.42 0 0
i "GM_Electric_Piano_1"   53.0285  0.1458  62  59 0 0.42 0 0
i "GM_Electric_Piano_1"   53.0287  0.1458  64  60 0 0.42 0 0
i "GM_Electric_Guitar_muted"   53.1250  0.1833  55  95 0 0.38 0 0
i "GM_Slap_Bass_1"   53.1250  0.1917  43  81 0 0.50 0 0
i "GM_Standard_Kit"   53.1250  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"   53.1250  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"   53.1250  0.2500  51  51 0 0.70 0 0
i "GM_Alto_Sax"   53.3333  0.1146  75  59 0 0.62 0 0
i "GM_Electric_Guitar_muted"   53.3333  0.1833  50  89 0 0.38 0 0
i "GM_Standard_Kit"   53.3333  0.1500  42  40 0 0.35 0 0
i "GM_Tenor_Sax"   53.3333  0.1146  65  58 0 0.35 0 0
i "GM_Trombone"   53.3333  0.1146  62  58 0 0.28 0 0
i "GM_Trumpet"   53.3333  0.1146  81  55 0 0.72 0 0
i "GM_Electric_Piano_1"   53.3339  0.1458  62  56 0 0.42 0 0
i "GM_Electric_Piano_1"   53.3366  0.1458  64  58 0 0.42 0 0
i "GM_Electric_Piano_1"   53.3411  0.1458  71  64 0 0.42 0 0
i "GM_Electric_Piano_1"   53.3412  0.1458  67  66 0 0.42 0 0
i "GM_Electric_Guitar_muted"   53.5417  0.1833  43  95 0 0.38 0 0
i "GM_Slap_Bass_1"   53.5417  0.1917  40  86 0 0.50 0 0
i "GM_Standard_Kit"   53.5417  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"   53.5417  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"   53.5417  0.2500  51  47 0 0.70 0 0
i "GM_Standard_Kit"   53.7500  0.1500  42  42 0 0.35 0 0
i "GM_Electric_Guitar_muted"   53.8542  0.0917  42  91 0 0.38 0 0
i "GM_Alto_Sax"   53.9583  0.1146  71  61 0 0.62 0 0
i "GM_Electric_Guitar_muted"   53.9583  0.3667  42  92 0 0.38 0 0
i "GM_Slap_Bass_1"   53.9583  0.1917  50  79 0 0.50 0 0
i "GM_Standard_Kit"   53.9583  0.2000  38  76 0 0.48 0 0
i "GM_Standard_Kit"   53.9583  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"   53.9583  0.2500  51  51 0 0.70 0 0
i "GM_Tenor_Sax"   53.9583  0.1146  72  59 0 0.35 0 0
i "GM_Trombone"   53.9583  0.1146  62  60 0 0.28 0 0
i "GM_Trumpet"   53.9583  0.1146  74  62 0 0.72 0 0
i "GM_Electric_Piano_1"   53.9590  0.1458  62  64 0 0.42 0 0
i "GM_Electric_Piano_1"   53.9625  0.1458  67  61 0 0.42 0 0
i "GM_Electric_Piano_1"   53.9632  0.1458  71  59 0 0.42 0 0
i "GM_Electric_Piano_1"   53.9638  0.1458  64  57 0 0.42 0 0
i "GM_Slap_Bass_1"   54.1667  0.1917  52  68 0 0.50 0 0
i "GM_Standard_Kit"   54.1667  0.1500  46  41 0 0.35 0 0
i "GM_Overdriven_Guitar"   54.3750  0.1833  60  98 0 0.56 0 0
i "GM_Slap_Bass_1"   54.3750  0.1917  48  83 0 0.50 0 0
i "GM_Standard_Kit"   54.3750  0.2500  36  72 0 0.50 0 0
i "GM_Standard_Kit"   54.3750  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"   54.3750  0.2500  51  47 0 0.70 0 0
i "GM_Overdriven_Guitar"   54.5833  0.1833  59  97 0 0.56 0 0
i "GM_Standard_Kit"   54.5833  0.1500  42  44 0 0.35 0 0
i "GM_Overdriven_Guitar"   54.7917  0.1833  62  99 0 0.56 0 0
i "GM_Slap_Bass_1"   54.7917  0.1917  41  82 0 0.50 0 0
i "GM_Standard_Kit"   54.7917  0.2000  38  83 0 0.48 0 0
i "GM_Standard_Kit"   54.7917  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"   54.7917  0.2500  51  48 0 0.70 0 0
i "GM_Alto_Sax"   54.8958  0.1146  68  61 0 0.62 0 0
i "GM_Standard_Kit"   54.8958  0.2500  36  69 0 0.50 0 0
i "GM_Tenor_Sax"   54.8958  0.1146  62  60 0 0.35 0 0
i "GM_Trombone"   54.8958  0.1146  62  54 0 0.28 0 0
i "GM_Trumpet"   54.8958  0.1146  78  55 0 0.72 0 0
i "GM_Electric_Piano_1"   54.9002  0.1458  67  57 0 0.42 0 0
i "GM_Electric_Piano_1"   54.9012  0.1458  64  59 0 0.42 0 0
i "GM_Electric_Piano_1"   54.9013  0.1458  71  64 0 0.42 0 0
i "GM_Electric_Piano_1"   54.9017  0.1458  60  59 0 0.42 0 0
i "GM_Overdriven_Guitar"   55.0000  0.1833  60  89 0 0.56 0 0
i "GM_Slap_Bass_1"   55.0000  0.1917  43  72 0 0.50 0 0
i "GM_Standard_Kit"   55.0000  0.1500  42  40 0 0.35 0 0
i "GM_Overdriven_Guitar"   55.2083  0.3667  54  96 0 0.56 0 0
i "GM_Slap_Bass_1"   55.2083  0.1917  41  78 0 0.50 0 0
i "GM_Standard_Kit"   55.2083  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"   55.2083  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"   55.2083  0.2500  51  49 0 0.70 0 0
i "GM_Standard_Kit"   55.4167  0.1500  42  40 0 0.35 0 0
i "GM_Alto_Sax"   55.6250  0.1146  68  57 0 0.62 0 0
i "GM_Overdriven_Guitar"   55.6250  0.3667  52  91 0 0.56 0 0
i "GM_Slap_Bass_1"   55.6250  0.1917  38  81 0 0.50 0 0
i "GM_Standard_Kit"   55.6250  0.2000  38  75 0 0.48 0 0
i "GM_Standard_Kit"   55.6250  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"   55.6250  0.2500  51  49 0 0.70 0 0
i "GM_Tenor_Sax"   55.6250  0.1146  62  61 0 0.35 0 0
i "GM_Trombone"   55.6250  0.1146  59  56 0 0.28 0 0
i "GM_Trumpet"   55.6250  0.1146  71  60 0 0.72 0 0
i "GM_Electric_Piano_1"   55.6256  0.1458  71  57 0 0.42 0 0
i "GM_Electric_Piano_1"   55.6280  0.1458  66  61 0 0.42 0 0
i "GM_Electric_Piano_1"   55.6283  0.1458  62  58 0 0.42 0 0
i "GM_Electric_Piano_1"   55.6285  0.1458  55  56 0 0.42 0 0
i "GM_Alto_Sax"   55.8333  0.1146  68  56 0 0.62 0 0
i "GM_Standard_Kit"   55.8333  0.1500  46  40 0 0.35 0 0
i "GM_Tenor_Sax"   55.8333  0.1146  69  59 0 0.35 0 0
i "GM_Trombone"   55.8333  0.1146  62  56 0 0.28 0 0
i "GM_Trumpet"   55.8333  0.1146  71  59 0 0.72 0 0
i "GM_Electric_Piano_1"   55.8360  0.1458  62  59 0 0.42 0 0
i "GM_Electric_Piano_1"   55.8364  0.1458  66  60 0 0.42 0 0
i "GM_Electric_Piano_1"   55.8397  0.1458  59  59 0 0.42 0 0
i "GM_Electric_Piano_1"   55.8413  0.1458  55  62 0 0.42 0 0
i "GM_Distortion_Guitar"   56.0417  0.1833  62  95 0 0.74 0 0
i "GM_Slap_Bass_1"   56.0417  0.1917  43  82 0 0.50 0 0
i "GM_Standard_Kit"   56.0417  0.2500  36  76 0 0.50 0 0
i "GM_Standard_Kit"   56.0417  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"   56.0417  0.2500  51  47 0 0.70 0 0
i "GM_Alto_Sax"   56.2500  0.1146  70  58 0 0.62 0 0
i "GM_Slap_Bass_1"   56.2500  0.1917  43  75 0 0.50 0 0
i "GM_Standard_Kit"   56.2500  0.1500  42  44 0 0.35 0 0
i "GM_Tenor_Sax"   56.2500  0.1146  69  59 0 0.35 0 0
i "GM_Trombone"   56.2500  0.1146  69  62 0 0.28 0 0
i "GM_Trumpet"   56.2500  0.1146  78  56 0 0.72 0 0
i "GM_Electric_Piano_1"   56.2514  0.1458  59  59 0 0.42 0 0
i "GM_Electric_Piano_1"   56.2523  0.1458  55  56 0 0.42 0 0
i "GM_Electric_Piano_1"   56.2532  0.1458  54  56 0 0.42 0 0
i "GM_Electric_Piano_1"   56.2577  0.1458  62  56 0 0.42 0 0
i "GM_Distortion_Guitar"   56.4583  0.1833  64  95 0 0.74 0 0
i "GM_Slap_Bass_1"   56.4583  0.1917  50  83 0 0.50 0 0
i "GM_Standard_Kit"   56.4583  0.2000  38  82 0 0.48 0 0
i "GM_Standard_Kit"   56.4583  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"   56.4583  0.2500  51  48 0 0.70 0 0
i "GM_Alto_Sax"   56.6667  0.1146  75  59 0 0.62 0 0
i "GM_Distortion_Guitar"   56.6667  0.1833  60  91 0 0.74 0 0
i "GM_Slap_Bass_1"   56.6667  0.1917  48  75 0 0.50 0 0
i "GM_Standard_Kit"   56.6667  0.1500  46  41 0 0.35 0 0
i "GM_Tenor_Sax"   56.6667  0.1146  72  55 0 0.35 0 0
i "GM_Trombone"   56.6667  0.1146  61  60 0 0.28 0 0
i "GM_Trumpet"   56.6667  0.1146  78  62 0 0.72 0 0
i "GM_Electric_Piano_1"   56.6694  0.1458  71  58 0 0.42 0 0
i "GM_Electric_Piano_1"   56.6701  0.1458  55  63 0 0.42 0 0
i "GM_Electric_Piano_1"   56.6704  0.1458  66  58 0 0.42 0 0
i "GM_Electric_Piano_1"   56.6716  0.1458  62  57 0 0.42 0 0
i "GM_Distortion_Guitar"   56.8750  0.3667  55  95 0 0.74 0 0
i "GM_Slap_Bass_1"   56.8750  0.1917  46  85 0 0.50 0 0
i "GM_Standard_Kit"   56.8750  0.2500  36  77 0 0.50 0 0
i "GM_Standard_Kit"   56.8750  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"   56.8750  0.2500  51  51 0 0.70 0 0
i "GM_Alto_Sax"   56.9792  0.1146  70  55 0 0.62 0 0
i "GM_Tenor_Sax"   56.9792  0.1146  72  62 0 0.35 0 0
i "GM_Trombone"   56.9792  0.1146  69  61 0 0.28 0 0
i "GM_Trumpet"   56.9792  0.1146  73  54 0 0.72 0 0
i "GM_Electric_Piano_1"   56.9812  0.1458  66  61 0 0.42 0 0
i "GM_Electric_Piano_1"   56.9813  0.1458  59  65 0 0.42 0 0
i "GM_Electric_Piano_1"   56.9837  0.1458  62  63 0 0.42 0 0
i "GM_Electric_Piano_1"   56.9869  0.1458  55  61 0 0.42 0 0
i "GM_Standard_Kit"   57.0833  0.1500  42  44 0 0.35 0 0
i "GM_Distortion_Guitar"   57.2917  0.1833  57  91 0 0.74 0 0
i "GM_Slap_Bass_1"   57.2917  0.1917  43  80 0 0.50 0 0
i "GM_Standard_Kit"   57.2917  0.2000  38  71 0 0.48 0 0
i "GM_Standard_Kit"   57.2917  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"   57.2917  0.2500  51  50 0 0.70 0 0
i "GM_Alto_Sax"   57.5000  0.1146  70  61 0 0.62 0 0
i "GM_Distortion_Guitar"   57.5000  0.1833  55  95 0 0.74 0 0
i "GM_Slap_Bass_1"   57.5000  0.1917  50  68 0 0.50 0 0
i "GM_Standard_Kit"   57.5000  0.1500  46  40 0 0.35 0 0
i "GM_Tenor_Sax"   57.5000  0.1146  72  58 0 0.35 0 0
i "GM_Trombone"   57.5000  0.1146  61  54 0 0.28 0 0
i "GM_Trumpet"   57.5000  0.1146  73  60 0 0.72 0 0
i "GM_Electric_Piano_1"   57.5029  0.1458  55  65 0 0.42 0 0
i "GM_Electric_Piano_1"   57.5034  0.1458  66  65 0 0.42 0 0
i "GM_Electric_Piano_1"   57.5037  0.1458  71  61 0 0.42 0 0
i "GM_Electric_Piano_1"   57.5046  0.1458  62  62 0 0.42 0 0
i "GM_Guitar_harmonics"   57.7083  0.1833  62 101 0 0.36 0 0
i "GM_Slap_Bass_1"   57.7083  0.1917  38  82 0 0.50 0 0
i "GM_Standard_Kit"   57.7083  0.2500  36  76 0 0.50 0 0
i "GM_Standard_Kit"   57.7083  0.1500  42  52 0 0.35 0 0
i "GM_Slap_Bass_1"   57.9167  0.1917  45  70 0 0.50 0 0
i "GM_Standard_Kit"   57.9167  0.1500  42  44 0 0.35 0 0
i "GM_Guitar_harmonics"   58.0208  0.0917  62  91 0 0.36 0 0
i "GM_Guitar_harmonics"   58.1250  0.1833  54 104 0 0.36 0 0
i "GM_Slap_Bass_1"   58.1250  0.1917  38  79 0 0.50 0 0
i "GM_Standard_Kit"   58.1250  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"   58.1250  0.2000  38  83 0 0.48 0 0
i "GM_Standard_Kit"   58.1250  0.1500  42  52 0 0.35 0 0
i "GM_Electric_Piano_1"   58.2319  0.1146  60  66 0 0.42 0 0
i "GM_Electric_Piano_1"   58.2341  0.1146  62  62 0 0.42 0 0
i "GM_Electric_Piano_1"   58.2361  0.1146  69  66 0 0.42 0 0
i "GM_Electric_Piano_1"   58.2366  0.1146  66  66 0 0.42 0 0
i "GM_Guitar_harmonics"   58.3333  0.1833  55  97 0 0.36 0 0
i "GM_Slap_Bass_1"   58.3333  0.1917  48  72 0 0.50 0 0
i "GM_Standard_Kit"   58.3333  0.2500  36  71 0 0.50 0 0
i "GM_Standard_Kit"   58.3333  0.1500  42  42 0 0.35 0 0
i "GM_Standard_Kit"   58.3333  0.1800  50  78 0 0.40 0 0
i "GM_Guitar_harmonics"   58.5417  0.1833  54 100 0 0.36 0 0
i "GM_Slap_Bass_1"   58.5417  0.1917  45  81 0 0.50 0 0
i "GM_Standard_Kit"   58.5417  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"   58.5417  0.1800  48  86 0 0.44 0 0
i "GM_Standard_Kit"   58.7500  0.2000  38  83 0 0.48 0 0
i "GM_Standard_Kit"   58.7500  0.1500  42  41 0 0.35 0 0
i "GM_Standard_Kit"   58.7500  0.1800  47  79 0 0.48 0 0
i "GM_Guitar_harmonics"   58.8542  0.0917  52  88 0 0.36 0 0
i "GM_Guitar_harmonics"   58.9583  0.1833  62  95 0 0.36 0 0
i "GM_Slap_Bass_1"   58.9583  0.1917  41  78 0 0.50 0 0
i "GM_Standard_Kit"   58.9583  0.1500  46  56 0 0.35 0 0
i "GM_Standard_Kit"   58.9583  0.1800  45  88 0 0.52 0 0
i "GM_Standard_Kit"   58.9583  0.2000  49  82 0 0.70 0 0
i "GM_Electric_Piano_1"   58.9592  0.1146  50  60 0 0.42 0 0
i "GM_Electric_Piano_1"   58.9604  0.1146  60  65 0 0.42 0 0
i "GM_Electric_Piano_1"   58.9639  0.1146  66  60 0 0.42 0 0
i "GM_Electric_Piano_1"   58.9653  0.1146  57  60 0 0.42 0 0
i "GM_Acoustic_Bass"   59.1667  0.1917  45  91 0 0.54 0 0
i "GM_Standard_Kit"   59.1667  0.1200  42  38 0 0.35 0 0
i "GM_Acoustic_Bass"   59.3750  0.1917  45  78 0 0.54 0 0
i "GM_Acoustic_Bass"   59.5833  0.1917  48  86 0 0.54 0 0
i "GM_Standard_Kit"   59.5833  0.1200  42  38 0 0.35 0 0
i "GM_Acoustic_Bass"   59.7917  0.1917  50  77 0 0.54 0 0
i "GM_Acoustic_Bass"   60.0000  0.1917  52  91 0 0.54 0 0
i "GM_Standard_Kit"   60.0000  0.1200  42  38 0 0.35 0 0
i "GM_Acoustic_Bass"   60.2083  0.1917  55  76 0 0.54 0 0
i "GM_Acoustic_Bass"   60.2083  0.1771  41  88 0 0.54 0 0
i "GM_Acoustic_Bass"   60.4167  0.1917  52  86 0 0.54 0 0
i "GM_Acoustic_Bass"   60.4167  0.1771  48  88 0 0.54 0 0
i "GM_Standard_Kit"   60.4167  0.1200  42  38 0 0.35 0 0
i "GM_Acoustic_Bass"   60.6250  0.1917  50  80 0 0.54 0 0
i "GM_Acoustic_Bass"   60.6250  0.1771  53  88 0 0.54 0 0
i "GM_Electric_Bass_finger"   60.8333  0.1917  41  86 0 0.72 0 0
i "GM_Standard_Kit"   60.8333  0.1200  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"   61.0417  0.1917  41  80 0 0.72 0 0
i "GM_Electric_Bass_finger"   61.2500  0.1917  44  89 0 0.72 0 0
i "GM_Standard_Kit"   61.2500  0.1200  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"   61.4583  0.1917  46  83 0 0.72 0 0
i "GM_Electric_Bass_finger"   61.6667  0.1917  48  87 0 0.72 0 0
i "GM_Standard_Kit"   61.6667  0.1200  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"   61.8750  0.1771  36  88 0 0.72 0 0
i "GM_Electric_Bass_finger"   62.0833  0.1917  48  94 0 0.72 0 0
i "GM_Electric_Bass_finger"   62.0833  0.1771  43  88 0 0.72 0 0
i "GM_Standard_Kit"   62.0833  0.1200  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"   62.2917  0.1771  48  88 0 0.72 0 0
i "GM_Electric_Bass_pick"   62.5000  0.1917  36  89 0 0.34 0 0
i "GM_Standard_Kit"   62.5000  0.1200  42  38 0 0.35 0 0
i "GM_Electric_Bass_pick"   62.7083  0.1917  41  81 0 0.34 0 0
i "GM_Electric_Bass_pick"   62.9167  0.1917  39  89 0 0.34 0 0
i "GM_Standard_Kit"   62.9167  0.1200  42  38 0 0.35 0 0
i "GM_Electric_Bass_pick"   63.1250  0.1917  38  82 0 0.34 0 0
i "GM_Electric_Bass_pick"   63.3333  0.1917  36  87 0 0.34 0 0
i "GM_Standard_Kit"   63.3333  0.1200  42  38 0 0.35 0 0
i "GM_Electric_Bass_pick"   63.5417  0.1917  43  81 0 0.34 0 0
i "GM_Electric_Bass_pick"   63.5417  0.1771  47  88 0 0.34 0 0
i "GM_Electric_Bass_pick"   63.7500  0.1917  46  90 0 0.34 0 0
i "GM_Electric_Bass_pick"   63.7500  0.1771  54  88 0 0.34 0 0
i "GM_Standard_Kit"   63.7500  0.1200  42  38 0 0.35 0 0
i "GM_Electric_Bass_pick"   63.9583  0.1917  48  84 0 0.34 0 0
i "GM_Electric_Bass_pick"   63.9583  0.1771  47  88 0 0.34 0 0
i "GM_Fretless_Bass"   64.1667  0.1917  47  89 0 0.52 0 0
i "GM_Standard_Kit"   64.1667  0.1200  42  38 0 0.35 0 0
i "GM_Fretless_Bass"   64.3750  0.1917  47  79 0 0.52 0 0
i "GM_Fretless_Bass"   64.5833  0.1917  50  93 0 0.52 0 0
i "GM_Standard_Kit"   64.5833  0.1200  42  38 0 0.35 0 0
i "GM_Fretless_Bass"   64.7917  0.1917  52  77 0 0.52 0 0
i "GM_Fretless_Bass"   65.0000  0.1917  54  87 0 0.52 0 0
i "GM_Standard_Kit"   65.0000  0.1200  42  38 0 0.35 0 0
i "GM_Fretless_Bass"   65.2083  0.1917  45  83 0 0.52 0 0
i "GM_Fretless_Bass"   65.2083  0.1771  38  88 0 0.52 0 0
i "GM_Fretless_Bass"   65.4167  0.1917  54  92 0 0.52 0 0
i "GM_Fretless_Bass"   65.4167  0.1771  45  88 0 0.52 0 0
i "GM_Standard_Kit"   65.4167  0.1200  42  38 0 0.35 0 0
i "GM_Fretless_Bass"   65.6250  0.1917  52  84 0 0.52 0 0
i "GM_Fretless_Bass"   65.6250  0.1771  50  88 0 0.52 0 0
i "GM_Slap_Bass_1"   65.8333  0.1917  50  90 0 0.70 0 0
i "GM_Standard_Kit"   65.8333  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"   66.0417  0.1917  43  82 0 0.70 0 0
i "GM_Slap_Bass_1"   66.2500  0.1917  41  86 0 0.70 0 0
i "GM_Standard_Kit"   66.2500  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"   66.4583  0.1917  40  79 0 0.70 0 0
i "GM_Slap_Bass_1"   66.6667  0.1917  38  88 0 0.70 0 0
i "GM_Standard_Kit"   66.6667  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"   66.8750  0.1917  45  76 0 0.70 0 0
i "GM_Slap_Bass_1"   66.8750  0.1771  46  88 0 0.70 0 0
i "GM_Slap_Bass_1"   67.0833  0.1917  48  88 0 0.70 0 0
i "GM_Slap_Bass_1"   67.0833  0.1771  53  88 0 0.70 0 0
i "GM_Standard_Kit"   67.0833  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_1"   67.2917  0.1771  46  88 0 0.70 0 0
i "GM_Slap_Bass_2"   67.5000  0.1917  46  91 0 0.32 0 0
i "GM_Standard_Kit"   67.5000  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_2"   67.7083  0.1917  53  76 0 0.32 0 0
i "GM_Slap_Bass_2"   67.9167  0.1917  46  86 0 0.32 0 0
i "GM_Standard_Kit"   67.9167  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_2"   68.1250  0.1917  44  82 0 0.32 0 0
i "GM_Slap_Bass_2"   68.3333  0.1917  53  87 0 0.32 0 0
i "GM_Standard_Kit"   68.3333  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_2"   68.5417  0.1917  51  79 0 0.32 0 0
i "GM_Slap_Bass_2"   68.5417  0.1771  41  88 0 0.32 0 0
i "GM_Slap_Bass_2"   68.7500  0.1917  49  90 0 0.32 0 0
i "GM_Slap_Bass_2"   68.7500  0.1771  48  88 0 0.32 0 0
i "GM_Standard_Kit"   68.7500  0.1200  42  38 0 0.35 0 0
i "GM_Slap_Bass_2"   68.9583  0.1917  48  76 0 0.32 0 0
i "GM_Slap_Bass_2"   68.9583  0.1771  53  88 0 0.32 0 0
i "GM_Standard_Kit"   69.1667  0.1200  42  38 0 0.35 0 0
i "GM_Synth_Bass_1"   69.1667  0.1917  41  87 0 0.50 0 0
i "GM_Standard_Kit"   69.5833  0.1200  42  38 0 0.35 0 0
i "GM_Synth_Bass_1"   69.5833  0.1917  44  93 0 0.50 0 0
i "GM_Synth_Bass_1"   69.7917  0.1917  43  83 0 0.50 0 0
i "GM_Standard_Kit"   70.0000  0.1200  42  38 0 0.35 0 0
i "GM_Synth_Bass_1"   70.0000  0.1917  41  88 0 0.50 0 0
i "GM_Synth_Bass_1"   70.2083  0.1917  48  83 0 0.50 0 0
i "GM_Synth_Bass_1"   70.2083  0.1771  36  88 0 0.50 0 0
i "GM_Standard_Kit"   70.4167  0.1200  42  38 0 0.35 0 0
i "GM_Synth_Bass_1"   70.4167  0.1917  51  89 0 0.50 0 0
i "GM_Synth_Bass_1"   70.4167  0.1771  43  88 0 0.50 0 0
i "GM_Synth_Bass_1"   70.6250  0.1917  53  79 0 0.50 0 0
i "GM_Synth_Bass_1"   70.6250  0.1771  48  88 0 0.50 0 0
i "GM_Standard_Kit"   70.8333  0.1200  42  38 0 0.35 0 0
i "GM_Synth_Bass_2"   70.8333  0.1917  48  92 0 0.68 0 0
i "GM_Standard_Kit"   71.2500  0.1200  42  38 0 0.35 0 0
i "GM_Synth_Bass_2"   71.2500  0.1917  39  88 0 0.68 0 0
i "GM_Synth_Bass_2"   71.4583  0.1917  38  83 0 0.68 0 0
i "GM_Standard_Kit"   71.6667  0.1200  42  38 0 0.35 0 0
i "GM_Synth_Bass_2"   71.6667  0.1917  36  92 0 0.68 0 0
i "GM_Synth_Bass_2"   71.6667  0.1771  44  88 0 0.68 0 0
i "GM_Synth_Bass_2"   71.8750  0.1771  51  88 0 0.68 0 0
i "GM_Standard_Kit"   72.0833  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"   72.0833  0.3500  49  86 0 0.70 0 0
i "GM_Synth_Bass_2"   72.0833  0.1917  46  87 0 0.68 0 0
i "GM_Synth_Bass_2"   72.0833  0.1771  44  88 0 0.68 0 0
i "GM_Standard_Kit"   72.2917  0.1200  42  38 0 0.35 0 0
i "GM_Violin"   72.2917  0.3667  75 104 0 0.29 0 0
i "GM_Standard_Kit"   72.7083  0.1200  42  38 0 0.35 0 0
i "GM_Violin"   72.7083  0.3667  73 102 0 0.29 0 0
i "GM_Standard_Kit"   73.1250  0.1200  42  38 0 0.35 0 0
i "GM_Violin"   73.3333  0.1833  73  92 0 0.29 0 0
i "GM_Standard_Kit"   73.5417  0.1200  42  38 0 0.35 0 0
i "GM_Violin"   73.5417  0.3667  73  92 0 0.29 0 0
i "GM_Standard_Kit"   73.9583  0.1200  42  38 0 0.35 0 0
i "GM_Viola"   74.1667  0.1833  58  90 0 0.48 0 0
i "GM_Standard_Kit"   74.3750  0.1200  42  38 0 0.35 0 0
i "GM_Viola"   74.3750  0.3667  58 103 0 0.48 0 0
i "GM_Standard_Kit"   74.7917  0.1200  42  38 0 0.35 0 0
i "GM_Viola"   74.7917  0.1833  63  98 0 0.48 0 0
i "GM_Viola"   75.0000  0.1833  62  91 0 0.48 0 0
i "GM_Standard_Kit"   75.2083  0.1200  42  38 0 0.35 0 0
i "GM_Viola"   75.2083  0.3667  65  90 0 0.48 0 0
i "GM_Cello"   75.6250  0.1833  53 100 0 0.66 0 0
i "GM_Standard_Kit"   75.6250  0.1200  42  38 0 0.35 0 0
i "GM_Cello"   76.0417  0.1833  50  99 0 0.66 0 0
i "GM_Standard_Kit"   76.0417  0.1200  42  38 0 0.35 0 0
i "GM_Cello"   76.2500  0.1833  46  94 0 0.66 0 0
i "GM_Cello"   76.4583  0.3667  53 105 0 0.66 0 0
i "GM_Standard_Kit"   76.4583  0.1200  42  38 0 0.35 0 0
i "GM_Cello"   76.8750  0.1833  55  88 0 0.66 0 0
i "GM_Standard_Kit"   76.8750  0.1200  42  38 0 0.35 0 0
i "GM_Cello"   77.0833  0.1833  57  96 0 0.66 0 0
i "GM_Contrabass"   77.2917  0.1917  45  93 0 0.27 0 0
i "GM_Standard_Kit"   77.2917  0.1200  42  38 0 0.35 0 0
i "GM_Contrabass"   77.5000  0.1917  50  80 0 0.27 0 0
i "GM_Contrabass"   77.7083  0.1917  48  89 0 0.27 0 0
i "GM_Standard_Kit"   77.7083  0.1200  42  38 0 0.35 0 0
i "GM_Contrabass"   77.9167  0.1917  47  77 0 0.27 0 0
i "GM_Contrabass"   78.1250  0.1917  45  94 0 0.27 0 0
i "GM_Standard_Kit"   78.1250  0.1200  42  38 0 0.35 0 0
i "GM_Contrabass"   78.3333  0.1917  52  81 0 0.27 0 0
i "GM_Contrabass"   78.3333  0.1771  40  88 0 0.27 0 0
i "GM_Contrabass"   78.5417  0.1917  55  92 0 0.27 0 0
i "GM_Contrabass"   78.5417  0.1771  47  88 0 0.27 0 0
i "GM_Standard_Kit"   78.5417  0.1200  42  38 0 0.35 0 0
i "GM_Contrabass"   78.7500  0.1771  52  88 0 0.27 0 0
i "GM_Standard_Kit"   78.9583  0.1200  42  38 0 0.35 0 0
i "GM_Tremolo_Strings"   78.9583  0.3667  71 101 0 0.45 0 0
i "GM_Standard_Kit"   79.3750  0.1200  42  38 0 0.35 0 0
i "GM_Tremolo_Strings"   79.3750  0.3667  71 101 0 0.45 0 0
i "GM_Standard_Kit"   79.7917  0.1200  42  38 0 0.35 0 0
i "GM_Tremolo_Strings"   80.0000  0.1833  69  93 0 0.45 0 0
i "GM_Standard_Kit"   80.2083  0.1200  42  38 0 0.35 0 0
i "GM_Tremolo_Strings"   80.2083  0.3667  67  97 0 0.45 0 0
i "GM_Pizzicato_Strings"   80.6250  0.3667  60 104 0 0.63 0 0
i "GM_Standard_Kit"   80.6250  0.1200  42  38 0 0.35 0 0
i "GM_Pizzicato_Strings"   81.0417  0.3667  60 100 0 0.63 0 0
i "GM_Standard_Kit"   81.0417  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"   81.4583  0.1200  42  38 0 0.35 0 0
i "GM_Pizzicato_Strings"   81.6667  0.1833  67  91 0 0.63 0 0
i "GM_Pizzicato_Strings"   81.8750  0.3667  69  87 0 0.63 0 0
i "GM_Standard_Kit"   81.8750  0.1200  42  38 0 0.35 0 0
i "GM_Orchestral_Harp"   82.2917  0.1833  67 103 0 0.25 0 0
i "GM_Standard_Kit"   82.2917  0.1200  42  38 0 0.35 0 0
i "GM_Orchestral_Harp"   82.6042  0.0917  67  89 0 0.25 0 0
i "GM_Orchestral_Harp"   82.7083  0.1833  71 103 0 0.25 0 0
i "GM_Standard_Kit"   82.7083  0.1200  42  38 0 0.35 0 0
i "GM_Orchestral_Harp"   82.9167  0.1833  71  92 0 0.25 0 0
i "GM_Orchestral_Harp"   83.1250  0.1833  72  99 0 0.25 0 0
i "GM_Standard_Kit"   83.1250  0.1200  42  38 0 0.35 0 0
i "GM_Orchestral_Harp"   83.4375  0.0917  72  91 0 0.25 0 0
i "GM_Orchestral_Harp"   83.5417  0.3667  66  94 0 0.25 0 0
i "GM_Standard_Kit"   83.5417  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"   83.9583  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"   83.9583  0.1500  42  49 0 0.35 0 0
i "GM_Standard_Kit"   84.1667  0.1500  42  41 0 0.35 0 0
i "GM_Timpani"   84.1667  0.2800  50  96 0 0.43 0 0
i "GM_Standard_Kit"   84.3750  0.2000  38  75 0 0.48 0 0
i "GM_Standard_Kit"   84.3750  0.1500  42  46 0 0.35 0 0
i "GM_Timpani"   84.3750  0.2800  45  92 0 0.43 0 0
i "GM_Standard_Kit"   84.5833  0.2500  36  62 0 0.50 0 0
i "GM_Standard_Kit"   84.5833  0.1500  46  37 0 0.35 0 0
i "GM_Standard_Kit"   84.5833  0.1800  50  87 0 0.40 0 0
i "GM_Timpani"   84.5833  0.2800  50  89 0 0.43 0 0
i "GM_Standard_Kit"   84.7917  0.1500  42  50 0 0.35 0 0
i "GM_Standard_Kit"   84.7917  0.1800  48  81 0 0.44 0 0
i "GM_Timpani"   84.7917  0.2800  50  87 0 0.43 0 0
i "GM_Standard_Kit"   85.0000  0.2000  38  76 0 0.48 0 0
i "GM_Standard_Kit"   85.0000  0.1500  42  40 0 0.35 0 0
i "GM_Standard_Kit"   85.0000  0.1800  47  79 0 0.48 0 0
i "GM_Timpani"   85.0000  0.2800  50  83 0 0.43 0 0
i "GM_Standard_Kit"   85.2083  0.1500  46  47 0 0.35 0 0
i "GM_Standard_Kit"   85.2083  0.1800  45  82 0 0.52 0 0
i "GM_Standard_Kit"   85.2083  0.2000  49  82 0 0.70 0 0
i "GM_Electric_Bass_finger"   85.4167  0.1917  45  83 0 0.50 0 0
i "GM_Standard_Kit"   85.4167  0.2500  36  65 0 0.50 0 0
i "GM_Standard_Kit"   85.4167  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"   85.4167  0.5500  49  88 0 0.72 0 0
i "GM_String_Ensemble_1"   85.4167  1.6333  55  72 0 0.61 0 0
i "GM_String_Ensemble_1"   85.4167  1.6333  57  72 0 0.61 0 0
i "GM_String_Ensemble_1"   85.4167  1.6333  60  72 0 0.61 0 0
i "GM_String_Ensemble_1"   85.4167  1.6333  64  72 0 0.61 0 0
i "GM_Electric_Bass_finger"   85.6250  0.1917  52  71 0 0.50 0 0
i "GM_Standard_Kit"   85.6250  0.1500  42  39 0 0.35 0 0
i "GM_Electric_Bass_finger"   85.8333  0.1917  45  85 0 0.50 0 0
i "GM_Standard_Kit"   85.8333  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"   85.8333  0.1500  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"   86.0417  0.1917  43  68 0 0.50 0 0
i "GM_Standard_Kit"   86.0417  0.1500  42  37 0 0.35 0 0
i "GM_Electric_Bass_finger"   86.2500  0.1917  52  85 0 0.50 0 0
i "GM_Standard_Kit"   86.2500  0.2500  36  66 0 0.50 0 0
i "GM_Standard_Kit"   86.2500  0.1500  42  52 0 0.35 0 0
i "GM_Electric_Bass_finger"   86.4583  0.1917  50  72 0 0.50 0 0
i "GM_Standard_Kit"   86.4583  0.1500  42  37 0 0.35 0 0
i "GM_Electric_Bass_finger"   86.6667  0.1917  48  86 0 0.50 0 0
i "GM_Standard_Kit"   86.6667  0.2500  36  62 0 0.50 0 0
i "GM_Standard_Kit"   86.6667  0.2000  38  63 0 0.48 0 0
i "GM_Standard_Kit"   86.6667  0.1500  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"   86.8750  0.1917  47  71 0 0.50 0 0
i "GM_Standard_Kit"   86.8750  0.1500  46  39 0 0.35 0 0
i "GM_Electric_Bass_finger"   87.0833  0.1917  41  81 0 0.50 0 0
i "GM_Standard_Kit"   87.0833  0.2500  36  64 0 0.50 0 0
i "GM_Standard_Kit"   87.0833  0.1500  42  52 0 0.35 0 0
i "GM_String_Ensemble_2"   87.0833  1.6333  52  72 0 0.23 0 0
i "GM_String_Ensemble_2"   87.0833  1.6333  53  72 0 0.23 0 0
i "GM_String_Ensemble_2"   87.0833  1.6333  57  72 0 0.23 0 0
i "GM_String_Ensemble_2"   87.0833  1.6333  60  72 0 0.23 0 0
i "GM_Electric_Bass_finger"   87.2917  0.1917  48  73 0 0.50 0 0
i "GM_Standard_Kit"   87.2917  0.1500  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   87.5000  0.1917  41  81 0 0.50 0 0
i "GM_Standard_Kit"   87.5000  0.2000  38  77 0 0.48 0 0
i "GM_Standard_Kit"   87.5000  0.1500  42  50 0 0.35 0 0
i "GM_Standard_Kit"   87.6042  0.2500  36  69 0 0.50 0 0
i "GM_Electric_Bass_finger"   87.7083  0.1917  51  68 0 0.50 0 0
i "GM_Standard_Kit"   87.7083  0.1500  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   87.9167  0.1917  48  81 0 0.50 0 0
i "GM_Standard_Kit"   87.9167  0.2500  36  67 0 0.50 0 0
i "GM_Standard_Kit"   87.9167  0.1500  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"   88.1250  0.1917  46  68 0 0.50 0 0
i "GM_Standard_Kit"   88.1250  0.1500  42  37 0 0.35 0 0
i "GM_Electric_Bass_finger"   88.3333  0.1917  44  79 0 0.50 0 0
i "GM_Standard_Kit"   88.3333  0.2000  38  65 0 0.48 0 0
i "GM_Standard_Kit"   88.3333  0.1500  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"   88.5417  0.1917  43  76 0 0.50 0 0
i "GM_Standard_Kit"   88.5417  0.1500  46  40 0 0.35 0 0
i "GM_Electric_Bass_finger"   88.7500  0.1917  36  80 0 0.50 0 0
i "GM_Standard_Kit"   88.7500  0.2500  36  67 0 0.50 0 0
i "GM_Standard_Kit"   88.7500  0.1500  42  52 0 0.35 0 0
i "GM_SynthStrings_1"   88.7500  1.6333  48  72 0 0.41 0 0
i "GM_SynthStrings_1"   88.7500  1.6333  52  72 0 0.41 0 0
i "GM_SynthStrings_1"   88.7500  1.6333  55  72 0 0.41 0 0
i "GM_SynthStrings_1"   88.7500  1.6333  59  72 0 0.41 0 0
i "GM_Electric_Bass_finger"   88.9583  0.1917  36  73 0 0.50 0 0
i "GM_Standard_Kit"   88.9583  0.1500  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"   89.1667  0.1917  43  78 0 0.50 0 0
i "GM_Standard_Kit"   89.1667  0.2000  38  77 0 0.48 0 0
i "GM_Standard_Kit"   89.1667  0.1500  42  49 0 0.35 0 0
i "GM_Standard_Kit"   89.2708  0.2500  36  70 0 0.50 0 0
i "GM_Electric_Bass_finger"   89.3750  0.1917  41  72 0 0.50 0 0
i "GM_Standard_Kit"   89.3750  0.1500  46  40 0 0.35 0 0
i "GM_Electric_Bass_finger"   89.5833  0.1917  39  81 0 0.50 0 0
i "GM_Standard_Kit"   89.5833  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"   89.5833  0.1500  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"   89.7917  0.1917  38  73 0 0.50 0 0
i "GM_Standard_Kit"   89.7917  0.1500  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   90.0000  0.1917  36  81 0 0.50 0 0
i "GM_Standard_Kit"   90.0000  0.2000  38  64 0 0.48 0 0
i "GM_Standard_Kit"   90.0000  0.1500  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"   90.2083  0.1917  43  71 0 0.50 0 0
i "GM_Standard_Kit"   90.2083  0.1500  46  37 0 0.35 0 0
i "GM_Electric_Bass_finger"   90.4167  0.1917  47  85 0 0.50 0 0
i "GM_Standard_Kit"   90.4167  0.2500  36  67 0 0.50 0 0
i "GM_Standard_Kit"   90.4167  0.1500  42  46 0 0.35 0 0
i "GM_SynthStrings_2"   90.4167  1.6333  59  72 0 0.59 0 0
i "GM_SynthStrings_2"   90.4167  1.6333  66  72 0 0.59 0 0
i "GM_SynthStrings_2"   90.4167  1.6333  69  72 0 0.59 0 0
i "GM_SynthStrings_2"   90.4167  1.6333  75  72 0 0.59 0 0
i "GM_Electric_Bass_finger"   90.6250  0.1917  52  76 0 0.50 0 0
i "GM_Standard_Kit"   90.6250  0.1500  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   90.8333  0.1917  50  81 0 0.50 0 0
i "GM_Standard_Kit"   90.8333  0.2000  38  75 0 0.48 0 0
i "GM_Standard_Kit"   90.8333  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"   90.9375  0.2500  36  68 0 0.50 0 0
i "GM_Electric_Bass_finger"   91.0417  0.1917  49  74 0 0.50 0 0
i "GM_Standard_Kit"   91.0417  0.1500  46  40 0 0.35 0 0
i "GM_Electric_Bass_finger"   91.2500  0.1917  47  83 0 0.50 0 0
i "GM_Standard_Kit"   91.2500  0.2500  36  66 0 0.50 0 0
i "GM_Standard_Kit"   91.2500  0.1500  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"   91.4583  0.1917  42  75 0 0.50 0 0
i "GM_Standard_Kit"   91.4583  0.1500  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   91.6667  0.1917  45  85 0 0.50 0 0
i "GM_Standard_Kit"   91.6667  0.2500  36  64 0 0.50 0 0
i "GM_Standard_Kit"   91.6667  0.2000  38  65 0 0.48 0 0
i "GM_Standard_Kit"   91.6667  0.1500  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"   91.8750  0.1917  47  76 0 0.50 0 0
i "GM_Standard_Kit"   91.8750  0.1500  46  39 0 0.35 0 0
i "GM_Choir_Aahs"   92.0833  1.6333  50  72 0 0.77 0 0
i "GM_Choir_Aahs"   92.0833  1.6333  53  72 0 0.77 0 0
i "GM_Choir_Aahs"   92.0833  1.6333  57  72 0 0.77 0 0
i "GM_Choir_Aahs"   92.0833  1.6333  60  72 0 0.77 0 0
i "GM_Electric_Bass_finger"   92.0833  0.1917  38  85 0 0.50 0 0
i "GM_Standard_Kit"   92.0833  0.2500  36  68 0 0.50 0 0
i "GM_Standard_Kit"   92.0833  0.1500  42  50 0 0.35 0 0
i "GM_Standard_Kit"   92.2917  0.1500  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"   92.5000  0.1917  38  86 0 0.50 0 0
i "GM_Standard_Kit"   92.5000  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"   92.5000  0.1500  42  48 0 0.35 0 0
i "GM_Standard_Kit"   92.6042  0.2500  36  62 0 0.50 0 0
i "GM_Electric_Bass_finger"   92.7083  0.1917  48  71 0 0.50 0 0
i "GM_Standard_Kit"   92.7083  0.1500  42  41 0 0.35 0 0
i "GM_Electric_Bass_finger"   92.9167  0.1917  45  79 0 0.50 0 0
i "GM_Standard_Kit"   92.9167  0.2500  36  62 0 0.50 0 0
i "GM_Standard_Kit"   92.9167  0.1500  42  50 0 0.35 0 0
i "GM_Standard_Kit"   93.1250  0.1500  42  40 0 0.35 0 0
i "GM_Electric_Bass_finger"   93.3333  0.1917  41  86 0 0.50 0 0
i "GM_Standard_Kit"   93.3333  0.2000  38  67 0 0.48 0 0
i "GM_Standard_Kit"   93.3333  0.1500  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"   93.5417  0.1917  40  76 0 0.50 0 0
i "GM_Standard_Kit"   93.5417  0.1500  46  40 0 0.35 0 0
i "GM_Electric_Bass_finger"   93.7500  0.1917  46  85 0 0.50 0 0
i "GM_Standard_Kit"   93.7500  0.2500  36  66 0 0.50 0 0
i "GM_Standard_Kit"   93.7500  0.1500  42  50 0 0.35 0 0
i "GM_Voice_Oohs"   93.7500  1.6333  58  72 0 0.39 0 0
i "GM_Voice_Oohs"   93.7500  1.6333  62  72 0 0.39 0 0
i "GM_Voice_Oohs"   93.7500  1.6333  65  72 0 0.39 0 0
i "GM_Voice_Oohs"   93.7500  1.6333  69  72 0 0.39 0 0
i "GM_Electric_Bass_finger"   93.9583  0.1917  46  74 0 0.50 0 0
i "GM_Standard_Kit"   93.9583  0.1500  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"   94.1667  0.1917  41  86 0 0.50 0 0
i "GM_Standard_Kit"   94.1667  0.2000  38  76 0 0.48 0 0
i "GM_Standard_Kit"   94.1667  0.1500  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"   94.3750  0.1917  51  70 0 0.50 0 0
i "GM_Standard_Kit"   94.3750  0.1500  42  41 0 0.35 0 0
i "GM_Electric_Bass_finger"   94.5833  0.1917  49  79 0 0.50 0 0
i "GM_Standard_Kit"   94.5833  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"   94.5833  0.1500  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"   94.7917  0.1917  48  71 0 0.50 0 0
i "GM_Standard_Kit"   94.7917  0.1500  42  40 0 0.35 0 0
i "GM_Electric_Bass_finger"   95.0000  0.1917  46  85 0 0.50 0 0
i "GM_Standard_Kit"   95.0000  0.2000  38  64 0 0.48 0 0
i "GM_Standard_Kit"   95.0000  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"   95.2083  0.1500  46  41 0 0.35 0 0
i "GM_Electric_Bass_finger"   95.4167  0.1917  41  82 0 0.50 0 0
i "GM_Rock_Organ"   95.4167  1.6000  53  38 0 0.55 0 0
i "GM_Rock_Organ"   95.4167  1.6000  60  34 0 0.55 0 0
i "GM_Rock_Organ"   95.4167  1.6000  64  36 0 0.55 0 0
i "GM_Rock_Organ"   95.4167  1.6000  69  35 0 0.55 0 0
i "GM_Standard_Kit"   95.4167  0.2500  36  62 0 0.50 0 0
i "GM_Standard_Kit"   95.4167  0.1500  42  50 0 0.35 0 0
i "GM_Synth_Voice"   95.4167  0.3667  69 100 0 0.57 0 0
i "GM_Standard_Kit"   95.6250  0.1500  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"   95.8333  0.1917  46  81 0 0.50 0 0
i "GM_Standard_Kit"   95.8333  0.2000  38  74 0 0.48 0 0
i "GM_Standard_Kit"   95.8333  0.1500  42  47 0 0.35 0 0
i "GM_Synth_Voice"   95.8333  0.1833  65 101 0 0.57 0 0
i "GM_Acoustic_Grand_Piano"   95.8359  0.1458  60  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   95.8383  0.1458  64  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   95.8385  0.1458  53  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   95.8398  0.1458  57  56 0 0.38 0 0
i "GM_Electric_Bass_finger"   96.0417  0.1917  48  68 0 0.50 0 0
i "GM_Standard_Kit"   96.0417  0.1500  42  37 0 0.35 0 0
i "GM_Synth_Voice"   96.0417  0.1833  70  88 0 0.57 0 0
i "GM_Acoustic_Grand_Piano"   96.1473  0.1458  69  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   96.1479  0.1458  64  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   96.1489  0.1458  60  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   96.1528  0.1458  53  58 0 0.38 0 0
i "GM_Electric_Bass_finger"   96.2500  0.1917  46  83 0 0.50 0 0
i "GM_Standard_Kit"   96.2500  0.2500  36  62 0 0.50 0 0
i "GM_Standard_Kit"   96.2500  0.1500  42  47 0 0.35 0 0
i "GM_Synth_Voice"   96.2500  0.1833  65 100 0 0.57 0 0
i "GM_Standard_Kit"   96.4583  0.1500  42  39 0 0.35 0 0
i "GM_Synth_Voice"   96.4583  0.1833  65  92 0 0.57 0 0
i "GM_Electric_Bass_finger"   96.6667  0.1917  43  80 0 0.50 0 0
i "GM_Standard_Kit"   96.6667  0.2000  38  66 0 0.48 0 0
i "GM_Standard_Kit"   96.6667  0.1500  42  50 0 0.35 0 0
i "GM_Synth_Voice"   96.6667  0.1833  70  96 0 0.57 0 0
i "GM_Acoustic_Grand_Piano"   96.6673  0.1458  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   96.6714  0.1458  53  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   96.6740  0.1458  57  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   96.6744  0.1458  52  57 0 0.38 0 0
i "GM_Electric_Bass_finger"   96.8750  0.1917  41  68 0 0.50 0 0
i "GM_Standard_Kit"   96.8750  0.1500  46  35 0 0.35 0 0
i "GM_Synth_Voice"   96.8750  0.1833  64  87 0 0.57 0 0
i "GM_Electric_Bass_finger"   97.0833  0.1917  36  80 0 0.50 0 0
i "GM_Standard_Kit"   97.0833  0.2500  36  65 0 0.50 0 0
i "GM_Standard_Kit"   97.0833  0.1500  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"   97.2917  0.1917  36  68 0 0.50 0 0
i "GM_Orchestra_Hit"   97.2917  0.1354  60  86 0 0.75 0 0
i "GM_Orchestra_Hit"   97.2917  0.1354  64  93 0 0.75 0 0
i "GM_Orchestra_Hit"   97.2917  0.1354  67  90 0 0.75 0 0
i "GM_Orchestra_Hit"   97.2917  0.1354  58  86 0 0.75 0 0
i "GM_Standard_Kit"   97.2917  0.1500  42  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"   97.3969  0.1146  71  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   97.3970  0.1146  67  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   97.4006  0.1146  76  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   97.4028  0.1146  60  60 0 0.38 0 0
i "GM_Electric_Bass_finger"   97.5000  0.1917  39  83 0 0.50 0 0
i "GM_Standard_Kit"   97.5000  0.2000  38  74 0 0.48 0 0
i "GM_Standard_Kit"   97.5000  0.1500  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"   97.7083  0.1917  41  70 0 0.50 0 0
i "GM_Orchestra_Hit"   97.7083  0.1354  60  95 0 0.75 0 0
i "GM_Orchestra_Hit"   97.7083  0.1354  64  86 0 0.75 0 0
i "GM_Orchestra_Hit"   97.7083  0.1354  67  89 0 0.75 0 0
i "GM_Orchestra_Hit"   97.7083  0.1354  58  91 0 0.75 0 0
i "GM_Standard_Kit"   97.7083  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"   97.7083  0.1500  42  35 0 0.35 0 0
i "GM_Standard_Kit"   97.7083  0.1800  50  83 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"   97.7089  0.1146  67  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   97.7092  0.1146  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   97.7092  0.1146  59  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   97.7098  0.1146  60  61 0 0.38 0 0
i "GM_Electric_Bass_finger"   97.9167  0.1917  43  82 0 0.50 0 0
i "GM_Standard_Kit"   97.9167  0.1500  42  47 0 0.35 0 0
i "GM_Standard_Kit"   97.9167  0.1800  48  79 0 0.44 0 0
i "GM_Orchestra_Hit"   98.0208  0.1354  60  86 0 0.75 0 0
i "GM_Orchestra_Hit"   98.0208  0.1354  64  92 0 0.75 0 0
i "GM_Orchestra_Hit"   98.0208  0.1354  67  95 0 0.75 0 0
i "GM_Orchestra_Hit"   98.0208  0.1354  58  92 0 0.75 0 0
i "GM_Standard_Kit"   98.1250  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"   98.1250  0.1500  42  36 0 0.35 0 0
i "GM_Standard_Kit"   98.1250  0.1800  47  82 0 0.48 0 0
i "GM_Electric_Bass_finger"   98.3333  0.1917  43  78 0 0.50 0 0
i "GM_Standard_Kit"   98.3333  0.1500  46  49 0 0.35 0 0
i "GM_Standard_Kit"   98.3333  0.1800  45  85 0 0.52 0 0
i "GM_Standard_Kit"   98.3333  0.2000  49  82 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"   98.3339  0.1146  60  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   98.3345  0.1146  71  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   98.3393  0.1146  76  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   98.3397  0.1146  67  60 0 0.38 0 0
i "GM_Electric_Bass_finger"   98.5417  0.1917  44  84 0 0.50 0 0
i "GM_Standard_Kit"   98.5417  0.2500  36  64 0 0.50 0 0
i "GM_Standard_Kit"   98.5417  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"   98.5417  0.5500  49  88 0 0.72 0 0
i "GM_Trumpet"   98.5417  0.1833  67  96 0 0.37 0 0
i "GM_Acoustic_Grand_Piano"   98.5422  0.1458  63  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   98.5427  0.1458  60  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   98.5428  0.1458  55  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   98.5456  0.1458  56  55 0 0.38 0 0
i "GM_Electric_Bass_finger"   98.7500  0.1917  47  73 0 0.50 0 0
i "GM_Standard_Kit"   98.7500  0.1500  42  35 0 0.35 0 0
i "GM_Trumpet"   98.7500  0.1833  65  97 0 0.37 0 0
i "GM_Electric_Bass_finger"   98.9583  0.1917  49  82 0 0.50 0 0
i "GM_Standard_Kit"   98.9583  0.2000  38  76 0 0.48 0 0
i "GM_Standard_Kit"   98.9583  0.1500  42  48 0 0.35 0 0
i "GM_Standard_Kit"   99.0625  0.2500  36  68 0 0.50 0 0
i "GM_Trumpet"   99.0625  0.0917  67  92 0 0.37 0 0
i "GM_Acoustic_Grand_Piano"   99.0640  0.1458  60  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   99.0647  0.1458  55  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   99.0678  0.1458  63  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   99.0701  0.1458  56  60 0 0.38 0 0
i "GM_Standard_Kit"   99.1667  0.1500  42  37 0 0.35 0 0
i "GM_Trumpet"   99.1667  0.1833  67  97 0 0.37 0 0
i "GM_Electric_Bass_finger"   99.3750  0.1917  49  79 0 0.50 0 0
i "GM_Standard_Kit"   99.3750  0.2500  36  64 0 0.50 0 0
i "GM_Standard_Kit"   99.3750  0.1500  42  47 0 0.35 0 0
i "GM_Trumpet"   99.3750  0.1833  68  98 0 0.37 0 0
i "GM_Electric_Bass_finger"   99.5833  0.1917  47  73 0 0.50 0 0
i "GM_Standard_Kit"   99.5833  0.1500  42  41 0 0.35 0 0
i "GM_Trumpet"   99.5833  0.1833  63  94 0 0.37 0 0
i "GM_Acoustic_Grand_Piano"   99.6890  0.1458  56  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   99.6891  0.1458  67  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   99.6918  0.1458  63  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"   99.6931  0.1458  60  57 0 0.38 0 0
i "GM_Electric_Bass_finger"   99.7917  0.1917  46  82 0 0.50 0 0
i "GM_Standard_Kit"   99.7917  0.2000  38  64 0 0.48 0 0
i "GM_Standard_Kit"   99.7917  0.1500  42  52 0 0.35 0 0
i "GM_Trumpet"   99.8958  0.0917  63  91 0 0.37 0 0
i "GM_Electric_Bass_finger"  100.0000  0.1917  44  75 0 0.50 0 0
i "GM_Standard_Kit"  100.0000  0.1500  46  35 0 0.35 0 0
i "GM_Trumpet"  100.0000  0.1833  63  94 0 0.37 0 0
i "GM_Electric_Bass_finger"  100.2083  0.1917  39  78 0 0.50 0 0
i "GM_Standard_Kit"  100.2083  0.2500  36  65 0 0.50 0 0
i "GM_Standard_Kit"  100.2083  0.1500  42  49 0 0.35 0 0
i "GM_Trombone"  100.2083  0.5500  51 102 0 0.55 0 0
i "GM_Electric_Bass_finger"  100.4167  0.1917  46  68 0 0.50 0 0
i "GM_Standard_Kit"  100.4167  0.1500  42  38 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  100.5219  0.1458  74  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  100.5221  0.1458  70  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  100.5227  0.1458  63  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  100.5255  0.1458  67  55 0 0.38 0 0
i "GM_Electric_Bass_finger"  100.6250  0.1917  39  80 0 0.50 0 0
i "GM_Standard_Kit"  100.6250  0.2000  38  73 0 0.48 0 0
i "GM_Standard_Kit"  100.6250  0.1500  42  52 0 0.35 0 0
i "GM_Electric_Bass_finger"  100.8333  0.1917  49  72 0 0.50 0 0
i "GM_Standard_Kit"  100.8333  0.1500  46  40 0 0.35 0 0
i "GM_Trombone"  100.8333  0.1833  55  94 0 0.55 0 0
i "GM_Acoustic_Grand_Piano"  100.8387  0.1458  67  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  100.8399  0.1458  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  100.8404  0.1458  70  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  100.8407  0.1458  63  59 0 0.38 0 0
i "GM_Electric_Bass_finger"  101.0417  0.1917  46  82 0 0.50 0 0
i "GM_Standard_Kit"  101.0417  0.2500  36  64 0 0.50 0 0
i "GM_Standard_Kit"  101.0417  0.1500  42  47 0 0.35 0 0
i "GM_Trombone"  101.0417  0.3667  50 103 0 0.55 0 0
i "GM_Electric_Bass_finger"  101.2500  0.1917  44  73 0 0.50 0 0
i "GM_Standard_Kit"  101.2500  0.1500  42  39 0 0.35 0 0
i "GM_Electric_Bass_finger"  101.4583  0.1917  42  79 0 0.50 0 0
i "GM_Standard_Kit"  101.4583  0.2000  38  63 0 0.48 0 0
i "GM_Standard_Kit"  101.4583  0.1500  42  51 0 0.35 0 0
i "GM_Trombone"  101.4583  0.1833  48  92 0 0.55 0 0
i "GM_Acoustic_Grand_Piano"  101.4606  0.1458  62  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  101.4630  0.1458  57  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  101.4634  0.1458  65  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  101.4638  0.1458  58  59 0 0.38 0 0
i "GM_Standard_Kit"  101.6667  0.1500  46  40 0 0.35 0 0
i "GM_Trombone"  101.6667  0.1833  53  96 0 0.55 0 0
i "GM_Rock_Organ"  101.8750  1.6000  58  33 0 0.55 0 0
i "GM_Rock_Organ"  101.8750  1.6000  62  35 0 0.55 0 0
i "GM_Rock_Organ"  101.8750  1.6000  65  38 0 0.55 0 0
i "GM_Rock_Organ"  101.8750  1.6000  69  34 0 0.55 0 0
i "GM_Standard_Kit"  101.8750  0.2500  36  68 0 0.50 0 0
i "GM_Standard_Kit"  101.8750  0.1500  42  52 0 0.35 0 0
i "GM_Tuba"  101.8750  0.1917  46  87 0 0.73 0 0
i "GM_Standard_Kit"  102.0833  0.1500  42  37 0 0.35 0 0
i "GM_Standard_Kit"  102.2917  0.2000  38  77 0 0.48 0 0
i "GM_Standard_Kit"  102.2917  0.1500  42  46 0 0.35 0 0
i "GM_Tuba"  102.2917  0.1917  49  86 0 0.73 0 0
i "GM_Acoustic_Grand_Piano"  102.2925  0.1458  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  102.2929  0.1458  58  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  102.2969  0.1458  69  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  102.2978  0.1458  65  61 0 0.38 0 0
i "GM_Standard_Kit"  102.5000  0.1500  42  35 0 0.35 0 0
i "GM_Tuba"  102.5000  0.1917  51  81 0 0.73 0 0
i "GM_Acoustic_Grand_Piano"  102.6053  0.1458  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  102.6072  0.1458  58  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  102.6100  0.1458  62  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  102.6113  0.1458  65  61 0 0.38 0 0
i "GM_Standard_Kit"  102.7083  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  102.7083  0.1500  42  51 0 0.35 0 0
i "GM_Tuba"  102.7083  0.1917  53  93 0 0.73 0 0
i "GM_Standard_Kit"  102.9167  0.1500  42  38 0 0.35 0 0
i "GM_Tuba"  102.9167  0.1917  56  79 0 0.73 0 0
i "GM_Tuba"  102.9167  0.1771  45  88 0 0.73 0 0
i "GM_Standard_Kit"  103.1250  0.2000  38  70 0 0.48 0 0
i "GM_Standard_Kit"  103.1250  0.1500  42  50 0 0.35 0 0
i "GM_Tuba"  103.1250  0.1917  53  86 0 0.73 0 0
i "GM_Tuba"  103.1250  0.1771  52  88 0 0.73 0 0
i "GM_Acoustic_Grand_Piano"  103.1259  0.1458  58  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  103.1265  0.1458  74  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  103.1267  0.1458  69  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  103.1295  0.1458  65  56 0 0.38 0 0
i "GM_Standard_Kit"  103.3333  0.1500  46  35 0 0.35 0 0
i "GM_Tuba"  103.3333  0.1917  51  78 0 0.73 0 0
i "GM_Tuba"  103.3333  0.1771  57  88 0 0.73 0 0
i "GM_Electric_Bass_finger"  103.5417  0.1917  45  81 0 0.50 0 0
i "GM_Muted_Trumpet"  103.5417  0.3667  73  98 0 0.34 0 0
i "GM_Standard_Kit"  103.5417  0.2500  36  68 0 0.50 0 0
i "GM_Standard_Kit"  103.5417  0.1500  42  47 0 0.35 0 0
i "GM_Standard_Kit"  103.7500  0.1500  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"  103.9583  0.1917  48  86 0 0.50 0 0
i "GM_Muted_Trumpet"  103.9583  0.3667  76 101 0 0.34 0 0
i "GM_Standard_Kit"  103.9583  0.2000  38  72 0 0.48 0 0
i "GM_Standard_Kit"  103.9583  0.1500  42  50 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  104.0646  0.1458  55  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  104.0652  0.1458  57  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  104.0662  0.1458  64  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  104.0694  0.1458  61  57 0 0.38 0 0
i "GM_Electric_Bass_finger"  104.1667  0.1917  47  76 0 0.50 0 0
i "GM_Standard_Kit"  104.1667  0.1500  46  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  104.3750  0.1917  45  82 0 0.50 0 0
i "GM_Standard_Kit"  104.3750  0.2500  36  65 0 0.50 0 0
i "GM_Standard_Kit"  104.3750  0.1500  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"  104.5833  0.1917  52  76 0 0.50 0 0
i "GM_Muted_Trumpet"  104.5833  0.1833  69  97 0 0.34 0 0
i "GM_Standard_Kit"  104.5833  0.1500  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"  104.7917  0.1917  43  86 0 0.50 0 0
i "GM_Muted_Trumpet"  104.7917  0.3667  71  91 0 0.34 0 0
i "GM_Standard_Kit"  104.7917  0.2000  38  69 0 0.48 0 0
i "GM_Standard_Kit"  104.7917  0.1500  42  52 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  104.7924  0.1458  55  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  104.7936  0.1458  57  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  104.7956  0.1458  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  104.7956  0.1458  61  64 0 0.38 0 0
i "GM_Electric_Bass_finger"  105.0000  0.1917  45  70 0 0.50 0 0
i "GM_Standard_Kit"  105.0000  0.1500  46  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  105.0006  0.1458  57  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  105.0020  0.1458  64  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  105.0056  0.1458  67  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  105.0078  0.1458  61  63 0 0.38 0 0
i "GM_Electric_Bass_finger"  105.2083  0.1917  40  80 0 0.50 0 0
i "GM_French_Horn"  105.2083  0.1833  55  97 0 0.52 0 0
i "GM_Standard_Kit"  105.2083  0.2500  36  66 0 0.50 0 0
i "GM_Standard_Kit"  105.2083  0.1500  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"  105.4167  0.1917  40  76 0 0.50 0 0
i "GM_French_Horn"  105.4167  0.1833  54  89 0 0.52 0 0
i "GM_Standard_Kit"  105.4167  0.1500  42  37 0 0.35 0 0
i "GM_Electric_Bass_finger"  105.6250  0.1917  47  79 0 0.50 0 0
i "GM_Standard_Kit"  105.6250  0.2000  38  71 0 0.48 0 0
i "GM_Standard_Kit"  105.6250  0.1500  42  50 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  105.6252  0.1458  59  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  105.6274  0.1458  55  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  105.6296  0.1458  62  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  105.6325  0.1458  52  58 0 0.38 0 0
i "GM_French_Horn"  105.7292  0.0917  50  93 0 0.52 0 0
i "GM_Electric_Bass_finger"  105.8333  0.1917  45  75 0 0.50 0 0
i "GM_French_Horn"  105.8333  0.1833  52  96 0 0.52 0 0
i "GM_Standard_Kit"  105.8333  0.1500  46  41 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  105.9390  0.1458  52  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  105.9409  0.1458  55  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  105.9419  0.1458  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  105.9438  0.1458  59  63 0 0.38 0 0
i "GM_Electric_Bass_finger"  106.0417  0.1917  43  81 0 0.50 0 0
i "GM_French_Horn"  106.0417  0.1833  54  99 0 0.52 0 0
i "GM_Standard_Kit"  106.0417  0.2500  36  68 0 0.50 0 0
i "GM_Standard_Kit"  106.0417  0.1500  42  47 0 0.35 0 0
i "GM_French_Horn"  106.2500  0.1833  54  94 0 0.52 0 0
i "GM_Standard_Kit"  106.2500  0.1500  42  37 0 0.35 0 0
i "GM_Electric_Bass_finger"  106.4583  0.1917  40  79 0 0.50 0 0
i "GM_Standard_Kit"  106.4583  0.2000  38  67 0 0.48 0 0
i "GM_Standard_Kit"  106.4583  0.1500  42  50 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  106.4609  0.1458  55  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  106.4612  0.1458  62  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  106.4621  0.1458  52  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  106.4625  0.1458  59  61 0 0.38 0 0
i "GM_French_Horn"  106.5625  0.0917  59  90 0 0.52 0 0
i "GM_Electric_Bass_finger"  106.6667  0.1917  47  75 0 0.50 0 0
i "GM_French_Horn"  106.6667  0.1833  55  93 0 0.52 0 0
i "GM_Standard_Kit"  106.6667  0.1500  46  38 0 0.35 0 0
i "GM_Brass_Section"  106.8750  0.1833  64 102 0 0.71 0 0
i "GM_Electric_Bass_finger"  106.8750  0.1917  36  82 0 0.50 0 0
i "GM_Standard_Kit"  106.8750  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  106.8750  0.1500  42  52 0 0.35 0 0
i "GM_Electric_Bass_finger"  107.0833  0.1917  41  73 0 0.50 0 0
i "GM_Standard_Kit"  107.0833  0.1500  42  36 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  107.1890  0.1458  67  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  107.1896  0.1458  60  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  107.1917  0.1458  71  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  107.1922  0.1458  64  64 0 0.38 0 0
i "GM_Brass_Section"  107.2917  0.1833  64  98 0 0.71 0 0
i "GM_Electric_Bass_finger"  107.2917  0.1917  39  79 0 0.50 0 0
i "GM_Standard_Kit"  107.2917  0.2000  38  73 0 0.48 0 0
i "GM_Standard_Kit"  107.2917  0.1500  42  52 0 0.35 0 0
i "GM_Brass_Section"  107.5000  0.1833  67  89 0 0.71 0 0
i "GM_Electric_Bass_finger"  107.5000  0.1917  38  74 0 0.50 0 0
i "GM_Standard_Kit"  107.5000  0.1500  42  38 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  107.5005  0.1458  64  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  107.5009  0.1458  67  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  107.5037  0.1458  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  107.5048  0.1458  71  63 0 0.38 0 0
i "GM_Brass_Section"  107.7083  0.3667  64 102 0 0.71 0 0
i "GM_Electric_Bass_finger"  107.7083  0.1917  36  78 0 0.50 0 0
i "GM_Standard_Kit"  107.7083  0.2500  36  63 0 0.50 0 0
i "GM_Standard_Kit"  107.7083  0.1500  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"  107.9167  0.1917  43  74 0 0.50 0 0
i "GM_Standard_Kit"  107.9167  0.1500  42  38 0 0.35 0 0
i "GM_Brass_Section"  108.1250  0.1833  64  88 0 0.71 0 0
i "GM_Electric_Bass_finger"  108.1250  0.1917  46  79 0 0.50 0 0
i "GM_Standard_Kit"  108.1250  0.2000  38  63 0 0.48 0 0
i "GM_Standard_Kit"  108.1250  0.1500  42  47 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  108.1250  0.1458  55  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  108.1293  0.1458  54  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  108.1300  0.1458  62  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  108.1317  0.1458  59  60 0 0.38 0 0
i "GM_Brass_Section"  108.3333  0.1833  66  94 0 0.71 0 0
i "GM_Electric_Bass_finger"  108.3333  0.1917  48  71 0 0.50 0 0
i "GM_Standard_Kit"  108.3333  0.1500  46  39 0 0.35 0 0
i "GM_Electric_Bass_finger"  108.5417  0.1917  43  83 0 0.50 0 0
i "GM_Rock_Organ"  108.5417  1.6000  55  39 0 0.55 0 0
i "GM_Rock_Organ"  108.5417  1.6000  62  34 0 0.55 0 0
i "GM_Rock_Organ"  108.5417  1.6000  66  33 0 0.55 0 0
i "GM_Rock_Organ"  108.5417  1.6000  71  36 0 0.55 0 0
i "GM_Standard_Kit"  108.5417  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  108.5417  0.1500  42  46 0 0.35 0 0
i "GM_Standard_Kit"  108.7500  0.1500  42  39 0 0.35 0 0
i "GM_SynthBrass_1"  108.7500  0.1833  67  88 0 0.32 0 0
i "GM_Acoustic_Grand_Piano"  108.8543  0.1458  55  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  108.8557  0.1458  59  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  108.8558  0.1458  62  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  108.8567  0.1458  66  55 0 0.38 0 0
i "GM_Electric_Bass_finger"  108.9583  0.1917  48  83 0 0.50 0 0
i "GM_Standard_Kit"  108.9583  0.2000  38  73 0 0.48 0 0
i "GM_Standard_Kit"  108.9583  0.1500  42  49 0 0.35 0 0
i "GM_SynthBrass_1"  108.9583  0.3667  67 105 0 0.32 0 0
i "GM_Standard_Kit"  109.0625  0.2500  36  67 0 0.50 0 0
i "GM_Electric_Bass_finger"  109.1667  0.1917  50  69 0 0.50 0 0
i "GM_Standard_Kit"  109.1667  0.1500  42  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  109.1674  0.1458  59  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  109.1703  0.1458  55  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  109.1730  0.1458  62  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  109.1734  0.1458  54  54 0 0.38 0 0
i "GM_Electric_Bass_finger"  109.3750  0.1917  48  82 0 0.50 0 0
i "GM_Standard_Kit"  109.3750  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"  109.3750  0.1500  42  50 0 0.35 0 0
i "GM_SynthBrass_1"  109.3750  0.1833  66 101 0 0.32 0 0
i "GM_Electric_Bass_finger"  109.5833  0.1917  46  68 0 0.50 0 0
i "GM_Standard_Kit"  109.5833  0.1500  42  35 0 0.35 0 0
i "GM_SynthBrass_1"  109.5833  0.1833  66  95 0 0.32 0 0
i "GM_Electric_Bass_finger"  109.7917  0.1917  45  84 0 0.50 0 0
i "GM_Standard_Kit"  109.7917  0.2000  38  65 0 0.48 0 0
i "GM_Standard_Kit"  109.7917  0.1500  42  49 0 0.35 0 0
i "GM_SynthBrass_1"  109.7917  0.3667  66  91 0 0.32 0 0
i "GM_Acoustic_Grand_Piano"  109.7944  0.1458  62  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  109.7985  0.1458  71  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  109.7990  0.1458  55  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  109.7992  0.1458  66  56 0 0.38 0 0
i "GM_Electric_Bass_finger"  110.0000  0.1917  43  70 0 0.50 0 0
i "GM_Standard_Kit"  110.0000  0.1500  46  40 0 0.35 0 0
i "GM_Electric_Bass_finger"  110.2083  0.1917  38  86 0 0.50 0 0
i "GM_Standard_Kit"  110.2083  0.2500  36  63 0 0.50 0 0
i "GM_Standard_Kit"  110.2083  0.1500  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"  110.4167  0.1917  45  76 0 0.50 0 0
i "GM_Standard_Kit"  110.4167  0.1500  42  38 0 0.35 0 0
i "GM_SynthBrass_2"  110.4167  0.1833  69  95 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  110.5211  0.1146  72  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  110.5221  0.1146  69  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  110.5232  0.1146  66  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  110.5258  0.1146  62  54 0 0.38 0 0
i "GM_Electric_Bass_finger"  110.6250  0.1917  38  82 0 0.50 0 0
i "GM_Standard_Kit"  110.6250  0.2000  38  72 0 0.48 0 0
i "GM_Standard_Kit"  110.6250  0.1500  42  51 0 0.35 0 0
i "GM_SynthBrass_2"  110.6250  0.3667  69 103 0 0.50 0 0
i "GM_Electric_Bass_finger"  110.8333  0.1917  48  75 0 0.50 0 0
i "GM_Standard_Kit"  110.8333  0.2500  36  68 0 0.50 0 0
i "GM_Standard_Kit"  110.8333  0.1500  42  38 0 0.35 0 0
i "GM_Standard_Kit"  110.8333  0.1800  50  88 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  110.8335  0.1146  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  110.8335  0.1146  69  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  110.8362  0.1146  62  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  110.8376  0.1146  66  56 0 0.38 0 0
i "GM_Electric_Bass_finger"  111.0417  0.1917  45  78 0 0.50 0 0
i "GM_Standard_Kit"  111.0417  0.1500  42  47 0 0.35 0 0
i "GM_Standard_Kit"  111.0417  0.1800  48  76 0 0.44 0 0
i "GM_SynthBrass_2"  111.0417  0.1833  66 104 0 0.50 0 0
i "GM_Electric_Bass_finger"  111.2500  0.1917  43  75 0 0.50 0 0
i "GM_Standard_Kit"  111.2500  0.2000  38  77 0 0.48 0 0
i "GM_Standard_Kit"  111.2500  0.1500  42  38 0 0.35 0 0
i "GM_Standard_Kit"  111.2500  0.1800  47  80 0 0.48 0 0
i "GM_SynthBrass_2"  111.2500  0.1833  62  89 0 0.50 0 0
i "GM_Electric_Bass_finger"  111.4583  0.1917  41  84 0 0.50 0 0
i "GM_Standard_Kit"  111.4583  0.1500  46  46 0 0.35 0 0
i "GM_Standard_Kit"  111.4583  0.1800  45  82 0 0.52 0 0
i "GM_Standard_Kit"  111.4583  0.2000  49  82 0 0.70 0 0
i "GM_SynthBrass_2"  111.4583  0.1833  60  91 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  111.4611  0.1146  69  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  111.4624  0.1146  72  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  111.4636  0.1146  66  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  111.4646  0.1146  62  62 0 0.38 0 0
i "GM_Slap_Bass_1"  111.6667  0.1917  45  86 0 0.50 0 0
i "GM_Soprano_Sax"  111.6667  0.1833  67 101 0 0.68 0 0
i "GM_Standard_Kit"  111.6667  0.2500  36  76 0 0.50 0 0
i "GM_Standard_Kit"  111.6667  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"  111.6667  0.2500  51  49 0 0.70 0 0
i "GM_Standard_Kit"  111.6667  0.5500  49  88 0 0.72 0 0
i "GM_Soprano_Sax"  111.8750  0.1833  69  87 0 0.68 0 0
i "GM_Standard_Kit"  111.8750  0.1500  42  40 0 0.35 0 0
i "GM_Electric_Piano_1"  111.8772  0.1458  57  66 0 0.42 0 0
i "GM_Electric_Piano_1"  111.8777  0.1458  67  62 0 0.42 0 0
i "GM_Electric_Piano_1"  111.8790  0.1458  64  58 0 0.42 0 0
i "GM_Electric_Piano_1"  111.8791  0.1458  72  64 0 0.42 0 0
i "GM_Slap_Bass_1"  112.0833  0.1917  48  85 0 0.50 0 0
i "GM_Soprano_Sax"  112.0833  0.1833  69 105 0 0.68 0 0
i "GM_Standard_Kit"  112.0833  0.2000  38  84 0 0.48 0 0
i "GM_Standard_Kit"  112.0833  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  112.0833  0.2500  51  51 0 0.70 0 0
i "GM_Alto_Sax"  112.1875  0.1146  76  59 0 0.62 0 0
i "GM_Standard_Kit"  112.1875  0.2500  36  73 0 0.50 0 0
i "GM_Tenor_Sax"  112.1875  0.1146  65  58 0 0.35 0 0
i "GM_Trombone"  112.1875  0.1146  59  61 0 0.28 0 0
i "GM_Trumpet"  112.1875  0.1146  79  61 0 0.72 0 0
i "GM_Slap_Bass_1"  112.2917  0.1917  47  73 0 0.50 0 0
i "GM_Soprano_Sax"  112.2917  0.1833  64  97 0 0.68 0 0
i "GM_Standard_Kit"  112.2917  0.1500  42  44 0 0.35 0 0
i "GM_Electric_Piano_1"  112.2927  0.1458  57  60 0 0.42 0 0
i "GM_Electric_Piano_1"  112.2933  0.1458  67  66 0 0.42 0 0
i "GM_Electric_Piano_1"  112.2935  0.1458  64  59 0 0.42 0 0
i "GM_Electric_Piano_1"  112.2992  0.1458  60  64 0 0.42 0 0
i "GM_Slap_Bass_1"  112.5000  0.1917  45  80 0 0.50 0 0
i "GM_Soprano_Sax"  112.5000  0.3667  64 105 0 0.68 0 0
i "GM_Standard_Kit"  112.5000  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"  112.5000  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  112.5000  0.2500  51  49 0 0.70 0 0
i "GM_Electric_Piano_1"  112.6052  0.1458  67  59 0 0.42 0 0
i "GM_Electric_Piano_1"  112.6067  0.1458  64  56 0 0.42 0 0
i "GM_Electric_Piano_1"  112.6090  0.1458  57  61 0 0.42 0 0
i "GM_Electric_Piano_1"  112.6094  0.1458  60  60 0 0.42 0 0
i "GM_Standard_Kit"  112.7083  0.1500  42  45 0 0.35 0 0
i "GM_Alto_Sax"  112.9167  0.1146  76  58 0 0.62 0 0
i "GM_Slap_Bass_1"  112.9167  0.1917  43  84 0 0.50 0 0
i "GM_Soprano_Sax"  112.9167  0.3667  64  93 0 0.68 0 0
i "GM_Standard_Kit"  112.9167  0.2000  38  70 0 0.48 0 0
i "GM_Standard_Kit"  112.9167  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"  112.9167  0.2500  51  51 0 0.70 0 0
i "GM_Tenor_Sax"  112.9167  0.1146  70  56 0 0.35 0 0
i "GM_Trombone"  112.9167  0.1146  62  56 0 0.28 0 0
i "GM_Trumpet"  112.9167  0.1146  74  59 0 0.72 0 0
i "GM_Alto_Sax"  113.1250  0.1146  71  59 0 0.62 0 0
i "GM_Slap_Bass_1"  113.1250  0.1917  45  69 0 0.50 0 0
i "GM_Standard_Kit"  113.1250  0.1500  46  39 0 0.35 0 0
i "GM_Tenor_Sax"  113.1250  0.1146  65  55 0 0.35 0 0
i "GM_Trombone"  113.1250  0.1146  67  60 0 0.28 0 0
i "GM_Trumpet"  113.1250  0.1146  79  55 0 0.72 0 0
i "GM_Electric_Piano_1"  113.1269  0.1458  60  57 0 0.42 0 0
i "GM_Electric_Piano_1"  113.1303  0.1458  57  57 0 0.42 0 0
i "GM_Electric_Piano_1"  113.1322  0.1458  64  60 0 0.42 0 0
i "GM_Electric_Piano_1"  113.1326  0.1458  55  56 0 0.42 0 0
i "GM_Slap_Bass_1"  113.3333  0.1917  41  80 0 0.50 0 0
i "GM_Standard_Kit"  113.3333  0.2500  36  76 0 0.50 0 0
i "GM_Standard_Kit"  113.3333  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  113.3333  0.2500  51  52 0 0.70 0 0
i "GM_Alto_Sax"  113.5417  0.1146  76  54 0 0.62 0 0
i "GM_Alto_Sax"  113.5417  0.1833  65  91 0 0.30 0 0
i "GM_Slap_Bass_1"  113.5417  0.1917  41  68 0 0.50 0 0
i "GM_Standard_Kit"  113.5417  0.1500  42  44 0 0.35 0 0
i "GM_Tenor_Sax"  113.5417  0.1146  62  60 0 0.35 0 0
i "GM_Trombone"  113.5417  0.1146  59  59 0 0.28 0 0
i "GM_Trumpet"  113.5417  0.1146  71  54 0 0.72 0 0
i "GM_Alto_Sax"  113.7500  0.3667  67 100 0 0.30 0 0
i "GM_Slap_Bass_1"  113.7500  0.1917  44  80 0 0.50 0 0
i "GM_Standard_Kit"  113.7500  0.2000  38  80 0 0.48 0 0
i "GM_Standard_Kit"  113.7500  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  113.7500  0.2500  51  47 0 0.70 0 0
i "GM_Electric_Piano_1"  113.8578  0.1458  69  56 0 0.42 0 0
i "GM_Electric_Piano_1"  113.8580  0.1458  60  57 0 0.42 0 0
i "GM_Electric_Piano_1"  113.8595  0.1458  53  65 0 0.42 0 0
i "GM_Electric_Piano_1"  113.8618  0.1458  64  63 0 0.42 0 0
i "GM_Alto_Sax"  113.9583  0.1146  68  58 0 0.62 0 0
i "GM_Slap_Bass_1"  113.9583  0.1917  46  70 0 0.50 0 0
i "GM_Standard_Kit"  113.9583  0.1500  42  39 0 0.35 0 0
i "GM_Tenor_Sax"  113.9583  0.1146  62  60 0 0.35 0 0
i "GM_Trombone"  113.9583  0.1146  64  55 0 0.28 0 0
i "GM_Trumpet"  113.9583  0.1146  79  58 0 0.72 0 0
i "GM_Alto_Sax"  114.1667  0.1833  69 104 0 0.30 0 0
i "GM_Slap_Bass_1"  114.1667  0.1917  48  83 0 0.50 0 0
i "GM_Standard_Kit"  114.1667  0.2500  36  72 0 0.50 0 0
i "GM_Standard_Kit"  114.1667  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  114.1667  0.2500  51  47 0 0.70 0 0
i "GM_Alto_Sax"  114.2708  0.1146  76  59 0 0.62 0 0
i "GM_Tenor_Sax"  114.2708  0.1146  67  59 0 0.35 0 0
i "GM_Trombone"  114.2708  0.1146  64  62 0 0.28 0 0
i "GM_Trumpet"  114.2708  0.1146  71  55 0 0.72 0 0
i "GM_Alto_Sax"  114.3750  0.1833  71  93 0 0.30 0 0
i "GM_Standard_Kit"  114.3750  0.1500  42  39 0 0.35 0 0
i "GM_Alto_Sax"  114.5833  0.3667  67  88 0 0.30 0 0
i "GM_Slap_Bass_1"  114.5833  0.1917  48  79 0 0.50 0 0
i "GM_Standard_Kit"  114.5833  0.2000  38  77 0 0.48 0 0
i "GM_Standard_Kit"  114.5833  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  114.5833  0.2500  51  47 0 0.70 0 0
i "GM_Electric_Piano_1"  114.5834  0.1458  67  61 0 0.42 0 0
i "GM_Electric_Piano_1"  114.5847  0.1458  60  65 0 0.42 0 0
i "GM_Electric_Piano_1"  114.5863  0.1458  64  56 0 0.42 0 0
i "GM_Electric_Piano_1"  114.5882  0.1458  59  66 0 0.42 0 0
i "GM_Alto_Sax"  114.7917  0.1146  76  57 0 0.62 0 0
i "GM_Slap_Bass_1"  114.7917  0.1917  46  68 0 0.50 0 0
i "GM_Standard_Kit"  114.7917  0.1500  46  40 0 0.35 0 0
i "GM_Tenor_Sax"  114.7917  0.1146  70  54 0 0.35 0 0
i "GM_Trombone"  114.7917  0.1146  59  62 0 0.28 0 0
i "GM_Trumpet"  114.7917  0.1146  71  57 0 0.72 0 0
i "GM_Electric_Piano_1"  114.7954  0.1458  67  66 0 0.42 0 0
i "GM_Electric_Piano_1"  114.7956  0.1458  59  63 0 0.42 0 0
i "GM_Electric_Piano_1"  114.7964  0.1458  60  56 0 0.42 0 0
i "GM_Electric_Piano_1"  114.7978  0.1458  64  59 0 0.42 0 0
i "GM_Alto_Sax"  115.0000  0.1146  75  58 0 0.62 0 0
i "GM_Slap_Bass_1"  115.0000  0.1917  36  79 0 0.50 0 0
i "GM_Standard_Kit"  115.0000  0.2500  36  71 0 0.50 0 0
i "GM_Standard_Kit"  115.0000  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  115.0000  0.2500  51  46 0 0.70 0 0
i "GM_Tenor_Sax"  115.0000  0.1146  65  58 0 0.35 0 0
i "GM_Tenor_Sax"  115.0000  0.3667  59  99 0 0.48 0 0
i "GM_Trombone"  115.0000  0.1146  62  62 0 0.28 0 0
i "GM_Trumpet"  115.0000  0.1146  78  56 0 0.72 0 0
i "GM_Electric_Piano_1"  115.0018  0.1458  76  64 0 0.42 0 0
i "GM_Electric_Piano_1"  115.0039  0.1458  67  64 0 0.42 0 0
i "GM_Electric_Piano_1"  115.0048  0.1458  60  57 0 0.42 0 0
i "GM_Electric_Piano_1"  115.0076  0.1458  71  58 0 0.42 0 0
i "GM_Standard_Kit"  115.2083  0.1500  42  42 0 0.35 0 0
i "GM_Slap_Bass_1"  115.4167  0.1917  36  82 0 0.50 0 0
i "GM_Standard_Kit"  115.4167  0.2000  38  85 0 0.48 0 0
i "GM_Standard_Kit"  115.4167  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"  115.4167  0.2500  51  51 0 0.70 0 0
i "GM_Tenor_Sax"  115.4167  0.3667  55  95 0 0.48 0 0
i "GM_Alto_Sax"  115.5208  0.1146  68  57 0 0.62 0 0
i "GM_Tenor_Sax"  115.5208  0.1146  62  55 0 0.35 0 0
i "GM_Trombone"  115.5208  0.1146  62  59 0 0.28 0 0
i "GM_Trumpet"  115.5208  0.1146  74  55 0 0.72 0 0
i "GM_Electric_Piano_1"  115.5208  0.1458  59  58 0 0.42 0 0
i "GM_Electric_Piano_1"  115.5211  0.1458  67  60 0 0.42 0 0
i "GM_Electric_Piano_1"  115.5213  0.1458  60  63 0 0.42 0 0
i "GM_Electric_Piano_1"  115.5277  0.1458  64  63 0 0.42 0 0
i "GM_Slap_Bass_1"  115.6250  0.1917  46  74 0 0.50 0 0
i "GM_Standard_Kit"  115.6250  0.1500  42  41 0 0.35 0 0
i "GM_Slap_Bass_1"  115.8333  0.1917  43  83 0 0.50 0 0
i "GM_Standard_Kit"  115.8333  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"  115.8333  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  115.8333  0.2500  51  51 0 0.70 0 0
i "GM_Slap_Bass_1"  116.0417  0.1917  41  76 0 0.50 0 0
i "GM_Standard_Kit"  116.0417  0.1500  42  42 0 0.35 0 0
i "GM_Tenor_Sax"  116.0417  0.1833  57  93 0 0.48 0 0
i "GM_Alto_Sax"  116.1458  0.1146  68  54 0 0.62 0 0
i "GM_Tenor_Sax"  116.1458  0.1146  69  59 0 0.35 0 0
i "GM_Trombone"  116.1458  0.1146  59  61 0 0.28 0 0
i "GM_Trumpet"  116.1458  0.1146  71  61 0 0.72 0 0
i "GM_Electric_Piano_1"  116.1510  0.1458  60  56 0 0.42 0 0
i "GM_Electric_Piano_1"  116.1516  0.1458  76  62 0 0.42 0 0
i "GM_Electric_Piano_1"  116.1532  0.1458  67  66 0 0.42 0 0
i "GM_Electric_Piano_1"  116.1538  0.1458  71  61 0 0.42 0 0
i "GM_Slap_Bass_1"  116.2500  0.1917  39  81 0 0.50 0 0
i "GM_Standard_Kit"  116.2500  0.2000  38  77 0 0.48 0 0
i "GM_Standard_Kit"  116.2500  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  116.2500  0.2500  51  46 0 0.70 0 0
i "GM_Tenor_Sax"  116.2500  0.3667  59  90 0 0.48 0 0
i "GM_Slap_Bass_1"  116.4583  0.1917  38  72 0 0.50 0 0
i "GM_Standard_Kit"  116.4583  0.1500  46  45 0 0.35 0 0
i "GM_Baritone_Sax"  116.6667  0.1917  47  87 0 0.66 0 0
i "GM_Standard_Kit"  116.6667  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  116.6667  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  116.6667  0.2500  51  47 0 0.70 0 0
i "GM_Alto_Sax"  116.8750  0.1146  70  57 0 0.62 0 0
i "GM_Baritone_Sax"  116.8750  0.1917  47  76 0 0.66 0 0
i "GM_Standard_Kit"  116.8750  0.1500  42  40 0 0.35 0 0
i "GM_Tenor_Sax"  116.8750  0.1146  67  55 0 0.35 0 0
i "GM_Trombone"  116.8750  0.1146  58  61 0 0.28 0 0
i "GM_Trumpet"  116.8750  0.1146  70  57 0 0.72 0 0
i "GM_Electric_Piano_1"  116.8755  0.1458  75  60 0 0.42 0 0
i "GM_Electric_Piano_1"  116.8789  0.1458  66  61 0 0.42 0 0
i "GM_Electric_Piano_1"  116.8818  0.1458  69  59 0 0.42 0 0
i "GM_Electric_Piano_1"  116.8824  0.1458  59  64 0 0.42 0 0
i "GM_Baritone_Sax"  117.0833  0.1917  50  88 0 0.66 0 0
i "GM_Standard_Kit"  117.0833  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"  117.0833  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  117.0833  0.2500  51  48 0 0.70 0 0
i "GM_Alto_Sax"  117.2917  0.1146  73  55 0 0.62 0 0
i "GM_Baritone_Sax"  117.2917  0.1917  52  76 0 0.66 0 0
i "GM_Standard_Kit"  117.2917  0.1500  42  45 0 0.35 0 0
i "GM_Tenor_Sax"  117.2917  0.1146  61  61 0 0.35 0 0
i "GM_Trombone"  117.2917  0.1146  61  54 0 0.28 0 0
i "GM_Trumpet"  117.2917  0.1146  76  59 0 0.72 0 0
i "GM_Electric_Piano_1"  117.2920  0.1458  57  61 0 0.42 0 0
i "GM_Electric_Piano_1"  117.2920  0.1458  63  62 0 0.42 0 0
i "GM_Electric_Piano_1"  117.2936  0.1458  66  66 0 0.42 0 0
i "GM_Electric_Piano_1"  117.2986  0.1458  59  61 0 0.42 0 0
i "GM_Baritone_Sax"  117.5000  0.1917  54  90 0 0.66 0 0
i "GM_Standard_Kit"  117.5000  0.2500  36  74 0 0.50 0 0
i "GM_Standard_Kit"  117.5000  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  117.5000  0.2500  51  47 0 0.70 0 0
i "GM_Alto_Sax"  117.6042  0.1146  67  61 0 0.62 0 0
i "GM_Tenor_Sax"  117.6042  0.1146  67  57 0 0.35 0 0
i "GM_Trombone"  117.6042  0.1146  58  56 0 0.28 0 0
i "GM_Trumpet"  117.6042  0.1146  76  60 0 0.72 0 0
i "GM_Electric_Piano_1"  117.6049  0.1458  59  64 0 0.42 0 0
i "GM_Electric_Piano_1"  117.6066  0.1458  66  58 0 0.42 0 0
i "GM_Electric_Piano_1"  117.6077  0.1458  75  57 0 0.42 0 0
i "GM_Electric_Piano_1"  117.6077  0.1458  69  60 0 0.42 0 0
i "GM_Baritone_Sax"  117.7083  0.1917  57  78 0 0.66 0 0
i "GM_Baritone_Sax"  117.7083  0.1771  38  88 0 0.66 0 0
i "GM_Standard_Kit"  117.7083  0.1500  42  45 0 0.35 0 0
i "GM_Baritone_Sax"  117.9167  0.1917  54  90 0 0.66 0 0
i "GM_Baritone_Sax"  117.9167  0.1771  45  88 0 0.66 0 0
i "GM_Standard_Kit"  117.9167  0.2500  36  77 0 0.50 0 0
i "GM_Standard_Kit"  117.9167  0.2000  38  73 0 0.48 0 0
i "GM_Standard_Kit"  117.9167  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  117.9167  0.2500  51  50 0 0.70 0 0
i "GM_Alto_Sax"  118.1250  0.1146  67  59 0 0.62 0 0
i "GM_Baritone_Sax"  118.1250  0.1917  52  82 0 0.66 0 0
i "GM_Baritone_Sax"  118.1250  0.1771  50  88 0 0.66 0 0
i "GM_Standard_Kit"  118.1250  0.1500  46  40 0 0.35 0 0
i "GM_Tenor_Sax"  118.1250  0.1146  67  61 0 0.35 0 0
i "GM_Trombone"  118.1250  0.1146  58  61 0 0.28 0 0
i "GM_Trumpet"  118.1250  0.1146  70  57 0 0.72 0 0
i "GM_Electric_Piano_1"  118.1250  0.1458  66  64 0 0.42 0 0
i "GM_Electric_Piano_1"  118.1280  0.1458  69  59 0 0.42 0 0
i "GM_Electric_Piano_1"  118.1296  0.1458  59  60 0 0.42 0 0
i "GM_Electric_Piano_1"  118.1307  0.1458  75  58 0 0.42 0 0
i "GM_Alto_Sax"  118.3333  0.1146  76  55 0 0.62 0 0
i "GM_Oboe"  118.3333  0.1833  74 104 0 0.28 0 0
i "GM_Slap_Bass_1"  118.3333  0.1917  50  81 0 0.50 0 0
i "GM_Standard_Kit"  118.3333  0.2500  36  71 0 0.50 0 0
i "GM_Standard_Kit"  118.3333  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"  118.3333  0.2500  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  118.3333  0.1146  67  56 0 0.35 0 0
i "GM_Trombone"  118.3333  0.1146  67  56 0 0.28 0 0
i "GM_Trumpet"  118.3333  0.1146  76  55 0 0.72 0 0
i "GM_Oboe"  118.5417  0.1833  72  96 0 0.28 0 0
i "GM_Slap_Bass_1"  118.5417  0.1917  45  72 0 0.50 0 0
i "GM_Standard_Kit"  118.5417  0.1500  42  41 0 0.35 0 0
i "GM_Electric_Piano_1"  118.5457  0.1458  65  56 0 0.42 0 0
i "GM_Electric_Piano_1"  118.5477  0.1458  50  63 0 0.42 0 0
i "GM_Electric_Piano_1"  118.5482  0.1458  57  57 0 0.42 0 0
i "GM_Electric_Piano_1"  118.5485  0.1458  60  63 0 0.42 0 0
i "GM_Oboe"  118.7500  0.1833  74 104 0 0.28 0 0
i "GM_Slap_Bass_1"  118.7500  0.1917  38  82 0 0.50 0 0
i "GM_Standard_Kit"  118.7500  0.2000  38  85 0 0.48 0 0
i "GM_Standard_Kit"  118.7500  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  118.7500  0.2500  51  48 0 0.70 0 0
i "GM_Alto_Sax"  118.8542  0.1146  73  62 0 0.62 0 0
i "GM_Tenor_Sax"  118.8542  0.1146  63  61 0 0.35 0 0
i "GM_Trombone"  118.8542  0.1146  67  59 0 0.28 0 0
i "GM_Trumpet"  118.8542  0.1146  72  57 0 0.72 0 0
i "GM_Oboe"  118.9583  0.1833  77  90 0 0.28 0 0
i "GM_Slap_Bass_1"  118.9583  0.1917  48  69 0 0.50 0 0
i "GM_Standard_Kit"  118.9583  0.1500  46  45 0 0.35 0 0
i "GM_Electric_Piano_1"  118.9594  0.1458  65  64 0 0.42 0 0
i "GM_Electric_Piano_1"  118.9620  0.1458  60  57 0 0.42 0 0
i "GM_Electric_Piano_1"  118.9629  0.1458  50  62 0 0.42 0 0
i "GM_Electric_Piano_1"  118.9649  0.1458  57  66 0 0.42 0 0
i "GM_Oboe"  119.1667  0.3667  76 100 0 0.28 0 0
i "GM_Slap_Bass_1"  119.1667  0.1917  45  86 0 0.50 0 0
i "GM_Standard_Kit"  119.1667  0.2500  36  76 0 0.50 0 0
i "GM_Standard_Kit"  119.1667  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  119.1667  0.2500  51  49 0 0.70 0 0
i "GM_Electric_Piano_1"  119.2719  0.1458  57  57 0 0.42 0 0
i "GM_Electric_Piano_1"  119.2753  0.1458  65  58 0 0.42 0 0
i "GM_Electric_Piano_1"  119.2757  0.1458  60  63 0 0.42 0 0
i "GM_Electric_Piano_1"  119.2761  0.1458  50  57 0 0.42 0 0
i "GM_Slap_Bass_1"  119.3750  0.1917  43  76 0 0.50 0 0
i "GM_Standard_Kit"  119.3750  0.1500  42  42 0 0.35 0 0
i "GM_Alto_Sax"  119.4792  0.1146  69  55 0 0.62 0 0
i "GM_Tenor_Sax"  119.4792  0.1146  67  56 0 0.35 0 0
i "GM_Trombone"  119.4792  0.1146  60  60 0 0.28 0 0
i "GM_Trumpet"  119.4792  0.1146  72  57 0 0.72 0 0
i "GM_Oboe"  119.5833  0.3667  74  97 0 0.28 0 0
i "GM_Slap_Bass_1"  119.5833  0.1917  41  86 0 0.50 0 0
i "GM_Standard_Kit"  119.5833  0.2500  36  71 0 0.50 0 0
i "GM_Standard_Kit"  119.5833  0.2000  38  73 0 0.48 0 0
i "GM_Standard_Kit"  119.5833  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  119.5833  0.2500  51  52 0 0.70 0 0
i "GM_Standard_Kit"  119.7917  0.1500  46  40 0 0.35 0 0
i "GM_Electric_Piano_1"  119.7921  0.1458  72  59 0 0.42 0 0
i "GM_Electric_Piano_1"  119.7962  0.1458  69  64 0 0.42 0 0
i "GM_Electric_Piano_1"  119.7963  0.1458  65  66 0 0.42 0 0
i "GM_Electric_Piano_1"  119.7990  0.1458  62  65 0 0.42 0 0
i "GM_Alto_Sax"  120.0000  0.1146  78  62 0 0.62 0 0
i "GM_Slap_Bass_1"  120.0000  0.1917  46  81 0 0.50 0 0
i "GM_Standard_Kit"  120.0000  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  120.0000  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  120.0000  0.2500  51  46 0 0.70 0 0
i "GM_Tenor_Sax"  120.0000  0.1146  67  56 0 0.35 0 0
i "GM_Trombone"  120.0000  0.1146  69  55 0 0.28 0 0
i "GM_Trumpet"  120.0000  0.1146  81  54 0 0.72 0 0
i "GM_English_Horn"  120.2083  0.1833  70  90 0 0.46 0 0
i "GM_Slap_Bass_1"  120.2083  0.1917  49  73 0 0.50 0 0
i "GM_Standard_Kit"  120.2083  0.1500  42  45 0 0.35 0 0
i "GM_Electric_Piano_1"  120.3136  0.1458  65  64 0 0.42 0 0
i "GM_Electric_Piano_1"  120.3149  0.1458  69  65 0 0.42 0 0
i "GM_Electric_Piano_1"  120.3154  0.1458  58  62 0 0.42 0 0
i "GM_Electric_Piano_1"  120.3191  0.1458  74  56 0 0.42 0 0
i "GM_English_Horn"  120.4167  0.3667  72 102 0 0.46 0 0
i "GM_Slap_Bass_1"  120.4167  0.1917  51  79 0 0.50 0 0
i "GM_Standard_Kit"  120.4167  0.2000  38  79 0 0.48 0 0
i "GM_Standard_Kit"  120.4167  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  120.4167  0.2500  51  52 0 0.70 0 0
i "GM_Alto_Sax"  120.5208  0.1146  69  62 0 0.62 0 0
i "GM_Standard_Kit"  120.5208  0.2500  36  72 0 0.50 0 0
i "GM_Tenor_Sax"  120.5208  0.1146  63  62 0 0.35 0 0
i "GM_Trombone"  120.5208  0.1146  60  56 0 0.28 0 0
i "GM_Trumpet"  120.5208  0.1146  76  61 0 0.72 0 0
i "GM_Slap_Bass_1"  120.6250  0.1917  41  72 0 0.50 0 0
i "GM_Standard_Kit"  120.6250  0.1500  46  45 0 0.35 0 0
i "GM_Electric_Piano_1"  120.6260  0.1458  62  63 0 0.42 0 0
i "GM_Electric_Piano_1"  120.6264  0.1458  57  64 0 0.42 0 0
i "GM_Electric_Piano_1"  120.6275  0.1458  65  57 0 0.42 0 0
i "GM_Electric_Piano_1"  120.6298  0.1458  58  60 0 0.42 0 0
i "GM_English_Horn"  120.8333  0.1833  65 100 0 0.46 0 0
i "GM_Slap_Bass_1"  120.8333  0.1917  51  81 0 0.50 0 0
i "GM_Standard_Kit"  120.8333  0.2500  36  72 0 0.50 0 0
i "GM_Standard_Kit"  120.8333  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  120.8333  0.2500  51  51 0 0.70 0 0
i "GM_English_Horn"  121.0417  0.1833  65  95 0 0.46 0 0
i "GM_Slap_Bass_1"  121.0417  0.1917  49  74 0 0.50 0 0
i "GM_Standard_Kit"  121.0417  0.1500  42  41 0 0.35 0 0
i "GM_Alto_Sax"  121.1458  0.1146  73  55 0 0.62 0 0
i "GM_Tenor_Sax"  121.1458  0.1146  67  58 0 0.35 0 0
i "GM_Trombone"  121.1458  0.1146  69  58 0 0.28 0 0
i "GM_Trumpet"  121.1458  0.1146  76  62 0 0.72 0 0
i "GM_English_Horn"  121.2500  0.3667  69  93 0 0.46 0 0
i "GM_Slap_Bass_1"  121.2500  0.1917  48  80 0 0.50 0 0
i "GM_Standard_Kit"  121.2500  0.2000  38  71 0 0.48 0 0
i "GM_Standard_Kit"  121.2500  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  121.2500  0.2500  51  52 0 0.70 0 0
i "GM_Electric_Piano_1"  121.2502  0.1458  53  62 0 0.42 0 0
i "GM_Electric_Piano_1"  121.2507  0.1458  64  59 0 0.42 0 0
i "GM_Electric_Piano_1"  121.2538  0.1458  60  65 0 0.42 0 0
i "GM_Electric_Piano_1"  121.2541  0.1458  57  63 0 0.42 0 0
i "GM_Slap_Bass_1"  121.4583  0.1917  46  71 0 0.50 0 0
i "GM_Standard_Kit"  121.4583  0.1500  46  41 0 0.35 0 0
i "GM_Bassoon"  121.6667  0.1833  53 101 0 0.64 0 0
i "GM_Slap_Bass_1"  121.6667  0.1917  41  83 0 0.50 0 0
i "GM_Standard_Kit"  121.6667  0.2500  36  74 0 0.50 0 0
i "GM_Standard_Kit"  121.6667  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  121.6667  0.2500  51  51 0 0.70 0 0
i "GM_Bassoon"  121.8750  0.1833  60  94 0 0.64 0 0
i "GM_Slap_Bass_1"  121.8750  0.1917  46  68 0 0.50 0 0
i "GM_Standard_Kit"  121.8750  0.1500  42  45 0 0.35 0 0
i "GM_Alto_Sax"  121.9792  0.1146  76  61 0 0.62 0 0
i "GM_Tenor_Sax"  121.9792  0.1146  67  61 0 0.35 0 0
i "GM_Trombone"  121.9792  0.1146  67  59 0 0.28 0 0
i "GM_Trumpet"  121.9792  0.1146  71  57 0 0.72 0 0
i "GM_Electric_Piano_1"  121.9798  0.1458  60  63 0 0.42 0 0
i "GM_Electric_Piano_1"  121.9836  0.1458  53  59 0 0.42 0 0
i "GM_Electric_Piano_1"  121.9860  0.1458  52  56 0 0.42 0 0
i "GM_Electric_Piano_1"  121.9864  0.1458  57  63 0 0.42 0 0
i "GM_Slap_Bass_1"  122.0833  0.1917  44  80 0 0.50 0 0
i "GM_Standard_Kit"  122.0833  0.2000  38  83 0 0.48 0 0
i "GM_Standard_Kit"  122.0833  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  122.0833  0.2500  51  47 0 0.70 0 0
i "GM_Bassoon"  122.1875  0.0917  65  94 0 0.64 0 0
i "GM_Standard_Kit"  122.1875  0.2500  36  75 0 0.50 0 0
i "GM_Alto_Sax"  122.2917  0.1146  76  59 0 0.62 0 0
i "GM_Bassoon"  122.2917  0.1833  65  91 0 0.64 0 0
i "GM_Standard_Kit"  122.2917  0.1500  42  39 0 0.35 0 0
i "GM_Tenor_Sax"  122.2917  0.1146  62  58 0 0.35 0 0
i "GM_Trombone"  122.2917  0.1146  67  57 0 0.28 0 0
i "GM_Trumpet"  122.2917  0.1146  76  57 0 0.72 0 0
i "GM_Electric_Piano_1"  122.2952  0.1458  60  57 0 0.42 0 0
i "GM_Electric_Piano_1"  122.2966  0.1458  64  63 0 0.42 0 0
i "GM_Electric_Piano_1"  122.2982  0.1458  69  56 0 0.42 0 0
i "GM_Electric_Piano_1"  122.2985  0.1458  53  61 0 0.42 0 0
i "GM_Bassoon"  122.5000  0.1833  65 101 0 0.64 0 0
i "GM_Slap_Bass_1"  122.5000  0.1917  41  80 0 0.50 0 0
i "GM_Standard_Kit"  122.5000  0.2500  36  72 0 0.50 0 0
i "GM_Standard_Kit"  122.5000  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  122.5000  0.2500  51  49 0 0.70 0 0
i "GM_Bassoon"  122.7083  0.1833  70  95 0 0.64 0 0
i "GM_Standard_Kit"  122.7083  0.1500  42  42 0 0.35 0 0
i "GM_Alto_Sax"  122.9167  0.1146  73  62 0 0.62 0 0
i "GM_Slap_Bass_1"  122.9167  0.1917  51  86 0 0.50 0 0
i "GM_Standard_Kit"  122.9167  0.2500  36  76 0 0.50 0 0
i "GM_Standard_Kit"  122.9167  0.2000  38  74 0 0.48 0 0
i "GM_Standard_Kit"  122.9167  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  122.9167  0.2500  51  50 0 0.70 0 0
i "GM_Tenor_Sax"  122.9167  0.1146  62  59 0 0.35 0 0
i "GM_Trombone"  122.9167  0.1146  59  56 0 0.28 0 0
i "GM_Trumpet"  122.9167  0.1146  79  61 0 0.72 0 0
i "GM_Electric_Piano_1"  122.9182  0.1458  53  65 0 0.42 0 0
i "GM_Electric_Piano_1"  122.9210  0.1458  60  65 0 0.42 0 0
i "GM_Electric_Piano_1"  122.9215  0.1458  52  61 0 0.42 0 0
i "GM_Electric_Piano_1"  122.9221  0.1458  57  61 0 0.42 0 0
i "GM_Bassoon"  123.0208  0.0917  69  86 0 0.64 0 0
i "GM_Bassoon"  123.1250  0.1833  67  87 0 0.64 0 0
i "GM_Slap_Bass_1"  123.1250  0.1917  41  72 0 0.50 0 0
i "GM_Standard_Kit"  123.1250  0.1500  46  42 0 0.35 0 0
i "GM_Clarinet"  123.3333  0.3667  64  96 0 0.26 0 0
i "GM_Slap_Bass_1"  123.3333  0.1917  36  81 0 0.50 0 0
i "GM_Standard_Kit"  123.3333  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  123.3333  0.1500  42  57 0 0.35 0 0
i "GM_Slap_Bass_1"  123.5417  0.1917  41  68 0 0.50 0 0
i "GM_Standard_Kit"  123.5417  0.1500  42  42 0 0.35 0 0
i "GM_Electric_Piano_1"  123.5421  0.1146  76  65 0 0.42 0 0
i "GM_Electric_Piano_1"  123.5433  0.1146  60  63 0 0.42 0 0
i "GM_Electric_Piano_1"  123.5439  0.1146  71  65 0 0.42 0 0
i "GM_Electric_Piano_1"  123.5477  0.1146  67  63 0 0.42 0 0
i "GM_Clarinet"  123.7500  0.1833  60  99 0 0.26 0 0
i "GM_Slap_Bass_1"  123.7500  0.1917  39  81 0 0.50 0 0
i "GM_Standard_Kit"  123.7500  0.2000  38  85 0 0.48 0 0
i "GM_Standard_Kit"  123.7500  0.1500  42  51 0 0.35 0 0
i "GM_Clarinet"  123.9583  0.1833  67  92 0 0.26 0 0
i "GM_Slap_Bass_1"  123.9583  0.1917  38  73 0 0.50 0 0
i "GM_Standard_Kit"  123.9583  0.2500  36  71 0 0.50 0 0
i "GM_Standard_Kit"  123.9583  0.1500  42  41 0 0.35 0 0
i "GM_Standard_Kit"  123.9583  0.1800  50  82 0 0.40 0 0
i "GM_Electric_Piano_1"  123.9588  0.1146  60  61 0 0.42 0 0
i "GM_Electric_Piano_1"  123.9602  0.1146  71  65 0 0.42 0 0
i "GM_Electric_Piano_1"  123.9604  0.1146  76  56 0 0.42 0 0
i "GM_Electric_Piano_1"  123.9624  0.1146  67  57 0 0.42 0 0
i "GM_Clarinet"  124.1667  0.1833  64 103 0 0.26 0 0
i "GM_Slap_Bass_1"  124.1667  0.1917  36  85 0 0.50 0 0
i "GM_Standard_Kit"  124.1667  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  124.1667  0.1800  48  81 0 0.44 0 0
i "GM_Electric_Piano_1"  124.2715  0.1146  71  66 0 0.42 0 0
i "GM_Electric_Piano_1"  124.2728  0.1146  60  63 0 0.42 0 0
i "GM_Electric_Piano_1"  124.2745  0.1146  64  64 0 0.42 0 0
i "GM_Electric_Piano_1"  124.2758  0.1146  67  60 0 0.42 0 0
i "GM_Clarinet"  124.3750  0.1833  65  90 0 0.26 0 0
i "GM_Slap_Bass_1"  124.3750  0.1917  43  74 0 0.50 0 0
i "GM_Standard_Kit"  124.3750  0.2000  38  79 0 0.48 0 0
i "GM_Standard_Kit"  124.3750  0.1500  42  44 0 0.35 0 0
i "GM_Standard_Kit"  124.3750  0.1800  47  83 0 0.48 0 0
i "GM_Clarinet"  124.5833  0.1833  64  88 0 0.26 0 0
i "GM_Slap_Bass_1"  124.5833  0.1917  46  84 0 0.50 0 0
i "GM_Standard_Kit"  124.5833  0.1500  46  51 0 0.35 0 0
i "GM_Standard_Kit"  124.5833  0.1800  45  83 0 0.52 0 0
i "GM_Standard_Kit"  124.5833  0.2000  49  82 0 0.70 0 0
i "GM_Piccolo"  124.7917  0.3958  91 105 0 0.44 0 0
i "GM_Slap_Bass_1"  124.7917  0.1917  44  84 0 0.50 0 0
i "GM_Standard_Kit"  124.7917  0.2500  36  77 0 0.50 0 0
i "GM_Standard_Kit"  124.7917  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  124.7917  0.2500  51  49 0 0.70 0 0
i "GM_Standard_Kit"  124.7917  0.5500  49  88 0 0.72 0 0
i "GM_Slap_Bass_1"  125.0000  0.1917  51  76 0 0.50 0 0
i "GM_Standard_Kit"  125.0000  0.1500  42  45 0 0.35 0 0
i "GM_Electric_Piano_1"  125.0001  0.1458  56  61 0 0.42 0 0
i "GM_Electric_Piano_1"  125.0047  0.1458  55  62 0 0.42 0 0
i "GM_Electric_Piano_1"  125.0048  0.1458  60  62 0 0.42 0 0
i "GM_Electric_Piano_1"  125.0057  0.1458  63  64 0 0.42 0 0
i "GM_Alto_Sax"  125.2083  0.1146  67  57 0 0.62 0 0
i "GM_Slap_Bass_1"  125.2083  0.1917  44  83 0 0.50 0 0
i "GM_Standard_Kit"  125.2083  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"  125.2083  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  125.2083  0.2500  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  125.2083  0.1146  70  62 0 0.35 0 0
i "GM_Trombone"  125.2083  0.1146  58  55 0 0.28 0 0
i "GM_Trumpet"  125.2083  0.1146  79  62 0 0.72 0 0
i "GM_Piccolo"  125.3125  0.0990  96  91 0 0.44 0 0
i "GM_Slap_Bass_1"  125.4167  0.1917  42  71 0 0.50 0 0
i "GM_Standard_Kit"  125.4167  0.1500  42  42 0 0.35 0 0
i "GM_Electric_Piano_1"  125.4187  0.1458  67  60 0 0.42 0 0
i "GM_Electric_Piano_1"  125.4206  0.1458  63  65 0 0.42 0 0
i "GM_Electric_Piano_1"  125.4208  0.1458  56  61 0 0.42 0 0
i "GM_Electric_Piano_1"  125.4211  0.1458  60  57 0 0.42 0 0
i "GM_Alto_Sax"  125.5208  0.1146  71  56 0 0.62 0 0
i "GM_Tenor_Sax"  125.5208  0.1146  65  62 0 0.35 0 0
i "GM_Trombone"  125.5208  0.1146  62  54 0 0.28 0 0
i "GM_Trumpet"  125.5208  0.1146  79  61 0 0.72 0 0
i "GM_Piccolo"  125.6250  0.3958  99  98 0 0.44 0 0
i "GM_Slap_Bass_1"  125.6250  0.1917  51  83 0 0.50 0 0
i "GM_Standard_Kit"  125.6250  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"  125.6250  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"  125.6250  0.2500  51  46 0 0.70 0 0
i "GM_Electric_Piano_1"  125.7298  0.1458  60  61 0 0.42 0 0
i "GM_Electric_Piano_1"  125.7304  0.1458  63  66 0 0.42 0 0
i "GM_Electric_Piano_1"  125.7364  0.1458  67  62 0 0.42 0 0
i "GM_Electric_Piano_1"  125.7368  0.1458  56  63 0 0.42 0 0
i "GM_Standard_Kit"  125.8333  0.1500  42  45 0 0.35 0 0
i "GM_Alto_Sax"  126.0417  0.1146  67  62 0 0.62 0 0
i "GM_Slap_Bass_1"  126.0417  0.1917  47  85 0 0.50 0 0
i "GM_Standard_Kit"  126.0417  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"  126.0417  0.2000  38  75 0 0.48 0 0
i "GM_Standard_Kit"  126.0417  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  126.0417  0.2500  51  49 0 0.70 0 0
i "GM_Tenor_Sax"  126.0417  0.1146  65  61 0 0.35 0 0
i "GM_Trombone"  126.0417  0.1146  67  57 0 0.28 0 0
i "GM_Trumpet"  126.0417  0.1146  79  57 0 0.72 0 0
i "GM_Piccolo"  126.1458  0.0990  99  93 0 0.44 0 0
i "GM_Slap_Bass_1"  126.2500  0.1917  46  70 0 0.50 0 0
i "GM_Standard_Kit"  126.2500  0.1500  46  42 0 0.35 0 0
i "GM_Electric_Piano_1"  126.2511  0.1458  63  64 0 0.42 0 0
i "GM_Electric_Piano_1"  126.2558  0.1458  72  63 0 0.42 0 0
i "GM_Electric_Piano_1"  126.2568  0.1458  56  56 0 0.42 0 0
i "GM_Electric_Piano_1"  126.2577  0.1458  67  61 0 0.42 0 0
i "GM_Slap_Bass_1"  126.4583  0.1917  39  85 0 0.50 0 0
i "GM_Standard_Kit"  126.4583  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"  126.4583  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"  126.4583  0.2500  51  47 0 0.70 0 0
i "GM_Flute"  126.6667  0.1833  75  96 0 0.62 0 0
i "GM_Standard_Kit"  126.6667  0.1500  42  42 0 0.35 0 0
i "GM_Electric_Piano_1"  126.6668  0.1458  62  60 0 0.42 0 0
i "GM_Electric_Piano_1"  126.6701  0.1458  58  60 0 0.42 0 0
i "GM_Electric_Piano_1"  126.6711  0.1458  51  64 0 0.42 0 0
i "GM_Electric_Piano_1"  126.6719  0.1458  67  64 0 0.42 0 0
i "GM_Flute"  126.8750  0.3667  79 103 0 0.62 0 0
i "GM_Slap_Bass_1"  126.8750  0.1917  42  78 0 0.50 0 0
i "GM_Standard_Kit"  126.8750  0.2000  38  81 0 0.48 0 0
i "GM_Standard_Kit"  126.8750  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"  126.8750  0.2500  51  48 0 0.70 0 0
i "GM_Alto_Sax"  126.9792  0.1146  78  55 0 0.62 0 0
i "GM_Tenor_Sax"  126.9792  0.1146  72  56 0 0.35 0 0
i "GM_Trombone"  126.9792  0.1146  65  60 0 0.28 0 0
i "GM_Trumpet"  126.9792  0.1146  81  60 0 0.72 0 0
i "GM_Slap_Bass_1"  127.0833  0.1917  41  74 0 0.50 0 0
i "GM_Standard_Kit"  127.0833  0.1500  42  40 0 0.35 0 0
i "GM_Electric_Piano_1"  127.0839  0.1458  51  57 0 0.42 0 0
i "GM_Electric_Piano_1"  127.0897  0.1458  58  60 0 0.42 0 0
i "GM_Electric_Piano_1"  127.0897  0.1458  62  66 0 0.42 0 0
i "GM_Electric_Piano_1"  127.0904  0.1458  67  57 0 0.42 0 0
i "GM_Flute"  127.2917  0.1833  74  99 0 0.62 0 0
i "GM_Slap_Bass_1"  127.2917  0.1917  39  85 0 0.50 0 0
i "GM_Standard_Kit"  127.2917  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"  127.2917  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  127.2917  0.2500  51  49 0 0.70 0 0
i "GM_Electric_Piano_1"  127.3986  0.1458  58  66 0 0.42 0 0
i "GM_Electric_Piano_1"  127.4012  0.1458  62  65 0 0.42 0 0
i "GM_Electric_Piano_1"  127.4025  0.1458  65  58 0 0.42 0 0
i "GM_Electric_Piano_1"  127.4030  0.1458  69  57 0 0.42 0 0
i "GM_Flute"  127.5000  0.1833  75  87 0 0.62 0 0
i "GM_Slap_Bass_1"  127.5000  0.1917  46  76 0 0.50 0 0
i "GM_Standard_Kit"  127.5000  0.1500  42  41 0 0.35 0 0
i "GM_Alto_Sax"  127.7083  0.1146  71  59 0 0.62 0 0
i "GM_Flute"  127.7083  0.3667  81  93 0 0.62 0 0
i "GM_Slap_Bass_1"  127.7083  0.1917  49  82 0 0.50 0 0
i "GM_Standard_Kit"  127.7083  0.2000  38  72 0 0.48 0 0
i "GM_Standard_Kit"  127.7083  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  127.7083  0.2500  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  127.7083  0.1146  72  61 0 0.35 0 0
i "GM_Trombone"  127.7083  0.1146  69  62 0 0.28 0 0
i "GM_Trumpet"  127.7083  0.1146  81  58 0 0.72 0 0
i "GM_Alto_Sax"  127.9167  0.1146  71  62 0 0.62 0 0
i "GM_Slap_Bass_1"  127.9167  0.1917  51  72 0 0.50 0 0
i "GM_Standard_Kit"  127.9167  0.1500  46  39 0 0.35 0 0
i "GM_Tenor_Sax"  127.9167  0.1146  72  56 0 0.35 0 0
i "GM_Trombone"  127.9167  0.1146  65  57 0 0.28 0 0
i "GM_Trumpet"  127.9167  0.1146  74  59 0 0.72 0 0
i "GM_Electric_Piano_1"  127.9185  0.1458  58  61 0 0.42 0 0
i "GM_Electric_Piano_1"  127.9203  0.1458  69  56 0 0.42 0 0
i "GM_Electric_Piano_1"  127.9220  0.1458  65  58 0 0.42 0 0
i "GM_Electric_Piano_1"  127.9232  0.1458  62  60 0 0.42 0 0
i "GM_Recorder"  128.1250  0.5500  74 101 0 0.23 0 0
i "GM_Slap_Bass_1"  128.1250  0.1917  46  82 0 0.50 0 0
i "GM_Standard_Kit"  128.1250  0.2500  36  74 0 0.50 0 0
i "GM_Standard_Kit"  128.1250  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  128.1250  0.2500  51  49 0 0.70 0 0
i "GM_Slap_Bass_1"  128.3333  0.1917  41  70 0 0.50 0 0
i "GM_Standard_Kit"  128.3333  0.1500  42  42 0 0.35 0 0
i "GM_Alto_Sax"  128.5417  0.1146  73  58 0 0.62 0 0
i "GM_Slap_Bass_1"  128.5417  0.1917  46  80 0 0.50 0 0
i "GM_Standard_Kit"  128.5417  0.2000  38  83 0 0.48 0 0
i "GM_Standard_Kit"  128.5417  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  128.5417  0.2500  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  128.5417  0.1146  63  59 0 0.35 0 0
i "GM_Trombone"  128.5417  0.1146  69  58 0 0.28 0 0
i "GM_Trumpet"  128.5417  0.1146  72  61 0 0.72 0 0
i "GM_Electric_Piano_1"  128.5450  0.1458  69  65 0 0.42 0 0
i "GM_Electric_Piano_1"  128.5453  0.1458  74  56 0 0.42 0 0
i "GM_Electric_Piano_1"  128.5473  0.1458  58  60 0 0.42 0 0
i "GM_Electric_Piano_1"  128.5490  0.1458  65  63 0 0.42 0 0
i "GM_Recorder"  128.7500  0.1833  72  92 0 0.23 0 0
i "GM_Slap_Bass_1"  128.7500  0.1917  44  69 0 0.50 0 0
i "GM_Standard_Kit"  128.7500  0.1500  42  39 0 0.35 0 0
i "GM_Alto_Sax"  128.8542  0.1146  73  55 0 0.62 0 0
i "GM_Tenor_Sax"  128.8542  0.1146  63  61 0 0.35 0 0
i "GM_Trombone"  128.8542  0.1146  69  62 0 0.28 0 0
i "GM_Trumpet"  128.8542  0.1146  72  57 0 0.72 0 0
i "GM_Electric_Piano_1"  128.8548  0.1458  69  62 0 0.42 0 0
i "GM_Electric_Piano_1"  128.8587  0.1458  58  62 0 0.42 0 0
i "GM_Electric_Piano_1"  128.8591  0.1458  62  56 0 0.42 0 0
i "GM_Electric_Piano_1"  128.8619  0.1458  65  63 0 0.42 0 0
i "GM_Recorder"  128.9583  0.3667  70 105 0 0.23 0 0
i "GM_Slap_Bass_1"  128.9583  0.1917  41  82 0 0.50 0 0
i "GM_Standard_Kit"  128.9583  0.2500  36  74 0 0.50 0 0
i "GM_Standard_Kit"  128.9583  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  128.9583  0.2500  51  49 0 0.70 0 0
i "GM_Slap_Bass_1"  129.1667  0.1917  51  73 0 0.50 0 0
i "GM_Standard_Kit"  129.1667  0.1500  42  39 0 0.35 0 0
i "GM_Alto_Sax"  129.3750  0.1146  73  56 0 0.62 0 0
i "GM_Recorder"  129.3750  0.1833  72  89 0 0.23 0 0
i "GM_Slap_Bass_1"  129.3750  0.1917  49  82 0 0.50 0 0
i "GM_Standard_Kit"  129.3750  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"  129.3750  0.2000  38  73 0 0.48 0 0
i "GM_Standard_Kit"  129.3750  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  129.3750  0.2500  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  129.3750  0.1146  63  58 0 0.35 0 0
i "GM_Trombone"  129.3750  0.1146  64  54 0 0.28 0 0
i "GM_Trumpet"  129.3750  0.1146  76  55 0 0.72 0 0
i "GM_Electric_Piano_1"  129.3769  0.1458  74  65 0 0.42 0 0
i "GM_Electric_Piano_1"  129.3789  0.1458  58  56 0 0.42 0 0
i "GM_Electric_Piano_1"  129.3801  0.1458  65  58 0 0.42 0 0
i "GM_Electric_Piano_1"  129.3825  0.1458  69  61 0 0.42 0 0
i "GM_Recorder"  129.5833  0.1833  63  95 0 0.23 0 0
i "GM_Slap_Bass_1"  129.5833  0.1917  48  74 0 0.50 0 0
i "GM_Standard_Kit"  129.5833  0.1500  46  41 0 0.35 0 0
i "GM_Pan_Flute"  129.7917  0.3667  73 104 0 0.41 0 0
i "GM_Slap_Bass_1"  129.7917  0.1917  45  84 0 0.50 0 0
i "GM_Standard_Kit"  129.7917  0.2500  36  74 0 0.50 0 0
i "GM_Standard_Kit"  129.7917  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  129.7917  0.2500  51  47 0 0.70 0 0
i "GM_Alto_Sax"  130.0000  0.1146  68  57 0 0.62 0 0
i "GM_Slap_Bass_1"  130.0000  0.1917  52  72 0 0.50 0 0
i "GM_Standard_Kit"  130.0000  0.1500  42  40 0 0.35 0 0
i "GM_Tenor_Sax"  130.0000  0.1146  65  54 0 0.35 0 0
i "GM_Trombone"  130.0000  0.1146  59  61 0 0.28 0 0
i "GM_Trumpet"  130.0000  0.1146  74  57 0 0.72 0 0
i "GM_Pan_Flute"  130.2083  0.1833  79 103 0 0.41 0 0
i "GM_Slap_Bass_1"  130.2083  0.1917  45  80 0 0.50 0 0
i "GM_Standard_Kit"  130.2083  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"  130.2083  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  130.2083  0.2500  51  51 0 0.70 0 0
i "GM_Electric_Piano_1"  130.3144  0.1458  67  61 0 0.42 0 0
i "GM_Electric_Piano_1"  130.3163  0.1458  64  60 0 0.42 0 0
i "GM_Electric_Piano_1"  130.3167  0.1458  73  60 0 0.42 0 0
i "GM_Electric_Piano_1"  130.3189  0.1458  57  62 0 0.42 0 0
i "GM_Alto_Sax"  130.4167  0.1146  68  59 0 0.62 0 0
i "GM_Pan_Flute"  130.4167  0.1833  78  92 0 0.41 0 0
i "GM_Slap_Bass_1"  130.4167  0.1917  43  70 0 0.50 0 0
i "GM_Standard_Kit"  130.4167  0.1500  42  44 0 0.35 0 0
i "GM_Tenor_Sax"  130.4167  0.1146  65  62 0 0.35 0 0
i "GM_Trombone"  130.4167  0.1146  62  56 0 0.28 0 0
i "GM_Trumpet"  130.4167  0.1146  74  57 0 0.72 0 0
i "GM_Pan_Flute"  130.6250  0.1833  79 103 0 0.41 0 0
i "GM_Slap_Bass_1"  130.6250  0.1917  52  85 0 0.50 0 0
i "GM_Standard_Kit"  130.6250  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"  130.6250  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  130.6250  0.2500  51  46 0 0.70 0 0
i "GM_Alto_Sax"  130.7292  0.1146  68  54 0 0.62 0 0
i "GM_Tenor_Sax"  130.7292  0.1146  65  61 0 0.35 0 0
i "GM_Trombone"  130.7292  0.1146  59  60 0 0.28 0 0
i "GM_Trumpet"  130.7292  0.1146  74  60 0 0.72 0 0
i "GM_Pan_Flute"  130.8333  0.1833  79  96 0 0.41 0 0
i "GM_Slap_Bass_1"  130.8333  0.1917  50  76 0 0.50 0 0
i "GM_Standard_Kit"  130.8333  0.1500  42  43 0 0.35 0 0
i "GM_Pan_Flute"  131.0417  0.1833  85  89 0 0.41 0 0
i "GM_Slap_Bass_1"  131.0417  0.1917  48  78 0 0.50 0 0
i "GM_Standard_Kit"  131.0417  0.2000  38  70 0 0.48 0 0
i "GM_Standard_Kit"  131.0417  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"  131.0417  0.2500  51  49 0 0.70 0 0
i "GM_Electric_Piano_1"  131.0446  0.1458  61  56 0 0.42 0 0
i "GM_Electric_Piano_1"  131.0448  0.1458  64  60 0 0.42 0 0
i "GM_Electric_Piano_1"  131.0448  0.1458  57  56 0 0.42 0 0
i "GM_Electric_Piano_1"  131.0460  0.1458  67  56 0 0.42 0 0
i "GM_Alto_Sax"  131.2500  0.1146  77  62 0 0.62 0 0
i "GM_Pan_Flute"  131.2500  0.1833  79  95 0 0.41 0 0
i "GM_Standard_Kit"  131.2500  0.1500  46  45 0 0.35 0 0
i "GM_Tenor_Sax"  131.2500  0.1146  65  61 0 0.35 0 0
i "GM_Trombone"  131.2500  0.1146  62  56 0 0.28 0 0
i "GM_Trumpet"  131.2500  0.1146  80  58 0 0.72 0 0
i "GM_Electric_Piano_1"  131.2546  0.1458  57  65 0 0.42 0 0
i "GM_Electric_Piano_1"  131.2550  0.1458  61  57 0 0.42 0 0
i "GM_Electric_Piano_1"  131.2552  0.1458  64  61 0 0.42 0 0
i "GM_Electric_Piano_1"  131.2564  0.1458  55  57 0 0.42 0 0
i "GM_Alto_Sax"  131.4583  0.1146  75  55 0 0.62 0 0
i "GM_Blown_Bottle"  131.4583  0.1833  64  99 0 0.59 0 0
i "GM_Slap_Bass_1"  131.4583  0.1917  40  82 0 0.50 0 0
i "GM_Standard_Kit"  131.4583  0.2500  36  76 0 0.50 0 0
i "GM_Standard_Kit"  131.4583  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  131.4583  0.2500  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  131.4583  0.1146  72  55 0 0.35 0 0
i "GM_Trombone"  131.4583  0.1146  66  55 0 0.28 0 0
i "GM_Trumpet"  131.4583  0.1146  74  55 0 0.72 0 0
i "GM_Blown_Bottle"  131.6667  0.1833  59  89 0 0.59 0 0
i "GM_Slap_Bass_1"  131.6667  0.1917  40  72 0 0.50 0 0
i "GM_Standard_Kit"  131.6667  0.1500  42  44 0 0.35 0 0
i "GM_Slap_Bass_1"  131.8750  0.1917  43  79 0 0.50 0 0
i "GM_Standard_Kit"  131.8750  0.2000  38  80 0 0.48 0 0
i "GM_Standard_Kit"  131.8750  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  131.8750  0.2500  51  46 0 0.70 0 0
i "GM_Alto_Sax"  131.9792  0.1146  71  61 0 0.62 0 0
i "GM_Blown_Bottle"  131.9792  0.0917  59  92 0 0.59 0 0
i "GM_Standard_Kit"  131.9792  0.2500  36  76 0 0.50 0 0
i "GM_Tenor_Sax"  131.9792  0.1146  69  61 0 0.35 0 0
i "GM_Trombone"  131.9792  0.1146  69  61 0 0.28 0 0
i "GM_Trumpet"  131.9792  0.1146  81  61 0 0.72 0 0
i "GM_Electric_Piano_1"  131.9801  0.1458  62  56 0 0.42 0 0
i "GM_Electric_Piano_1"  131.9822  0.1458  67  57 0 0.42 0 0
i "GM_Electric_Piano_1"  131.9843  0.1458  52  57 0 0.42 0 0
i "GM_Electric_Piano_1"  131.9871  0.1458  59  65 0 0.42 0 0
i "GM_Blown_Bottle"  132.0833  0.1833  59  91 0 0.59 0 0
i "GM_Slap_Bass_1"  132.0833  0.1917  45  68 0 0.50 0 0
i "GM_Standard_Kit"  132.0833  0.1500  42  41 0 0.35 0 0
i "GM_Blown_Bottle"  132.2917  0.1833  59  99 0 0.59 0 0
i "GM_Slap_Bass_1"  132.2917  0.1917  47  79 0 0.50 0 0
i "GM_Standard_Kit"  132.2917  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"  132.2917  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  132.2917  0.2500  51  51 0 0.70 0 0
i "GM_Blown_Bottle"  132.5000  0.1833  62  87 0 0.59 0 0
i "GM_Standard_Kit"  132.5000  0.1500  42  44 0 0.35 0 0
i "GM_Alto_Sax"  132.6042  0.1146  71  58 0 0.62 0 0
i "GM_Tenor_Sax"  132.6042  0.1146  69  61 0 0.35 0 0
i "GM_Trombone"  132.6042  0.1146  69  61 0 0.28 0 0
i "GM_Trumpet"  132.6042  0.1146  74  59 0 0.72 0 0
i "GM_Slap_Bass_1"  132.7083  0.1917  47  82 0 0.50 0 0
i "GM_Standard_Kit"  132.7083  0.2500  36  71 0 0.50 0 0
i "GM_Standard_Kit"  132.7083  0.2000  38  75 0 0.48 0 0
i "GM_Standard_Kit"  132.7083  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  132.7083  0.2500  51  50 0 0.70 0 0
i "GM_Electric_Piano_1"  132.7104  0.1458  64  62 0 0.42 0 0
i "GM_Electric_Piano_1"  132.7115  0.1458  71  63 0 0.42 0 0
i "GM_Electric_Piano_1"  132.7134  0.1458  62  59 0 0.42 0 0
i "GM_Electric_Piano_1"  132.7139  0.1458  67  59 0 0.42 0 0
i "GM_Blown_Bottle"  132.8125  0.0917  62  87 0 0.59 0 0
i "GM_Blown_Bottle"  132.9167  0.1833  55  94 0 0.59 0 0
i "GM_Standard_Kit"  132.9167  0.1500  46  42 0 0.35 0 0
i "GM_Electric_Piano_1"  132.9225  0.1458  67  63 0 0.42 0 0
i "GM_Electric_Piano_1"  132.9226  0.1458  62  62 0 0.42 0 0
i "GM_Electric_Piano_1"  132.9233  0.1458  52  61 0 0.42 0 0
i "GM_Electric_Piano_1"  132.9245  0.1458  59  56 0 0.42 0 0
i "GM_Shakuhachi"  133.1250  0.3667  72 101 0 0.78 0 0
i "GM_Slap_Bass_1"  133.1250  0.1917  36  82 0 0.50 0 0
i "GM_Standard_Kit"  133.1250  0.2500  36  72 0 0.50 0 0
i "GM_Standard_Kit"  133.1250  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  133.1250  0.2500  51  49 0 0.70 0 0
i "GM_Alto_Sax"  133.3333  0.1146  75  58 0 0.62 0 0
i "GM_Standard_Kit"  133.3333  0.1500  42  40 0 0.35 0 0
i "GM_Tenor_Sax"  133.3333  0.1146  62  59 0 0.35 0 0
i "GM_Trombone"  133.3333  0.1146  62  54 0 0.28 0 0
i "GM_Trumpet"  133.3333  0.1146  71  58 0 0.72 0 0
i "GM_Electric_Piano_1"  133.3363  0.1458  60  59 0 0.42 0 0
i "GM_Electric_Piano_1"  133.3376  0.1458  71  60 0 0.42 0 0
i "GM_Electric_Piano_1"  133.3392  0.1458  67  66 0 0.42 0 0
i "GM_Electric_Piano_1"  133.3408  0.1458  64  64 0 0.42 0 0
i "GM_Shakuhachi"  133.5417  0.3667  71 101 0 0.78 0 0
i "GM_Slap_Bass_1"  133.5417  0.1917  43  86 0 0.50 0 0
i "GM_Standard_Kit"  133.5417  0.2000  38  85 0 0.48 0 0
i "GM_Standard_Kit"  133.5417  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  133.5417  0.2500  51  50 0 0.70 0 0
i "GM_Standard_Kit"  133.6458  0.2500  36  74 0 0.50 0 0
i "GM_Alto_Sax"  133.7500  0.1146  75  55 0 0.62 0 0
i "GM_Standard_Kit"  133.7500  0.1500  42  43 0 0.35 0 0
i "GM_Tenor_Sax"  133.7500  0.1146  65  56 0 0.35 0 0
i "GM_Trombone"  133.7500  0.1146  66  55 0 0.28 0 0
i "GM_Trumpet"  133.7500  0.1146  71  55 0 0.72 0 0
i "GM_Electric_Piano_1"  133.7510  0.1458  67  58 0 0.42 0 0
i "GM_Electric_Piano_1"  133.7528  0.1458  64  58 0 0.42 0 0
i "GM_Electric_Piano_1"  133.7529  0.1458  60  60 0 0.42 0 0
i "GM_Electric_Piano_1"  133.7573  0.1458  71  66 0 0.42 0 0
i "GM_Slap_Bass_1"  133.9583  0.1917  39  85 0 0.50 0 0
i "GM_Standard_Kit"  133.9583  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  133.9583  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"  133.9583  0.2500  51  49 0 0.70 0 0
i "GM_Alto_Sax"  134.0625  0.1146  71  55 0 0.62 0 0
i "GM_Tenor_Sax"  134.0625  0.1146  69  55 0 0.35 0 0
i "GM_Trombone"  134.0625  0.1146  62  55 0 0.28 0 0
i "GM_Trumpet"  134.0625  0.1146  78  62 0 0.72 0 0
i "GM_Electric_Piano_1"  134.0651  0.1458  62  56 0 0.42 0 0
i "GM_Electric_Piano_1"  134.0664  0.1458  59  61 0 0.42 0 0
i "GM_Electric_Piano_1"  134.0690  0.1458  55  64 0 0.42 0 0
i "GM_Electric_Piano_1"  134.0701  0.1458  54  64 0 0.42 0 0
i "GM_Shakuhachi"  134.1667  0.1833  62  88 0 0.78 0 0
i "GM_Slap_Bass_1"  134.1667  0.1917  38  75 0 0.50 0 0
i "GM_Standard_Kit"  134.1667  0.1500  42  43 0 0.35 0 0
i "GM_Shakuhachi"  134.3750  0.3667  62  96 0 0.78 0 0
i "GM_Slap_Bass_1"  134.3750  0.1917  36  82 0 0.50 0 0
i "GM_Standard_Kit"  134.3750  0.2000  38  76 0 0.48 0 0
i "GM_Standard_Kit"  134.3750  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"  134.3750  0.2500  51  50 0 0.70 0 0
i "GM_Alto_Sax"  134.5833  0.1146  75  56 0 0.62 0 0
i "GM_Standard_Kit"  134.5833  0.1500  46  39 0 0.35 0 0
i "GM_Tenor_Sax"  134.5833  0.1146  69  55 0 0.35 0 0
i "GM_Trombone"  134.5833  0.1146  66  56 0 0.28 0 0
i "GM_Trumpet"  134.5833  0.1146  71  61 0 0.72 0 0
i "GM_Electric_Piano_1"  134.5842  0.1458  55  61 0 0.42 0 0
i "GM_Electric_Piano_1"  134.5857  0.1458  62  56 0 0.42 0 0
i "GM_Electric_Piano_1"  134.5864  0.1458  71  59 0 0.42 0 0
i "GM_Electric_Piano_1"  134.5868  0.1458  66  60 0 0.42 0 0
i "GM_Slap_Bass_1"  134.7917  0.1917  43  85 0 0.50 0 0
i "GM_Standard_Kit"  134.7917  0.2500  36  71 0 0.50 0 0
i "GM_Standard_Kit"  134.7917  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"  134.7917  0.2500  51  50 0 0.70 0 0
i "GM_Whistle"  134.7917  0.3958  86  97 0 0.39 0 0
i "GM_Standard_Kit"  135.0000  0.1500  42  42 0 0.35 0 0
i "GM_Electric_Piano_1"  135.0012  0.1458  59  62 0 0.42 0 0
i "GM_Electric_Piano_1"  135.0023  0.1458  62  66 0 0.42 0 0
i "GM_Electric_Piano_1"  135.0067  0.1458  55  63 0 0.42 0 0
i "GM_Electric_Piano_1"  135.0073  0.1458  54  63 0 0.42 0 0
i "GM_Slap_Bass_1"  135.2083  0.1917  46  86 0 0.50 0 0
i "GM_Standard_Kit"  135.2083  0.2000  38  83 0 0.48 0 0
i "GM_Standard_Kit"  135.2083  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  135.2083  0.2500  51  50 0 0.70 0 0
i "GM_Alto_Sax"  135.3125  0.1146  70  57 0 0.62 0 0
i "GM_Tenor_Sax"  135.3125  0.1146  72  57 0 0.35 0 0
i "GM_Trombone"  135.3125  0.1146  61  58 0 0.28 0 0
i "GM_Trumpet"  135.3125  0.1146  73  62 0 0.72 0 0
i "GM_Whistle"  135.3125  0.0990  84  88 0 0.39 0 0
i "GM_Slap_Bass_1"  135.4167  0.1917  48  73 0 0.50 0 0
i "GM_Standard_Kit"  135.4167  0.1500  42  39 0 0.35 0 0
i "GM_Electric_Piano_1"  135.4174  0.1458  55  62 0 0.42 0 0
i "GM_Electric_Piano_1"  135.4184  0.1458  62  62 0 0.42 0 0
i "GM_Electric_Piano_1"  135.4203  0.1458  71  65 0 0.42 0 0
i "GM_Electric_Piano_1"  135.4243  0.1458  66  66 0 0.42 0 0
i "GM_Slap_Bass_1"  135.6250  0.1917  50  80 0 0.50 0 0
i "GM_Standard_Kit"  135.6250  0.2500  36  74 0 0.50 0 0
i "GM_Standard_Kit"  135.6250  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  135.6250  0.2500  51  49 0 0.70 0 0
i "GM_Whistle"  135.6250  0.3958  79 102 0 0.39 0 0
i "GM_Electric_Piano_1"  135.7292  0.1458  71  59 0 0.42 0 0
i "GM_Electric_Piano_1"  135.7303  0.1458  66  59 0 0.42 0 0
i "GM_Electric_Piano_1"  135.7312  0.1458  62  66 0 0.42 0 0
i "GM_Electric_Piano_1"  135.7330  0.1458  55  64 0 0.42 0 0
i "GM_Slap_Bass_1"  135.8333  0.1917  41  76 0 0.50 0 0
i "GM_Standard_Kit"  135.8333  0.1500  42  44 0 0.35 0 0
i "GM_Alto_Sax"  136.0417  0.1146  78  61 0 0.62 0 0
i "GM_Slap_Bass_1"  136.0417  0.1917  50  81 0 0.50 0 0
i "GM_Standard_Kit"  136.0417  0.2500  36  71 0 0.50 0 0
i "GM_Standard_Kit"  136.0417  0.2000  38  70 0 0.48 0 0
i "GM_Standard_Kit"  136.0417  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"  136.0417  0.2500  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  136.0417  0.1146  69  56 0 0.35 0 0
i "GM_Trombone"  136.0417  0.1146  69  54 0 0.28 0 0
i "GM_Trumpet"  136.0417  0.1146  81  55 0 0.72 0 0
i "GM_Whistle"  136.1458  0.0990  81  92 0 0.39 0 0
i "GM_Alto_Sax"  136.2500  0.1146  70  54 0 0.62 0 0
i "GM_Slap_Bass_1"  136.2500  0.1917  48  72 0 0.50 0 0
i "GM_Standard_Kit"  136.2500  0.1500  46  39 0 0.35 0 0
i "GM_Tenor_Sax"  136.2500  0.1146  72  60 0 0.35 0 0
i "GM_Trombone"  136.2500  0.1146  69  62 0 0.28 0 0
i "GM_Trumpet"  136.2500  0.1146  81  56 0 0.72 0 0
i "GM_Electric_Piano_1"  136.2548  0.1458  55  64 0 0.42 0 0
i "GM_Electric_Piano_1"  136.2556  0.1458  62  60 0 0.42 0 0
i "GM_Electric_Piano_1"  136.2563  0.1458  71  66 0 0.42 0 0
i "GM_Electric_Piano_1"  136.2564  0.1458  66  59 0 0.42 0 0
i "GM_Ocarina"  136.4583  0.1833  78 105 0 0.57 0 0
i "GM_Slap_Bass_1"  136.4583  0.1917  38  85 0 0.50 0 0
i "GM_Standard_Kit"  136.4583  0.2500  36  74 0 0.50 0 0
i "GM_Standard_Kit"  136.4583  0.1500  42  56 0 0.35 0 0
i "GM_Slap_Bass_1"  136.6667  0.1917  38  68 0 0.50 0 0
i "GM_Standard_Kit"  136.6667  0.1500  42  40 0 0.35 0 0
i "GM_Electric_Piano_1"  136.6672  0.1146  66  65 0 0.42 0 0
i "GM_Electric_Piano_1"  136.6691  0.1146  62  59 0 0.42 0 0
i "GM_Electric_Piano_1"  136.6692  0.1146  69  61 0 0.42 0 0
i "GM_Electric_Piano_1"  136.6696  0.1146  60  64 0 0.42 0 0
i "GM_Ocarina"  136.7708  0.0917  83  89 0 0.57 0 0
i "GM_Ocarina"  136.8750  0.1833  90  96 0 0.57 0 0
i "GM_Slap_Bass_1"  136.8750  0.1917  41  86 0 0.50 0 0
i "GM_Standard_Kit"  136.8750  0.2000  38  83 0 0.48 0 0
i "GM_Standard_Kit"  136.8750  0.1500  42  53 0 0.35 0 0
i "GM_Ocarina"  137.0833  0.1833  90  87 0 0.57 0 0
i "GM_Slap_Bass_1"  137.0833  0.1917  43  73 0 0.50 0 0
i "GM_Standard_Kit"  137.0833  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"  137.0833  0.1500  42  45 0 0.35 0 0
i "GM_Standard_Kit"  137.0833  0.1800  50  80 0 0.40 0 0
i "GM_Electric_Piano_1"  137.0850  0.1146  62  65 0 0.42 0 0
i "GM_Electric_Piano_1"  137.0873  0.1146  60  61 0 0.42 0 0
i "GM_Electric_Piano_1"  137.0888  0.1146  69  63 0 0.42 0 0
i "GM_Electric_Piano_1"  137.0897  0.1146  66  63 0 0.42 0 0
i "GM_Ocarina"  137.2917  0.1833  88  97 0 0.57 0 0
i "GM_Slap_Bass_1"  137.2917  0.1917  45  85 0 0.50 0 0
i "GM_Standard_Kit"  137.2917  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  137.2917  0.1800  48  87 0 0.44 0 0
i "GM_Electric_Piano_1"  137.3967  0.1146  62  62 0 0.42 0 0
i "GM_Electric_Piano_1"  137.4002  0.1146  69  63 0 0.42 0 0
i "GM_Electric_Piano_1"  137.4007  0.1146  72  65 0 0.42 0 0
i "GM_Electric_Piano_1"  137.4036  0.1146  66  57 0 0.42 0 0
i "GM_Slap_Bass_1"  137.5000  0.1917  48  75 0 0.50 0 0
i "GM_Standard_Kit"  137.5000  0.2000  38  80 0 0.48 0 0
i "GM_Standard_Kit"  137.5000  0.1500  42  42 0 0.35 0 0
i "GM_Standard_Kit"  137.5000  0.1800  47  76 0 0.48 0 0
i "GM_Ocarina"  137.6042  0.0917  81  85 0 0.57 0 0
i "GM_Ocarina"  137.7083  0.1833  79  91 0 0.57 0 0
i "GM_Slap_Bass_1"  137.7083  0.1917  45  86 0 0.50 0 0
i "GM_Standard_Kit"  137.7083  0.1500  46  51 0 0.35 0 0
i "GM_Standard_Kit"  137.7083  0.1800  45  80 0 0.52 0 0
i "GM_Standard_Kit"  137.7083  0.2000  49  82 0 0.70 0 0
i "GM_Standard_Kit"  137.9167  0.1200  42  38 0 0.35 0 0
i "GM_Lead_1_square"  138.1250  0.1833  72  89 0 0.75 0 0
i "GM_Lead_1_square"  138.3333  0.3667  64 105 0 0.75 0 0
i "GM_Standard_Kit"  138.3333  0.1200  42  38 0 0.35 0 0
i "GM_Lead_1_square"  138.7500  0.1833  65  99 0 0.75 0 0
i "GM_Standard_Kit"  138.7500  0.1200  42  38 0 0.35 0 0
i "GM_Lead_1_square"  138.9583  0.1833  64  91 0 0.75 0 0
i "GM_Lead_1_square"  139.1667  0.3667  65  87 0 0.75 0 0
i "GM_Standard_Kit"  139.1667  0.1200  42  38 0 0.35 0 0
i "GM_Lead_2_sawtooth"  139.5833  0.3667  76 105 0 0.37 0 0
i "GM_Standard_Kit"  139.5833  0.1200  42  38 0 0.35 0 0
i "GM_Lead_2_sawtooth"  140.0000  0.1833  69 103 0 0.37 0 0
i "GM_Standard_Kit"  140.0000  0.1200  42  38 0 0.35 0 0
i "GM_Lead_2_sawtooth"  140.2083  0.1833  70  92 0 0.37 0 0
i "GM_Lead_2_sawtooth"  140.4167  0.1833  67 103 0 0.37 0 0
i "GM_Standard_Kit"  140.4167  0.1200  42  38 0 0.35 0 0
i "GM_Lead_2_sawtooth"  140.6250  0.1833  72  89 0 0.37 0 0
i "GM_Lead_2_sawtooth"  140.8333  0.1833  69  97 0 0.37 0 0
i "GM_Standard_Kit"  140.8333  0.1200  42  38 0 0.35 0 0
i "GM_Lead_2_sawtooth"  141.0417  0.1833  69  95 0 0.37 0 0
i "GM_Lead_3_calliope"  141.2500  0.5500  79  95 0 0.55 0 0
i "GM_Standard_Kit"  141.2500  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  141.6667  0.1200  42  38 0 0.35 0 0
i "GM_Lead_3_calliope"  141.8750  0.1833  84  97 0 0.55 0 0
i "GM_Lead_3_calliope"  142.0833  0.3667  79  96 0 0.55 0 0
i "GM_Standard_Kit"  142.0833  0.1200  42  38 0 0.35 0 0
i "GM_Lead_3_calliope"  142.5000  0.1833  76  87 0 0.55 0 0
i "GM_Standard_Kit"  142.5000  0.1200  42  38 0 0.35 0 0
i "GM_Lead_3_calliope"  142.7083  0.1833  77  96 0 0.55 0 0
i "GM_Lead_4_chiff"  142.9167  0.1833  69  95 0 0.73 0 0
i "GM_Standard_Kit"  142.9167  0.1200  42  38 0 0.35 0 0
i "GM_Lead_4_chiff"  143.2292  0.0917  64  93 0 0.73 0 0
i "GM_Lead_4_chiff"  143.3333  0.1833  69 104 0 0.73 0 0
i "GM_Standard_Kit"  143.3333  0.1200  42  38 0 0.35 0 0
i "GM_Lead_4_chiff"  143.5417  0.1833  69  89 0 0.73 0 0
i "GM_Lead_4_chiff"  143.7500  0.1833  69  97 0 0.73 0 0
i "GM_Standard_Kit"  143.7500  0.1200  42  38 0 0.35 0 0
i "GM_Lead_4_chiff"  144.0625  0.0917  68  86 0 0.73 0 0
i "GM_Lead_4_chiff"  144.1667  0.3667  68  87 0 0.73 0 0
i "GM_Standard_Kit"  144.1667  0.1200  42  38 0 0.35 0 0
i "GM_Lead_5_charang"  144.5833  0.1833  65 101 0 0.35 0 0
i "GM_Standard_Kit"  144.5833  0.1200  42  38 0 0.35 0 0
i "GM_Lead_5_charang"  144.7917  0.1833  65  89 0 0.35 0 0
i "GM_Standard_Kit"  145.0000  0.1200  42  38 0 0.35 0 0
i "GM_Lead_5_charang"  145.1042  0.0917  64  93 0 0.35 0 0
i "GM_Lead_5_charang"  145.2083  0.1833  60  88 0 0.35 0 0
i "GM_Lead_5_charang"  145.4167  0.1833  60 101 0 0.35 0 0
i "GM_Standard_Kit"  145.4167  0.1200  42  38 0 0.35 0 0
i "GM_Lead_5_charang"  145.6250  0.1833  58  87 0 0.35 0 0
i "GM_Standard_Kit"  145.8333  0.1200  42  38 0 0.35 0 0
i "GM_Lead_5_charang"  145.9375  0.0917  60  92 0 0.35 0 0
i "GM_Lead_5_charang"  146.0417  0.1833  65  92 0 0.35 0 0
i "GM_Lead_6_voice"  146.2500  0.5500  69 100 0 0.53 0 0
i "GM_Standard_Kit"  146.2500  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  146.6667  0.1200  42  38 0 0.35 0 0
i "GM_Lead_6_voice"  146.8750  0.1833  67  90 0 0.53 0 0
i "GM_Lead_6_voice"  147.0833  0.3667  69 105 0 0.53 0 0
i "GM_Standard_Kit"  147.0833  0.1200  42  38 0 0.35 0 0
i "GM_Lead_6_voice"  147.5000  0.1833  64  96 0 0.53 0 0
i "GM_Standard_Kit"  147.5000  0.1200  42  38 0 0.35 0 0
i "GM_Lead_6_voice"  147.7083  0.1833  64  94 0 0.53 0 0
i "GM_Standard_Kit"  147.9167  0.1200  42  38 0 0.35 0 0
i "GM_Lead_7_fifths"  148.1250  0.1833  65  94 0 0.71 0 0
i "GM_Lead_7_fifths"  148.3333  0.3667  64  99 0 0.71 0 0
i "GM_Standard_Kit"  148.3333  0.1200  42  38 0 0.35 0 0
i "GM_Lead_7_fifths"  148.7500  0.1833  60 104 0 0.71 0 0
i "GM_Standard_Kit"  148.7500  0.1200  42  38 0 0.35 0 0
i "GM_Lead_7_fifths"  148.9583  0.1833  58  90 0 0.71 0 0
i "GM_Lead_7_fifths"  149.1667  0.3667  58  89 0 0.71 0 0
i "GM_Standard_Kit"  149.1667  0.1200  42  38 0 0.35 0 0
i "GM_Lead_8_bass_lead"  149.5833  0.1833  64  95 0 0.33 0 0
i "GM_Standard_Kit"  149.5833  0.1200  42  38 0 0.35 0 0
i "GM_Lead_8_bass_lead"  149.7917  0.1833  65  96 0 0.33 0 0
i "GM_Lead_8_bass_lead"  150.0000  0.1833  60  96 0 0.33 0 0
i "GM_Standard_Kit"  150.0000  0.1200  42  38 0 0.35 0 0
i "GM_Lead_8_bass_lead"  150.2083  0.1833  59  92 0 0.33 0 0
i "GM_Lead_8_bass_lead"  150.4167  0.3667  60  95 0 0.33 0 0
i "GM_Standard_Kit"  150.4167  0.1200  42  38 0 0.35 0 0
i "GM_Lead_8_bass_lead"  150.8333  0.1833  60  96 0 0.33 0 0
i "GM_Standard_Kit"  150.8333  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  150.8333  0.3500  49  86 0 0.70 0 0
i "GM_Pad_1_new_age"  151.0417  1.6333  56  72 0 0.51 0 0
i "GM_Pad_1_new_age"  151.0417  1.6333  63  72 0 0.51 0 0
i "GM_Pad_1_new_age"  151.0417  1.6333  67  72 0 0.51 0 0
i "GM_Pad_1_new_age"  151.0417  1.6333  72  72 0 0.51 0 0
i "GM_Standard_Kit"  151.0417  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  151.4583  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  151.8750  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  152.2917  0.1200  42  38 0 0.35 0 0
i "GM_Pad_2_warm"  152.7083  1.6333  51  72 0 0.69 0 0
i "GM_Pad_2_warm"  152.7083  1.6333  55  72 0 0.69 0 0
i "GM_Pad_2_warm"  152.7083  1.6333  58  72 0 0.69 0 0
i "GM_Pad_2_warm"  152.7083  1.6333  62  72 0 0.69 0 0
i "GM_Standard_Kit"  152.7083  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  153.1250  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  153.5417  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  153.9583  0.1200  42  38 0 0.35 0 0
i "GM_Pad_3_polysynth"  154.3750  1.6333  58  72 0 0.30 0 0
i "GM_Pad_3_polysynth"  154.3750  1.6333  62  72 0 0.30 0 0
i "GM_Pad_3_polysynth"  154.3750  1.6333  65  72 0 0.30 0 0
i "GM_Pad_3_polysynth"  154.3750  1.6333  69  72 0 0.30 0 0
i "GM_Standard_Kit"  154.3750  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  154.7917  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  155.2083  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  155.6250  0.1200  42  38 0 0.35 0 0
i "GM_Pad_4_choir"  156.0417  1.6333  57  72 0 0.48 0 0
i "GM_Pad_4_choir"  156.0417  1.6333  64  72 0 0.48 0 0
i "GM_Pad_4_choir"  156.0417  1.6333  67  72 0 0.48 0 0
i "GM_Pad_4_choir"  156.0417  1.6333  73  72 0 0.48 0 0
i "GM_Standard_Kit"  156.0417  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  156.4583  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  156.8750  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  157.2917  0.1200  42  38 0 0.35 0 0
i "GM_Pad_5_bowed"  157.7083  1.6333  52  72 0 0.67 0 0
i "GM_Pad_5_bowed"  157.7083  1.6333  59  72 0 0.67 0 0
i "GM_Pad_5_bowed"  157.7083  1.6333  62  72 0 0.67 0 0
i "GM_Pad_5_bowed"  157.7083  1.6333  67  72 0 0.67 0 0
i "GM_Standard_Kit"  157.7083  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  158.1250  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  158.5417  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  158.9583  0.1200  42  38 0 0.35 0 0
i "GM_Pad_6_metallic"  159.3750  1.6333  59  72 0 0.28 0 0
i "GM_Pad_6_metallic"  159.3750  1.6333  60  72 0 0.28 0 0
i "GM_Pad_6_metallic"  159.3750  1.6333  64  72 0 0.28 0 0
i "GM_Pad_6_metallic"  159.3750  1.6333  67  72 0 0.28 0 0
i "GM_Standard_Kit"  159.3750  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  159.7917  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  160.2083  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  160.6250  0.1200  42  38 0 0.35 0 0
i "GM_Pad_7_halo"  161.0417  1.6333  55  72 0 0.46 0 0
i "GM_Pad_7_halo"  161.0417  1.6333  59  72 0 0.46 0 0
i "GM_Pad_7_halo"  161.0417  1.6333  62  72 0 0.46 0 0
i "GM_Pad_7_halo"  161.0417  1.6333  66  72 0 0.46 0 0
i "GM_Standard_Kit"  161.0417  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  161.4583  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  161.8750  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  162.2917  0.1200  42  38 0 0.35 0 0
i "GM_Pad_8_sweep"  162.7083  1.4292  50  72 0 0.64 0 0
i "GM_Pad_8_sweep"  162.7083  1.4292  57  72 0 0.64 0 0
i "GM_Pad_8_sweep"  162.7083  1.4292  60  72 0 0.64 0 0
i "GM_Pad_8_sweep"  162.7083  1.4292  66  72 0 0.64 0 0
i "GM_Standard_Kit"  162.7083  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  163.1250  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  163.5417  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  163.9583  0.1200  42  38 0 0.35 0 0
i "GM_Standard_Kit"  163.9583  0.3500  49  86 0 0.70 0 0
i "GM_Electric_Bass_finger"  164.1667  0.1917  45  86 0 0.50 0 0
i "GM_FX_1_rain"  164.1667  1.5000  72  86 0 0.26 0 0
i "GM_Standard_Kit"  164.1667  0.2500  36  65 0 0.50 0 0
i "GM_Standard_Kit"  164.1667  0.1500  42  46 0 0.35 0 0
i "GM_Standard_Kit"  164.1667  0.5500  49  88 0 0.72 0 0
i "GM_Standard_Kit"  164.1667  0.4000  57  70 0 0.78 0 0
i "GM_Acoustic_Grand_Piano"  164.1674  0.1458  57  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  164.1681  0.1458  64  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  164.1698  0.1458  60  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  164.1710  0.1458  55  61 0 0.38 0 0
i "GM_Electric_Bass_finger"  164.3750  0.1917  48  68 0 0.50 0 0
i "GM_Standard_Kit"  164.3750  0.1500  42  39 0 0.35 0 0
i "GM_Electric_Bass_finger"  164.5833  0.1917  50  79 0 0.50 0 0
i "GM_Standard_Kit"  164.5833  0.2000  38  76 0 0.48 0 0
i "GM_Standard_Kit"  164.5833  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  164.6875  0.2500  36  64 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  164.6875  0.1458  60  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  164.6901  0.1458  55  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  164.6938  0.1458  57  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  164.6940  0.1458  64  61 0 0.38 0 0
i "GM_Standard_Kit"  164.7917  0.1500  42  39 0 0.35 0 0
i "GM_Electric_Bass_finger"  165.0000  0.1917  50  81 0 0.50 0 0
i "GM_FX_1_rain"  165.0000  0.6750  79  80 0 0.26 0 0
i "GM_Standard_Kit"  165.0000  0.2500  36  63 0 0.50 0 0
i "GM_Standard_Kit"  165.0000  0.1500  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"  165.2083  0.1917  48  72 0 0.50 0 0
i "GM_Standard_Kit"  165.2083  0.1500  42  38 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  165.3130  0.1458  57  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  165.3159  0.1458  72  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  165.3186  0.1458  64  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  165.3196  0.1458  67  60 0 0.38 0 0
i "GM_Electric_Bass_finger"  165.4167  0.1917  47  78 0 0.50 0 0
i "GM_Standard_Kit"  165.4167  0.2000  38  68 0 0.48 0 0
i "GM_Standard_Kit"  165.4167  0.1500  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"  165.6250  0.1917  45  72 0 0.50 0 0
i "GM_Standard_Kit"  165.6250  0.1500  46  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  165.8333  0.1917  41  81 0 0.50 0 0
i "GM_FX_2_soundtrack"  165.8333  1.6333  52  72 0 0.44 0 0
i "GM_FX_2_soundtrack"  165.8333  1.6333  53  72 0 0.44 0 0
i "GM_FX_2_soundtrack"  165.8333  1.6333  57  72 0 0.44 0 0
i "GM_FX_2_soundtrack"  165.8333  1.6333  60  72 0 0.44 0 0
i "GM_Standard_Kit"  165.8333  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"  165.8333  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  166.0417  0.1500  42  37 0 0.35 0 0
i "GM_Electric_Bass_finger"  166.2500  0.1917  41  83 0 0.50 0 0
i "GM_Standard_Kit"  166.2500  0.2000  38  77 0 0.48 0 0
i "GM_Standard_Kit"  166.2500  0.1500  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"  166.4583  0.1917  51  75 0 0.50 0 0
i "GM_Standard_Kit"  166.4583  0.1500  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  166.6667  0.1917  48  84 0 0.50 0 0
i "GM_Standard_Kit"  166.6667  0.2500  36  67 0 0.50 0 0
i "GM_Standard_Kit"  166.6667  0.1500  42  52 0 0.35 0 0
i "GM_Electric_Bass_finger"  166.8750  0.1917  46  73 0 0.50 0 0
i "GM_Standard_Kit"  166.8750  0.1500  42  37 0 0.35 0 0
i "GM_Electric_Bass_finger"  167.0833  0.1917  44  83 0 0.50 0 0
i "GM_Standard_Kit"  167.0833  0.2000  38  70 0 0.48 0 0
i "GM_Standard_Kit"  167.0833  0.1500  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"  167.2917  0.1917  43  69 0 0.50 0 0
i "GM_Standard_Kit"  167.2917  0.1500  46  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  167.5000  0.1917  36  84 0 0.50 0 0
i "GM_FX_3_crystal"  167.5000  0.3958  79 100 0 0.62 0 0
i "GM_Rock_Organ"  167.5000  1.6000  48  37 0 0.55 0 0
i "GM_Rock_Organ"  167.5000  1.6000  52  33 0 0.55 0 0
i "GM_Rock_Organ"  167.5000  1.6000  55  38 0 0.55 0 0
i "GM_Rock_Organ"  167.5000  1.6000  59  34 0 0.55 0 0
i "GM_Standard_Kit"  167.5000  0.2500  36  64 0 0.50 0 0
i "GM_Standard_Kit"  167.5000  0.1500  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  167.5032  0.1458  59  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  167.5039  0.1458  64  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  167.5058  0.1458  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  167.5073  0.1458  67  56 0 0.38 0 0
i "GM_Electric_Bass_finger"  167.7083  0.1917  36  73 0 0.50 0 0
i "GM_Standard_Kit"  167.7083  0.1500  42  41 0 0.35 0 0
i "GM_Electric_Bass_finger"  167.9167  0.1917  39  79 0 0.50 0 0
i "GM_Standard_Kit"  167.9167  0.2000  38  75 0 0.48 0 0
i "GM_Standard_Kit"  167.9167  0.1500  42  48 0 0.35 0 0
i "GM_FX_3_crystal"  168.0208  0.0990  81  93 0 0.62 0 0
i "GM_Standard_Kit"  168.0208  0.2500  36  63 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  168.0212  0.1458  64  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  168.0216  0.1458  60  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  168.0235  0.1458  67  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  168.0259  0.1458  71  60 0 0.38 0 0
i "GM_Electric_Bass_finger"  168.1250  0.1917  41  71 0 0.50 0 0
i "GM_Standard_Kit"  168.1250  0.1500  42  41 0 0.35 0 0
i "GM_Electric_Bass_finger"  168.3333  0.1917  43  80 0 0.50 0 0
i "GM_FX_3_crystal"  168.3333  0.3958  72  99 0 0.62 0 0
i "GM_Standard_Kit"  168.3333  0.2500  36  62 0 0.50 0 0
i "GM_Standard_Kit"  168.3333  0.1500  42  52 0 0.35 0 0
i "GM_Electric_Bass_finger"  168.5417  0.1917  46  72 0 0.50 0 0
i "GM_Standard_Kit"  168.5417  0.1500  42  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  168.6494  0.1458  60  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  168.6499  0.1458  76  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  168.6513  0.1458  67  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  168.6522  0.1458  71  56 0 0.38 0 0
i "GM_Electric_Bass_finger"  168.7500  0.1917  43  85 0 0.50 0 0
i "GM_Standard_Kit"  168.7500  0.2000  38  67 0 0.48 0 0
i "GM_Standard_Kit"  168.7500  0.1500  42  46 0 0.35 0 0
i "GM_FX_3_crystal"  168.8542  0.0990  76  88 0 0.62 0 0
i "GM_Electric_Bass_finger"  168.9583  0.1917  41  71 0 0.50 0 0
i "GM_Standard_Kit"  168.9583  0.1500  46  40 0 0.35 0 0
i "GM_Electric_Bass_finger"  169.1667  0.1917  47  86 0 0.50 0 0
i "GM_FX_4_atmosphere"  169.1667  1.6333  59  72 0 0.24 0 0
i "GM_FX_4_atmosphere"  169.1667  1.6333  63  72 0 0.24 0 0
i "GM_FX_4_atmosphere"  169.1667  1.6333  66  72 0 0.24 0 0
i "GM_FX_4_atmosphere"  169.1667  1.6333  69  72 0 0.24 0 0
i "GM_Standard_Kit"  169.1667  0.2500  36  63 0 0.50 0 0
i "GM_Standard_Kit"  169.1667  0.1500  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"  169.3750  0.1917  50  71 0 0.50 0 0
i "GM_Standard_Kit"  169.3750  0.1500  42  40 0 0.35 0 0
i "GM_Electric_Bass_finger"  169.5833  0.1917  52  79 0 0.50 0 0
i "GM_Standard_Kit"  169.5833  0.2000  38  73 0 0.48 0 0
i "GM_Standard_Kit"  169.5833  0.1500  42  49 0 0.35 0 0
i "GM_Standard_Kit"  169.6875  0.2500  36  67 0 0.50 0 0
i "GM_Standard_Kit"  169.7917  0.1500  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"  170.0000  0.1917  52  85 0 0.50 0 0
i "GM_Standard_Kit"  170.0000  0.2500  36  65 0 0.50 0 0
i "GM_Standard_Kit"  170.0000  0.1500  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"  170.2083  0.1917  50  72 0 0.50 0 0
i "GM_Standard_Kit"  170.2083  0.1500  42  41 0 0.35 0 0
i "GM_Electric_Bass_finger"  170.4167  0.1917  49  84 0 0.50 0 0
i "GM_Standard_Kit"  170.4167  0.2000  38  69 0 0.48 0 0
i "GM_Standard_Kit"  170.4167  0.1500  42  48 0 0.35 0 0
i "GM_Standard_Kit"  170.6250  0.1500  46  41 0 0.35 0 0
i "GM_Electric_Bass_finger"  170.8333  0.1917  38  81 0 0.50 0 0
i "GM_FX_5_brightness"  170.8333  1.6333  62  72 0 0.42 0 0
i "GM_FX_5_brightness"  170.8333  1.6333  65  72 0 0.42 0 0
i "GM_FX_5_brightness"  170.8333  1.6333  69  72 0 0.42 0 0
i "GM_FX_5_brightness"  170.8333  1.6333  72  72 0 0.42 0 0
i "GM_Standard_Kit"  170.8333  0.2500  36  67 0 0.50 0 0
i "GM_Standard_Kit"  170.8333  0.1500  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"  171.0417  0.1917  38  70 0 0.50 0 0
i "GM_Standard_Kit"  171.0417  0.1500  42  39 0 0.35 0 0
i "GM_Electric_Bass_finger"  171.2500  0.1917  45  83 0 0.50 0 0
i "GM_Standard_Kit"  171.2500  0.2000  38  76 0 0.48 0 0
i "GM_Standard_Kit"  171.2500  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  171.4583  0.1500  42  37 0 0.35 0 0
i "GM_Electric_Bass_finger"  171.6667  0.1917  41  85 0 0.50 0 0
i "GM_Standard_Kit"  171.6667  0.2500  36  63 0 0.50 0 0
i "GM_Standard_Kit"  171.6667  0.1500  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"  171.8750  0.1917  40  70 0 0.50 0 0
i "GM_Standard_Kit"  171.8750  0.1500  42  37 0 0.35 0 0
i "GM_Electric_Bass_finger"  172.0833  0.1917  38  83 0 0.50 0 0
i "GM_Standard_Kit"  172.0833  0.2000  38  64 0 0.48 0 0
i "GM_Standard_Kit"  172.0833  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  172.2917  0.1500  46  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  172.5000  0.1917  46  84 0 0.50 0 0
i "GM_FX_6_goblins"  172.5000  1.5000  56  86 0 0.60 0 0
i "GM_Standard_Kit"  172.5000  0.2500  36  62 0 0.50 0 0
i "GM_Standard_Kit"  172.5000  0.1500  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"  172.7083  0.1917  41  72 0 0.50 0 0
i "GM_Standard_Kit"  172.7083  0.1500  42  39 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  172.7085  0.1458  65  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  172.7120  0.1458  74  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  172.7145  0.1458  58  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  172.7148  0.1458  69  55 0 0.38 0 0
i "GM_Electric_Bass_finger"  172.9167  0.1917  46  81 0 0.50 0 0
i "GM_Standard_Kit"  172.9167  0.2000  38  71 0 0.48 0 0
i "GM_Standard_Kit"  172.9167  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  173.0208  0.2500  36  67 0 0.50 0 0
i "GM_Electric_Bass_finger"  173.1250  0.1917  44  73 0 0.50 0 0
i "GM_Standard_Kit"  173.1250  0.1500  42  40 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  173.1252  0.1458  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  173.1267  0.1458  62  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  173.1309  0.1458  58  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  173.1326  0.1458  69  64 0 0.38 0 0
i "GM_Electric_Bass_finger"  173.3333  0.1917  41  79 0 0.50 0 0
i "GM_FX_6_goblins"  173.3333  0.6750  63  80 0 0.60 0 0
i "GM_Standard_Kit"  173.3333  0.2500  36  62 0 0.50 0 0
i "GM_Standard_Kit"  173.3333  0.1500  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  173.4419  0.1458  53  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  173.4427  0.1458  69  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  173.4434  0.1458  64  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  173.4445  0.1458  60  54 0 0.38 0 0
i "GM_Electric_Bass_finger"  173.5417  0.1917  51  76 0 0.50 0 0
i "GM_Standard_Kit"  173.5417  0.1500  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"  173.7500  0.1917  49  85 0 0.50 0 0
i "GM_Standard_Kit"  173.7500  0.2000  38  69 0 0.48 0 0
i "GM_Standard_Kit"  173.7500  0.1500  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"  173.9583  0.1917  48  71 0 0.50 0 0
i "GM_Standard_Kit"  173.9583  0.1500  46  39 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  173.9590  0.1458  53  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  173.9646  0.1458  64  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  173.9658  0.1458  57  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  173.9661  0.1458  60  63 0 0.38 0 0
i "GM_Electric_Bass_finger"  174.1667  0.1917  41  85 0 0.50 0 0
i "GM_FX_7_echoes"  174.1667  0.1833  69 101 0 0.78 0 0
i "GM_Rock_Organ"  174.1667  1.6000  52  34 0 0.55 0 0
i "GM_Rock_Organ"  174.1667  1.6000  53  36 0 0.55 0 0
i "GM_Rock_Organ"  174.1667  1.6000  57  34 0 0.55 0 0
i "GM_Rock_Organ"  174.1667  1.6000  60  36 0 0.55 0 0
i "GM_Standard_Kit"  174.1667  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  174.1667  0.1500  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"  174.3750  0.1917  41  74 0 0.50 0 0
i "GM_FX_7_echoes"  174.3750  0.1833  76  88 0 0.78 0 0
i "GM_Standard_Kit"  174.3750  0.1500  42  41 0 0.35 0 0
i "GM_Electric_Bass_finger"  174.5833  0.1917  48  79 0 0.50 0 0
i "GM_FX_7_echoes"  174.5833  0.1833  81  98 0 0.78 0 0
i "GM_Standard_Kit"  174.5833  0.2000  38  74 0 0.48 0 0
i "GM_Standard_Kit"  174.5833  0.1500  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  174.5837  0.1458  52  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  174.5877  0.1458  57  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  174.5897  0.1458  53  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  174.5913  0.1458  60  62 0 0.38 0 0
i "GM_Standard_Kit"  174.6875  0.2500  36  62 0 0.50 0 0
i "GM_Electric_Bass_finger"  174.7917  0.1917  46  68 0 0.50 0 0
i "GM_FX_7_echoes"  174.7917  0.1833  81  88 0 0.78 0 0
i "GM_Standard_Kit"  174.7917  0.1500  42  38 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  174.8971  0.1458  60  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  174.8996  0.1458  52  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  174.9015  0.1458  53  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  174.9027  0.1458  57  59 0 0.38 0 0
i "GM_Electric_Bass_finger"  175.0000  0.1917  44  79 0 0.50 0 0
i "GM_FX_7_echoes"  175.0000  0.3667  79  95 0 0.78 0 0
i "GM_Standard_Kit"  175.0000  0.2500  36  62 0 0.50 0 0
i "GM_Standard_Kit"  175.0000  0.1500  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"  175.2083  0.1917  43  72 0 0.50 0 0
i "GM_Standard_Kit"  175.2083  0.1500  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"  175.4167  0.1917  41  81 0 0.50 0 0
i "GM_FX_7_echoes"  175.4167  0.3667  76  96 0 0.78 0 0
i "GM_Standard_Kit"  175.4167  0.2000  38  70 0 0.48 0 0
i "GM_Standard_Kit"  175.4167  0.1500  42  52 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  175.4180  0.1458  57  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  175.4182  0.1458  53  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  175.4226  0.1458  52  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  175.4246  0.1458  60  59 0 0.38 0 0
i "GM_Standard_Kit"  175.6250  0.1500  46  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  175.8333  0.1917  36  84 0 0.50 0 0
i "GM_FX_8_sci_fi"  175.8333  1.3125  63  86 0 0.40 0 0
i "GM_Standard_Kit"  175.8333  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"  175.8333  0.1500  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"  176.0417  0.1917  36  69 0 0.50 0 0
i "GM_Standard_Kit"  176.0417  0.1500  42  38 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  176.0437  0.1146  60  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  176.0451  0.1146  59  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  176.0472  0.1146  64  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  176.0495  0.1146  67  61 0 0.38 0 0
i "GM_Electric_Bass_finger"  176.2500  0.1917  43  81 0 0.50 0 0
i "GM_Standard_Kit"  176.2500  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"  176.2500  0.1500  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"  176.4583  0.1917  41  73 0 0.50 0 0
i "GM_Standard_Kit"  176.4583  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  176.4583  0.1500  46  35 0 0.35 0 0
i "GM_Standard_Kit"  176.4583  0.1800  50  81 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  176.4605  0.1146  71  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  176.4618  0.1146  67  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  176.4632  0.1146  76  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  176.4638  0.1146  60  57 0 0.38 0 0
i "GM_Electric_Bass_finger"  176.6667  0.1917  39  84 0 0.50 0 0
i "GM_Standard_Kit"  176.6667  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  176.6667  0.1800  48  76 0 0.44 0 0
i "GM_Acoustic_Grand_Piano"  176.7721  0.1146  64  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  176.7748  0.1146  71  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  176.7748  0.1146  67  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  176.7764  0.1146  60  59 0 0.38 0 0
i "GM_Electric_Bass_finger"  176.8750  0.1917  38  69 0 0.50 0 0
i "GM_Standard_Kit"  176.8750  0.2000  38  76 0 0.48 0 0
i "GM_Standard_Kit"  176.8750  0.1500  42  36 0 0.35 0 0
i "GM_Standard_Kit"  176.8750  0.1800  47  83 0 0.48 0 0
i "GM_Electric_Bass_finger"  177.0833  0.1917  36  79 0 0.50 0 0
i "GM_Standard_Kit"  177.0833  0.1500  46  46 0 0.35 0 0
i "GM_Standard_Kit"  177.0833  0.1800  45  82 0 0.52 0 0
i "GM_Standard_Kit"  177.0833  0.2000  49  82 0 0.70 0 0
i "GM_Electric_Bass_finger"  177.2917  0.1917  44  86 0 0.50 0 0
i "GM_Sitar"  177.2917  0.1833  63 101 0 0.58 0 0
i "GM_Standard_Kit"  177.2917  0.2500  36  64 0 0.50 0 0
i "GM_Standard_Kit"  177.2917  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  177.2917  0.5500  49  88 0 0.72 0 0
i "GM_Standard_Kit"  177.2917  0.4000  57  70 0 0.78 0 0
i "GM_Electric_Bass_finger"  177.5000  0.1917  47  75 0 0.50 0 0
i "GM_Standard_Kit"  177.5000  0.1500  42  37 0 0.35 0 0
i "GM_Electric_Bass_finger"  177.7083  0.1917  49  83 0 0.50 0 0
i "GM_Sitar"  177.7083  0.1833  60  99 0 0.58 0 0
i "GM_Standard_Kit"  177.7083  0.2000  38  77 0 0.48 0 0
i "GM_Standard_Kit"  177.7083  0.1500  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  177.8138  0.1458  56  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  177.8166  0.1458  67  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  177.8182  0.1458  63  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  177.8192  0.1458  72  60 0 0.38 0 0
i "GM_Electric_Bass_finger"  177.9167  0.1917  51  75 0 0.50 0 0
i "GM_Sitar"  177.9167  0.1833  58  91 0 0.58 0 0
i "GM_Standard_Kit"  177.9167  0.1500  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"  178.1250  0.1917  49  84 0 0.50 0 0
i "GM_Sitar"  178.1250  0.3667  60  97 0 0.58 0 0
i "GM_Standard_Kit"  178.1250  0.2500  36  65 0 0.50 0 0
i "GM_Standard_Kit"  178.1250  0.1500  42  48 0 0.35 0 0
i "GM_Standard_Kit"  178.3333  0.1500  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"  178.5417  0.1917  46  85 0 0.50 0 0
i "GM_Sitar"  178.5417  0.1833  65  94 0 0.58 0 0
i "GM_Standard_Kit"  178.5417  0.2000  38  66 0 0.48 0 0
i "GM_Standard_Kit"  178.5417  0.1500  42  48 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  178.5417  0.1458  56  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  178.5456  0.1458  60  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  178.5471  0.1458  55  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  178.5484  0.1458  63  56 0 0.38 0 0
i "GM_Electric_Bass_finger"  178.7500  0.1917  44  73 0 0.50 0 0
i "GM_Sitar"  178.7500  0.1833  67  90 0 0.58 0 0
i "GM_Standard_Kit"  178.7500  0.1500  46  41 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  178.7511  0.1458  67  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  178.7549  0.1458  63  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  178.7559  0.1458  56  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  178.7577  0.1458  60  64 0 0.38 0 0
i "GM_Banjo"  178.9583  0.1833  63 105 0 0.76 0 0
i "GM_Electric_Bass_finger"  178.9583  0.1917  39  84 0 0.50 0 0
i "GM_Standard_Kit"  178.9583  0.2500  36  62 0 0.50 0 0
i "GM_Standard_Kit"  178.9583  0.1500  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  178.9591  0.1458  70  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  178.9619  0.1458  63  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  178.9624  0.1458  74  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  178.9641  0.1458  67  64 0 0.38 0 0
i "GM_Banjo"  179.1667  0.1833  63  90 0 0.76 0 0
i "GM_Electric_Bass_finger"  179.1667  0.1917  44  70 0 0.50 0 0
i "GM_Standard_Kit"  179.1667  0.1500  42  38 0 0.35 0 0
i "GM_Banjo"  179.3750  0.1833  70 100 0 0.76 0 0
i "GM_Electric_Bass_finger"  179.3750  0.1917  42  85 0 0.50 0 0
i "GM_Standard_Kit"  179.3750  0.2000  38  75 0 0.48 0 0
i "GM_Standard_Kit"  179.3750  0.1500  42  48 0 0.35 0 0
i "GM_Standard_Kit"  179.4792  0.2500  36  70 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  179.4803  0.1458  70  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  179.4836  0.1458  67  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  179.4837  0.1458  74  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  179.4844  0.1458  63  56 0 0.38 0 0
i "GM_Banjo"  179.5833  0.1833  68  96 0 0.76 0 0
i "GM_Electric_Bass_finger"  179.5833  0.1917  41  72 0 0.50 0 0
i "GM_Standard_Kit"  179.5833  0.1500  42  39 0 0.35 0 0
i "GM_Banjo"  179.7917  0.3667  74 103 0 0.76 0 0
i "GM_Electric_Bass_finger"  179.7917  0.1917  39  84 0 0.50 0 0
i "GM_Standard_Kit"  179.7917  0.2500  36  68 0 0.50 0 0
i "GM_Standard_Kit"  179.7917  0.1500  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"  180.0000  0.1917  46  76 0 0.50 0 0
i "GM_Standard_Kit"  180.0000  0.1500  42  41 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  180.1045  0.1458  57  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  180.1049  0.1458  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  180.1073  0.1458  62  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  180.1103  0.1458  58  60 0 0.38 0 0
i "GM_Banjo"  180.2083  0.3667  74  94 0 0.76 0 0
i "GM_Electric_Bass_finger"  180.2083  0.1917  49  86 0 0.50 0 0
i "GM_Standard_Kit"  180.2083  0.2000  38  65 0 0.48 0 0
i "GM_Standard_Kit"  180.2083  0.1500  42  50 0 0.35 0 0
i "GM_Electric_Bass_finger"  180.4167  0.1917  51  72 0 0.50 0 0
i "GM_Standard_Kit"  180.4167  0.1500  46  37 0 0.35 0 0
i "GM_Electric_Bass_finger"  180.6250  0.1917  46  82 0 0.50 0 0
i "GM_Rock_Organ"  180.6250  1.6000  57  34 0 0.55 0 0
i "GM_Rock_Organ"  180.6250  1.6000  58  38 0 0.55 0 0
i "GM_Rock_Organ"  180.6250  1.6000  62  33 0 0.55 0 0
i "GM_Rock_Organ"  180.6250  1.6000  65  36 0 0.55 0 0
i "GM_Shamisen"  180.6250  0.3667  65 105 0 0.37 0 0
i "GM_Standard_Kit"  180.6250  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"  180.6250  0.1500  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"  180.8333  0.1917  51  75 0 0.50 0 0
i "GM_Standard_Kit"  180.8333  0.1500  42  38 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  180.8337  0.1458  69  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  180.8369  0.1458  65  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  180.8399  0.1458  58  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  180.8408  0.1458  74  55 0 0.38 0 0
i "GM_Electric_Bass_finger"  181.0417  0.1917  49  86 0 0.50 0 0
i "GM_Shamisen"  181.0417  0.1833  65  96 0 0.37 0 0
i "GM_Standard_Kit"  181.0417  0.2000  38  75 0 0.48 0 0
i "GM_Standard_Kit"  181.0417  0.1500  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"  181.2500  0.1917  48  70 0 0.50 0 0
i "GM_Shamisen"  181.2500  0.1833  67  93 0 0.37 0 0
i "GM_Standard_Kit"  181.2500  0.1500  46  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  181.2504  0.1458  58  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  181.2526  0.1458  62  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  181.2551  0.1458  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  181.2556  0.1458  57  55 0 0.38 0 0
i "GM_Electric_Bass_finger"  181.4583  0.1917  46  83 0 0.50 0 0
i "GM_Shamisen"  181.4583  0.1833  69 103 0 0.37 0 0
i "GM_Standard_Kit"  181.4583  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  181.4583  0.1500  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  181.5653  0.1458  69  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  181.5654  0.1458  74  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  181.5655  0.1458  65  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  181.5664  0.1458  58  60 0 0.38 0 0
i "GM_Electric_Bass_finger"  181.6667  0.1917  41  76 0 0.50 0 0
i "GM_Shamisen"  181.6667  0.1833  67  88 0 0.37 0 0
i "GM_Standard_Kit"  181.6667  0.1500  42  35 0 0.35 0 0
i "GM_Electric_Bass_finger"  181.8750  0.1917  44  83 0 0.50 0 0
i "GM_Shamisen"  181.8750  0.1833  62  96 0 0.37 0 0
i "GM_Standard_Kit"  181.8750  0.2000  38  67 0 0.48 0 0
i "GM_Standard_Kit"  181.8750  0.1500  42  47 0 0.35 0 0
i "GM_Shamisen"  182.0833  0.1833  53  87 0 0.37 0 0
i "GM_Standard_Kit"  182.0833  0.1500  46  41 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  182.0837  0.1458  65  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  182.0850  0.1458  58  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  182.0871  0.1458  62  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  182.0875  0.1458  69  63 0 0.38 0 0
i "GM_Electric_Bass_finger"  182.2917  0.1917  45  80 0 0.50 0 0
i "GM_Koto"  182.2917  0.1833  69 104 0 0.56 0 0
i "GM_Standard_Kit"  182.2917  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  182.2917  0.1500  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  182.2961  0.1458  64  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  182.2976  0.1458  67  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  182.2990  0.1458  61  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  182.2992  0.1458  57  62 0 0.38 0 0
i "GM_Electric_Bass_finger"  182.5000  0.1917  52  76 0 0.50 0 0
i "GM_Koto"  182.5000  0.1833  64  93 0 0.56 0 0
i "GM_Standard_Kit"  182.5000  0.1500  42  39 0 0.35 0 0
i "GM_Electric_Bass_finger"  182.7083  0.1917  45  79 0 0.50 0 0
i "GM_Koto"  182.7083  0.1833  57  95 0 0.56 0 0
i "GM_Standard_Kit"  182.7083  0.2000  38  75 0 0.48 0 0
i "GM_Standard_Kit"  182.7083  0.1500  42  49 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  182.8141  0.1458  57  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  182.8146  0.1458  64  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  182.8183  0.1458  61  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  182.8184  0.1458  55  59 0 0.38 0 0
i "GM_Electric_Bass_finger"  182.9167  0.1917  43  75 0 0.50 0 0
i "GM_Koto"  182.9167  0.1833  54  90 0 0.56 0 0
i "GM_Standard_Kit"  182.9167  0.1500  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  183.1250  0.1917  52  78 0 0.50 0 0
i "GM_Koto"  183.1250  0.3667  52 100 0 0.56 0 0
i "GM_Standard_Kit"  183.1250  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  183.1250  0.1500  42  52 0 0.35 0 0
i "GM_Electric_Bass_finger"  183.3333  0.1917  50  71 0 0.50 0 0
i "GM_Standard_Kit"  183.3333  0.1500  42  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  183.4401  0.1458  57  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  183.4416  0.1458  61  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  183.4449  0.1458  64  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  183.4454  0.1458  55  58 0 0.38 0 0
i "GM_Electric_Bass_finger"  183.5417  0.1917  48  81 0 0.50 0 0
i "GM_Koto"  183.5417  0.3667  55  90 0 0.56 0 0
i "GM_Standard_Kit"  183.5417  0.2000  38  69 0 0.48 0 0
i "GM_Standard_Kit"  183.5417  0.1500  42  49 0 0.35 0 0
i "GM_Electric_Bass_finger"  183.7500  0.1917  47  68 0 0.50 0 0
i "GM_Standard_Kit"  183.7500  0.1500  46  41 0 0.35 0 0
i "GM_Electric_Bass_finger"  183.9583  0.1917  40  80 0 0.50 0 0
i "GM_Standard_Kit"  183.9583  0.2500  36  66 0 0.50 0 0
i "GM_Standard_Kit"  183.9583  0.1500  42  49 0 0.35 0 0
i "GM_Kalimba"  184.1667  0.1833  71  91 0 0.74 0 0
i "GM_Standard_Kit"  184.1667  0.1500  42  39 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  184.1712  0.1458  52  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  184.1714  0.1458  55  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  184.1728  0.1458  62  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  184.1734  0.1458  59  59 0 0.38 0 0
i "GM_Electric_Bass_finger"  184.3750  0.1917  40  78 0 0.50 0 0
i "GM_Kalimba"  184.3750  0.3667  76 100 0 0.74 0 0
i "GM_Standard_Kit"  184.3750  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"  184.3750  0.1500  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"  184.5833  0.1917  50  69 0 0.50 0 0
i "GM_Standard_Kit"  184.5833  0.1500  42  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  184.5846  0.1458  71  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  184.5857  0.1458  62  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  184.5885  0.1458  67  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  184.5895  0.1458  64  64 0 0.38 0 0
i "GM_Electric_Bass_finger"  184.7917  0.1917  47  80 0 0.50 0 0
i "GM_Kalimba"  184.7917  0.1833  83  96 0 0.74 0 0
i "GM_Standard_Kit"  184.7917  0.2500  36  66 0 0.50 0 0
i "GM_Standard_Kit"  184.7917  0.1500  42  51 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  184.8968  0.1458  59  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  184.8979  0.1458  67  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  184.8997  0.1458  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  184.9006  0.1458  52  58 0 0.38 0 0
i "GM_Kalimba"  185.0000  0.1833  74  92 0 0.74 0 0
i "GM_Standard_Kit"  185.0000  0.1500  42  37 0 0.35 0 0
i "GM_Electric_Bass_finger"  185.2083  0.1917  43  81 0 0.50 0 0
i "GM_Kalimba"  185.2083  0.3667  74  91 0 0.74 0 0
i "GM_Standard_Kit"  185.2083  0.2000  38  66 0 0.48 0 0
i "GM_Standard_Kit"  185.2083  0.1500  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"  185.4167  0.1917  42  76 0 0.50 0 0
i "GM_Standard_Kit"  185.4167  0.1500  46  37 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  185.4194  0.1458  62  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  185.4206  0.1458  71  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  185.4222  0.1458  67  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  185.4242  0.1458  64  63 0 0.38 0 0
i "GM_Bag_pipe"  185.6250  0.1833  59 101 0 0.35 0 0
i "GM_Electric_Bass_finger"  185.6250  0.1917  36  86 0 0.50 0 0
i "GM_Standard_Kit"  185.6250  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  185.6250  0.1500  42  51 0 0.35 0 0
i "GM_Electric_Bass_finger"  185.8333  0.1917  43  71 0 0.50 0 0
i "GM_Standard_Kit"  185.8333  0.1500  42  36 0 0.35 0 0
i "GM_Bag_pipe"  186.0417  0.1833  59 104 0 0.35 0 0
i "GM_Electric_Bass_finger"  186.0417  0.1917  36  79 0 0.50 0 0
i "GM_Standard_Kit"  186.0417  0.2000  38  71 0 0.48 0 0
i "GM_Standard_Kit"  186.0417  0.1500  42  48 0 0.35 0 0
i "GM_Standard_Kit"  186.1458  0.2500  36  62 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  186.1464  0.1458  67  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  186.1492  0.1458  64  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  186.1521  0.1458  60  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  186.1523  0.1458  59  63 0 0.38 0 0
i "GM_Bag_pipe"  186.2500  0.1833  59  88 0 0.35 0 0
i "GM_Electric_Bass_finger"  186.2500  0.1917  46  69 0 0.50 0 0
i "GM_Standard_Kit"  186.2500  0.1500  42  41 0 0.35 0 0
i "GM_Bag_pipe"  186.4583  0.3667  59  96 0 0.35 0 0
i "GM_Electric_Bass_finger"  186.4583  0.1917  43  81 0 0.50 0 0
i "GM_Standard_Kit"  186.4583  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"  186.4583  0.1500  42  48 0 0.35 0 0
i "GM_Electric_Bass_finger"  186.6667  0.1917  41  75 0 0.50 0 0
i "GM_Standard_Kit"  186.6667  0.1500  42  39 0 0.35 0 0
i "GM_Bag_pipe"  186.8750  0.1833  62  97 0 0.35 0 0
i "GM_Electric_Bass_finger"  186.8750  0.1917  39  86 0 0.50 0 0
i "GM_Standard_Kit"  186.8750  0.2500  36  65 0 0.50 0 0
i "GM_Standard_Kit"  186.8750  0.2000  38  65 0 0.48 0 0
i "GM_Standard_Kit"  186.8750  0.1500  42  50 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  186.8809  0.1458  55  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  186.8811  0.1458  66  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  186.8816  0.1458  59  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  186.8828  0.1458  62  55 0 0.38 0 0
i "GM_Bag_pipe"  187.0833  0.1833  67  92 0 0.35 0 0
i "GM_Electric_Bass_finger"  187.0833  0.1917  38  74 0 0.50 0 0
i "GM_Standard_Kit"  187.0833  0.1500  46  35 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  187.0850  0.1458  71  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  187.0866  0.1458  55  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  187.0868  0.1458  66  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  187.0878  0.1458  62  64 0 0.38 0 0
i "GM_Electric_Bass_finger"  187.2917  0.1917  43  78 0 0.50 0 0
i "GM_Fiddle"  187.2917  0.1833  74  95 0 0.53 0 0
i "GM_Rock_Organ"  187.2917  1.6000  55  35 0 0.55 0 0
i "GM_Rock_Organ"  187.2917  1.6000  59  34 0 0.55 0 0
i "GM_Rock_Organ"  187.2917  1.6000  62  34 0 0.55 0 0
i "GM_Rock_Organ"  187.2917  1.6000  66  37 0 0.55 0 0
i "GM_Standard_Kit"  187.2917  0.2500  36  67 0 0.50 0 0
i "GM_Standard_Kit"  187.2917  0.1500  42  47 0 0.35 0 0
i "GM_Electric_Bass_finger"  187.5000  0.1917  48  70 0 0.50 0 0
i "GM_Fiddle"  187.5000  0.1833  67  91 0 0.53 0 0
i "GM_Standard_Kit"  187.5000  0.1500  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"  187.7083  0.1917  46  80 0 0.50 0 0
i "GM_Standard_Kit"  187.7083  0.2000  38  76 0 0.48 0 0
i "GM_Standard_Kit"  187.7083  0.1500  42  50 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  187.7114  0.1458  54  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  187.7128  0.1458  59  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  187.7142  0.1458  55  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  187.7147  0.1458  62  62 0 0.38 0 0
i "GM_Fiddle"  187.8125  0.0917  72  90 0 0.53 0 0
i "GM_Standard_Kit"  187.8125  0.2500  36  65 0 0.50 0 0
i "GM_Electric_Bass_finger"  187.9167  0.1917  45  70 0 0.50 0 0
i "GM_Fiddle"  187.9167  0.1833  72  91 0 0.53 0 0
i "GM_Standard_Kit"  187.9167  0.1500  46  39 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  188.0215  0.1458  62  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  188.0242  0.1458  59  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  188.0256  0.1458  66  60 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  188.0278  0.1458  55  58 0 0.38 0 0
i "GM_Electric_Bass_finger"  188.1250  0.1917  43  85 0 0.50 0 0
i "GM_Fiddle"  188.1250  0.1833  72  99 0 0.53 0 0
i "GM_Standard_Kit"  188.1250  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"  188.1250  0.1500  42  46 0 0.35 0 0
i "GM_Electric_Bass_finger"  188.3333  0.1917  50  75 0 0.50 0 0
i "GM_Fiddle"  188.3333  0.1833  74  94 0 0.53 0 0
i "GM_Standard_Kit"  188.3333  0.1500  42  36 0 0.35 0 0
i "GM_Electric_Bass_finger"  188.5417  0.1917  41  81 0 0.50 0 0
i "GM_Standard_Kit"  188.5417  0.2500  36  67 0 0.50 0 0
i "GM_Standard_Kit"  188.5417  0.2000  38  70 0 0.48 0 0
i "GM_Standard_Kit"  188.5417  0.1500  42  46 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  188.5420  0.1458  66  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  188.5421  0.1458  62  64 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  188.5424  0.1458  71  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  188.5482  0.1458  55  60 0 0.38 0 0
i "GM_Fiddle"  188.6458  0.0917  76  88 0 0.53 0 0
i "GM_Fiddle"  188.7500  0.1833  84  94 0 0.53 0 0
i "GM_Standard_Kit"  188.7500  0.1500  46  37 0 0.35 0 0
i "GM_Electric_Bass_finger"  188.9583  0.1917  38  79 0 0.50 0 0
i "GM_Shanai"  188.9583  0.1833  69 104 0 0.71 0 0
i "GM_Standard_Kit"  188.9583  0.2500  36  66 0 0.50 0 0
i "GM_Standard_Kit"  188.9583  0.1500  42  52 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  188.9611  0.1146  60  59 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  188.9629  0.1146  66  58 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  188.9629  0.1146  62  63 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  188.9640  0.1146  69  60 0 0.38 0 0
i "GM_Standard_Kit"  189.1667  0.1500  42  38 0 0.35 0 0
i "GM_Electric_Bass_finger"  189.3750  0.1917  38  84 0 0.50 0 0
i "GM_Shanai"  189.3750  0.1833  66  99 0 0.71 0 0
i "GM_Standard_Kit"  189.3750  0.2500  36  68 0 0.50 0 0
i "GM_Standard_Kit"  189.3750  0.2000  38  71 0 0.48 0 0
i "GM_Standard_Kit"  189.3750  0.1500  42  49 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  189.4804  0.1146  66  54 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  189.4805  0.1146  60  56 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  189.4847  0.1146  57  61 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  189.4849  0.1146  50  55 0 0.38 0 0
i "GM_Electric_Bass_finger"  189.5833  0.1917  48  70 0 0.50 0 0
i "GM_Shanai"  189.5833  0.1833  64  89 0 0.71 0 0
i "GM_Standard_Kit"  189.5833  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  189.5833  0.1500  42  39 0 0.35 0 0
i "GM_Standard_Kit"  189.5833  0.1800  50  76 0 0.40 0 0
i "GM_Electric_Bass_finger"  189.7917  0.1917  45  85 0 0.50 0 0
i "GM_Shanai"  189.7917  0.3667  66  98 0 0.71 0 0
i "GM_Standard_Kit"  189.7917  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  189.7917  0.1800  48  88 0 0.44 0 0
i "GM_Standard_Kit"  190.0000  0.2000  38  73 0 0.48 0 0
i "GM_Standard_Kit"  190.0000  0.1500  42  36 0 0.35 0 0
i "GM_Standard_Kit"  190.0000  0.1800  47  81 0 0.48 0 0
i "GM_Acoustic_Grand_Piano"  190.1079  0.1146  69  62 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  190.1082  0.1146  66  55 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  190.1092  0.1146  62  57 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  190.1116  0.1146  60  64 0 0.38 0 0
i "GM_Electric_Bass_finger"  190.2083  0.1917  41  78 0 0.50 0 0
i "GM_Shanai"  190.2083  0.1833  69  87 0 0.71 0 0
i "GM_Standard_Kit"  190.2083  0.1500  46  50 0 0.35 0 0
i "GM_Standard_Kit"  190.2083  0.1800  45  83 0 0.52 0 0
i "GM_Standard_Kit"  190.2083  0.2000  49  82 0 0.70 0 0
i "GM_Slap_Bass_1"  190.4167  0.1917  45  78 0 0.50 0 0
i "GM_Standard_Kit"  190.4167  0.2500  36  72 0 0.50 0 0
i "GM_Standard_Kit"  190.4167  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  190.4167  0.2500  51  46 0 0.70 0 0
i "GM_Standard_Kit"  190.4167  0.5500  49  88 0 0.72 0 0
i "GM_Electric_Piano_1"  190.4167  0.1458  60  64 0 0.42 0 0
i "GM_Electric_Piano_1"  190.4192  0.1458  55  59 0 0.42 0 0
i "GM_Electric_Piano_1"  190.4213  0.1458  64  61 0 0.42 0 0
i "GM_Electric_Piano_1"  190.4237  0.1458  57  64 0 0.42 0 0
i "GM_Standard_Kit"  190.6250  0.1500  42  44 0 0.35 0 0
i "GM_Tinkle_Bell"  190.6250  0.1979  88  92 0 0.33 0 0
i "GM_Slap_Bass_1"  190.8333  0.1917  48  82 0 0.50 0 0
i "GM_Standard_Kit"  190.8333  0.2000  38  84 0 0.48 0 0
i "GM_Standard_Kit"  190.8333  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  190.8333  0.2500  51  48 0 0.70 0 0
i "GM_Tinkle_Bell"  190.8333  0.3958  84 100 0 0.33 0 0
i "GM_Alto_Sax"  190.9375  0.1146  68  60 0 0.62 0 0
i "GM_Tenor_Sax"  190.9375  0.1146  62  59 0 0.35 0 0
i "GM_Trombone"  190.9375  0.1146  62  55 0 0.28 0 0
i "GM_Trumpet"  190.9375  0.1146  74  62 0 0.72 0 0
i "GM_Electric_Piano_1"  190.9384  0.1458  57  66 0 0.42 0 0
i "GM_Electric_Piano_1"  190.9398  0.1458  55  63 0 0.42 0 0
i "GM_Electric_Piano_1"  190.9423  0.1458  64  60 0 0.42 0 0
i "GM_Electric_Piano_1"  190.9434  0.1458  60  62 0 0.42 0 0
i "GM_Slap_Bass_1"  191.0417  0.1917  50  68 0 0.50 0 0
i "GM_Standard_Kit"  191.0417  0.1500  42  39 0 0.35 0 0
i "GM_Slap_Bass_1"  191.2500  0.1917  52  82 0 0.50 0 0
i "GM_Standard_Kit"  191.2500  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"  191.2500  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  191.2500  0.2500  51  47 0 0.70 0 0
i "GM_Slap_Bass_1"  191.4583  0.1917  43  70 0 0.50 0 0
i "GM_Standard_Kit"  191.4583  0.1500  42  44 0 0.35 0 0
i "GM_Tinkle_Bell"  191.4583  0.1979  88  88 0 0.33 0 0
i "GM_Electric_Piano_1"  191.5640  0.1458  57  66 0 0.42 0 0
i "GM_Electric_Piano_1"  191.5676  0.1458  60  60 0 0.42 0 0
i "GM_Electric_Piano_1"  191.5681  0.1458  67  61 0 0.42 0 0
i "GM_Electric_Piano_1"  191.5683  0.1458  64  64 0 0.42 0 0
i "GM_Alto_Sax"  191.6667  0.1146  68  56 0 0.62 0 0
i "GM_Slap_Bass_1"  191.6667  0.1917  52  81 0 0.50 0 0
i "GM_Standard_Kit"  191.6667  0.2000  38  72 0 0.48 0 0
i "GM_Standard_Kit"  191.6667  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  191.6667  0.2500  51  49 0 0.70 0 0
i "GM_Tenor_Sax"  191.6667  0.1146  65  57 0 0.35 0 0
i "GM_Tinkle_Bell"  191.6667  0.3958  86  95 0 0.33 0 0
i "GM_Trombone"  191.6667  0.1146  62  62 0 0.28 0 0
i "GM_Trumpet"  191.6667  0.1146  74  62 0 0.72 0 0
i "GM_Alto_Sax"  191.8750  0.1146  71  55 0 0.62 0 0
i "GM_Standard_Kit"  191.8750  0.1500  46  41 0 0.35 0 0
i "GM_Tenor_Sax"  191.8750  0.1146  70  59 0 0.35 0 0
i "GM_Trombone"  191.8750  0.1146  59  55 0 0.28 0 0
i "GM_Trumpet"  191.8750  0.1146  74  62 0 0.72 0 0
i "GM_Agogo"  192.0833  0.1833  76  97 0 0.51 0 0
i "GM_Slap_Bass_1"  192.0833  0.1917  41  83 0 0.50 0 0
i "GM_Standard_Kit"  192.0833  0.2500  36  74 0 0.50 0 0
i "GM_Standard_Kit"  192.0833  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  192.0833  0.2500  51  50 0 0.70 0 0
i "GM_Agogo"  192.2917  0.1833  77  89 0 0.51 0 0
i "GM_Alto_Sax"  192.2917  0.1146  73  56 0 0.62 0 0
i "GM_Slap_Bass_1"  192.2917  0.1917  41  75 0 0.50 0 0
i "GM_Standard_Kit"  192.2917  0.1500  42  44 0 0.35 0 0
i "GM_Tenor_Sax"  192.2917  0.1146  67  59 0 0.35 0 0
i "GM_Trombone"  192.2917  0.1146  59  57 0 0.28 0 0
i "GM_Trumpet"  192.2917  0.1146  71  62 0 0.72 0 0
i "GM_Electric_Piano_1"  192.2927  0.1458  53  65 0 0.42 0 0
i "GM_Electric_Piano_1"  192.2934  0.1458  64  56 0 0.42 0 0
i "GM_Electric_Piano_1"  192.2946  0.1458  57  59 0 0.42 0 0
i "GM_Electric_Piano_1"  192.2987  0.1458  60  64 0 0.42 0 0
i "GM_Slap_Bass_1"  192.5000  0.1917  48  78 0 0.50 0 0
i "GM_Standard_Kit"  192.5000  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"  192.5000  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  192.5000  0.2500  51  46 0 0.70 0 0
i "GM_Agogo"  192.6042  0.0917  69  91 0 0.51 0 0
i "GM_Standard_Kit"  192.6042  0.2500  36  76 0 0.50 0 0
i "GM_Agogo"  192.7083  0.1833  76  92 0 0.51 0 0
i "GM_Alto_Sax"  192.7083  0.1146  68  58 0 0.62 0 0
i "GM_Slap_Bass_1"  192.7083  0.1917  46  68 0 0.50 0 0
i "GM_Standard_Kit"  192.7083  0.1500  42  44 0 0.35 0 0
i "GM_Tenor_Sax"  192.7083  0.1146  67  57 0 0.35 0 0
i "GM_Trombone"  192.7083  0.1146  59  54 0 0.28 0 0
i "GM_Trumpet"  192.7083  0.1146  76  60 0 0.72 0 0
i "GM_Electric_Piano_1"  192.7090  0.1458  53  58 0 0.42 0 0
i "GM_Electric_Piano_1"  192.7092  0.1458  60  60 0 0.42 0 0
i "GM_Electric_Piano_1"  192.7098  0.1458  69  63 0 0.42 0 0
i "GM_Electric_Piano_1"  192.7107  0.1458  64  58 0 0.42 0 0
i "GM_Agogo"  192.9167  0.1833  76 104 0 0.51 0 0
i "GM_Slap_Bass_1"  192.9167  0.1917  44  80 0 0.50 0 0
i "GM_Standard_Kit"  192.9167  0.2500  36  74 0 0.50 0 0
i "GM_Standard_Kit"  192.9167  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"  192.9167  0.2500  51  50 0 0.70 0 0
i "GM_Alto_Sax"  193.0208  0.1146  68  59 0 0.62 0 0
i "GM_Tenor_Sax"  193.0208  0.1146  70  59 0 0.35 0 0
i "GM_Trombone"  193.0208  0.1146  64  58 0 0.28 0 0
i "GM_Trumpet"  193.0208  0.1146  79  57 0 0.72 0 0
i "GM_Electric_Piano_1"  193.0212  0.1458  71  63 0 0.42 0 0
i "GM_Electric_Piano_1"  193.0229  0.1458  60  57 0 0.42 0 0
i "GM_Electric_Piano_1"  193.0258  0.1458  67  65 0 0.42 0 0
i "GM_Electric_Piano_1"  193.0271  0.1458  64  58 0 0.42 0 0
i "GM_Agogo"  193.1250  0.1833  77  93 0 0.51 0 0
i "GM_Slap_Bass_1"  193.1250  0.1917  43  68 0 0.50 0 0
i "GM_Standard_Kit"  193.1250  0.1500  42  45 0 0.35 0 0
i "GM_Slap_Bass_1"  193.3333  0.1917  41  84 0 0.50 0 0
i "GM_Standard_Kit"  193.3333  0.2000  38  72 0 0.48 0 0
i "GM_Standard_Kit"  193.3333  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  193.3333  0.2500  51  52 0 0.70 0 0
i "GM_Agogo"  193.4375  0.0917  76  85 0 0.51 0 0
i "GM_Agogo"  193.5417  0.1833  77  91 0 0.51 0 0
i "GM_Alto_Sax"  193.5417  0.1146  68  62 0 0.62 0 0
i "GM_Slap_Bass_1"  193.5417  0.1917  48  70 0 0.50 0 0
i "GM_Standard_Kit"  193.5417  0.1500  46  40 0 0.35 0 0
i "GM_Tenor_Sax"  193.5417  0.1146  67  57 0 0.35 0 0
i "GM_Trombone"  193.5417  0.1146  59  61 0 0.28 0 0
i "GM_Trumpet"  193.5417  0.1146  71  59 0 0.72 0 0
i "GM_Electric_Piano_1"  193.5432  0.1458  67  65 0 0.42 0 0
i "GM_Electric_Piano_1"  193.5447  0.1458  59  64 0 0.42 0 0
i "GM_Electric_Piano_1"  193.5467  0.1458  60  64 0 0.42 0 0
i "GM_Electric_Piano_1"  193.5478  0.1458  64  66 0 0.42 0 0
i "GM_Alto_Sax"  193.7500  0.1146  71  55 0 0.62 0 0
i "GM_Slap_Bass_1"  193.7500  0.1917  36  81 0 0.50 0 0
i "GM_Standard_Kit"  193.7500  0.2500  36  71 0 0.50 0 0
i "GM_Standard_Kit"  193.7500  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  193.7500  0.2500  51  47 0 0.70 0 0
i "GM_Steel_Drums"  193.7500  0.1833  71  98 0 0.69 0 0
i "GM_Tenor_Sax"  193.7500  0.1146  69  61 0 0.35 0 0
i "GM_Trombone"  193.7500  0.1146  66  55 0 0.28 0 0
i "GM_Trumpet"  193.7500  0.1146  78  55 0 0.72 0 0
i "GM_Standard_Kit"  193.9583  0.1500  42  40 0 0.35 0 0
i "GM_Steel_Drums"  193.9583  0.1833  72  89 0 0.69 0 0
i "GM_Slap_Bass_1"  194.1667  0.1917  43  80 0 0.50 0 0
i "GM_Standard_Kit"  194.1667  0.2000  38  82 0 0.48 0 0
i "GM_Standard_Kit"  194.1667  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  194.1667  0.2500  51  46 0 0.70 0 0
i "GM_Steel_Drums"  194.1667  0.1833  72  95 0 0.69 0 0
i "GM_Electric_Piano_1"  194.1671  0.1458  76  62 0 0.42 0 0
i "GM_Electric_Piano_1"  194.1718  0.1458  71  56 0 0.42 0 0
i "GM_Electric_Piano_1"  194.1727  0.1458  60  56 0 0.42 0 0
i "GM_Electric_Piano_1"  194.1737  0.1458  67  62 0 0.42 0 0
i "GM_Alto_Sax"  194.2708  0.1146  68  61 0 0.62 0 0
i "GM_Standard_Kit"  194.2708  0.2500  36  75 0 0.50 0 0
i "GM_Tenor_Sax"  194.2708  0.1146  69  56 0 0.35 0 0
i "GM_Trombone"  194.2708  0.1146  62  61 0 0.28 0 0
i "GM_Trumpet"  194.2708  0.1146  78  56 0 0.72 0 0
i "GM_Standard_Kit"  194.3750  0.1500  46  39 0 0.35 0 0
i "GM_Steel_Drums"  194.3750  0.1833  76  89 0 0.69 0 0
i "GM_Electric_Piano_1"  194.4800  0.1458  64  56 0 0.42 0 0
i "GM_Electric_Piano_1"  194.4841  0.1458  67  60 0 0.42 0 0
i "GM_Electric_Piano_1"  194.4846  0.1458  60  59 0 0.42 0 0
i "GM_Electric_Piano_1"  194.4859  0.1458  59  60 0 0.42 0 0
i "GM_Slap_Bass_1"  194.5833  0.1917  39  86 0 0.50 0 0
i "GM_Standard_Kit"  194.5833  0.2500  36  71 0 0.50 0 0
i "GM_Standard_Kit"  194.5833  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  194.5833  0.2500  51  48 0 0.70 0 0
i "GM_Steel_Drums"  194.5833  0.3667  76  99 0 0.69 0 0
i "GM_Slap_Bass_1"  194.7917  0.1917  38  68 0 0.50 0 0
i "GM_Standard_Kit"  194.7917  0.1500  42  45 0 0.35 0 0
i "GM_Alto_Sax"  194.8958  0.1146  68  58 0 0.62 0 0
i "GM_Tenor_Sax"  194.8958  0.1146  65  61 0 0.35 0 0
i "GM_Trombone"  194.8958  0.1146  62  62 0 0.28 0 0
i "GM_Trumpet"  194.8958  0.1146  74  58 0 0.72 0 0
i "GM_Slap_Bass_1"  195.0000  0.1917  36  81 0 0.50 0 0
i "GM_Standard_Kit"  195.0000  0.2000  38  74 0 0.48 0 0
i "GM_Standard_Kit"  195.0000  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  195.0000  0.2500  51  48 0 0.70 0 0
i "GM_Steel_Drums"  195.0000  0.3667  83  88 0 0.69 0 0
i "GM_Electric_Piano_1"  195.0016  0.1458  67  62 0 0.42 0 0
i "GM_Electric_Piano_1"  195.0026  0.1458  76  64 0 0.42 0 0
i "GM_Electric_Piano_1"  195.0074  0.1458  60  63 0 0.42 0 0
i "GM_Electric_Piano_1"  195.0077  0.1458  71  59 0 0.42 0 0
i "GM_Slap_Bass_1"  195.2083  0.1917  43  76 0 0.50 0 0
i "GM_Standard_Kit"  195.2083  0.1500  46  43 0 0.35 0 0
i "GM_Alto_Sax"  195.4167  0.1146  73  58 0 0.62 0 0
i "GM_Slap_Bass_1"  195.4167  0.1917  47  86 0 0.50 0 0
i "GM_Standard_Kit"  195.4167  0.2500  36  72 0 0.50 0 0
i "GM_Standard_Kit"  195.4167  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  195.4167  0.2500  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  195.4167  0.1146  67  58 0 0.35 0 0
i "GM_Trombone"  195.4167  0.1146  58  57 0 0.28 0 0
i "GM_Trumpet"  195.4167  0.1146  73  57 0 0.72 0 0
i "GM_Slap_Bass_1"  195.6250  0.1917  47  71 0 0.50 0 0
i "GM_Standard_Kit"  195.6250  0.1500  42  43 0 0.35 0 0
i "GM_Woodblock"  195.6250  0.2800  71  92 0 0.31 0 0
i "GM_Slap_Bass_1"  195.8333  0.1917  42  82 0 0.50 0 0
i "GM_Standard_Kit"  195.8333  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"  195.8333  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"  195.8333  0.2500  51  48 0 0.70 0 0
i "GM_Woodblock"  195.8333  0.2800  66  80 0 0.31 0 0
i "GM_Alto_Sax"  195.9375  0.1146  67  55 0 0.62 0 0
i "GM_Standard_Kit"  195.9375  0.2500  36  71 0 0.50 0 0
i "GM_Tenor_Sax"  195.9375  0.1146  67  54 0 0.35 0 0
i "GM_Trombone"  195.9375  0.1146  64  62 0 0.28 0 0
i "GM_Trumpet"  195.9375  0.1146  73  55 0 0.72 0 0
i "GM_Electric_Piano_1"  195.9382  0.1458  69  64 0 0.42 0 0
i "GM_Electric_Piano_1"  195.9384  0.1458  66  59 0 0.42 0 0
i "GM_Electric_Piano_1"  195.9388  0.1458  75  62 0 0.42 0 0
i "GM_Electric_Piano_1"  195.9449  0.1458  59  59 0 0.42 0 0
i "GM_Slap_Bass_1"  196.0417  0.1917  52  68 0 0.50 0 0
i "GM_Standard_Kit"  196.0417  0.1500  42  45 0 0.35 0 0
i "GM_Woodblock"  196.0417  0.2800  66  86 0 0.31 0 0
i "GM_Slap_Bass_1"  196.2500  0.1917  50  86 0 0.50 0 0
i "GM_Standard_Kit"  196.2500  0.2500  36  77 0 0.50 0 0
i "GM_Standard_Kit"  196.2500  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  196.2500  0.2500  51  51 0 0.70 0 0
i "GM_Woodblock"  196.2500  0.2800  71  83 0 0.31 0 0
i "GM_Standard_Kit"  196.4583  0.1500  42  44 0 0.35 0 0
i "GM_Alto_Sax"  196.5625  0.1146  70  61 0 0.62 0 0
i "GM_Tenor_Sax"  196.5625  0.1146  61  57 0 0.35 0 0
i "GM_Trombone"  196.5625  0.1146  61  62 0 0.28 0 0
i "GM_Trumpet"  196.5625  0.1146  70  56 0 0.72 0 0
i "GM_Slap_Bass_1"  196.6667  0.1917  47  84 0 0.50 0 0
i "GM_Standard_Kit"  196.6667  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"  196.6667  0.2000  38  71 0 0.48 0 0
i "GM_Standard_Kit"  196.6667  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  196.6667  0.2500  51  47 0 0.70 0 0
i "GM_Woodblock"  196.6667  0.2800  66  80 0 0.31 0 0
i "GM_Electric_Piano_1"  196.6692  0.1458  75  57 0 0.42 0 0
i "GM_Electric_Piano_1"  196.6701  0.1458  69  59 0 0.42 0 0
i "GM_Electric_Piano_1"  196.6707  0.1458  66  57 0 0.42 0 0
i "GM_Electric_Piano_1"  196.6709  0.1458  59  56 0 0.42 0 0
i "GM_Slap_Bass_1"  196.8750  0.1917  42  68 0 0.50 0 0
i "GM_Standard_Kit"  196.8750  0.1500  46  44 0 0.35 0 0
i "GM_Electric_Piano_1"  196.8775  0.1458  69  63 0 0.42 0 0
i "GM_Electric_Piano_1"  196.8776  0.1458  63  60 0 0.42 0 0
i "GM_Electric_Piano_1"  196.8783  0.1458  66  63 0 0.42 0 0
i "GM_Electric_Piano_1"  196.8827  0.1458  59  60 0 0.42 0 0
i "GM_Alto_Sax"  197.0833  0.1146  73  55 0 0.62 0 0
i "GM_Slap_Bass_1"  197.0833  0.1917  38  85 0 0.50 0 0
i "GM_Standard_Kit"  197.0833  0.2500  36  77 0 0.50 0 0
i "GM_Standard_Kit"  197.0833  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"  197.0833  0.2500  51  47 0 0.70 0 0
i "GM_Taiko_Drum"  197.0833  0.2800  45  88 0 0.49 0 0
i "GM_Tenor_Sax"  197.0833  0.1146  70  59 0 0.35 0 0
i "GM_Trombone"  197.0833  0.1146  67  57 0 0.28 0 0
i "GM_Trumpet"  197.0833  0.1146  76  56 0 0.72 0 0
i "GM_Electric_Piano_1"  197.0846  0.1458  72  63 0 0.42 0 0
i "GM_Electric_Piano_1"  197.0861  0.1458  62  60 0 0.42 0 0
i "GM_Electric_Piano_1"  197.0892  0.1458  69  58 0 0.42 0 0
i "GM_Electric_Piano_1"  197.0899  0.1458  65  59 0 0.42 0 0
i "GM_Slap_Bass_1"  197.2917  0.1917  38  69 0 0.50 0 0
i "GM_Standard_Kit"  197.2917  0.1500  42  45 0 0.35 0 0
i "GM_Taiko_Drum"  197.2917  0.2800  50  96 0 0.49 0 0
i "GM_Slap_Bass_1"  197.5000  0.1917  45  78 0 0.50 0 0
i "GM_Standard_Kit"  197.5000  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"  197.5000  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  197.5000  0.2500  51  51 0 0.70 0 0
i "GM_Taiko_Drum"  197.5000  0.2800  50  95 0 0.49 0 0
i "GM_Alto_Sax"  197.6042  0.1146  76  60 0 0.62 0 0
i "GM_Tenor_Sax"  197.6042  0.1146  67  61 0 0.35 0 0
i "GM_Trombone"  197.6042  0.1146  60  61 0 0.28 0 0
i "GM_Trumpet"  197.6042  0.1146  76  57 0 0.72 0 0
i "GM_Electric_Piano_1"  197.6045  0.1458  57  61 0 0.42 0 0
i "GM_Electric_Piano_1"  197.6059  0.1458  60  66 0 0.42 0 0
i "GM_Electric_Piano_1"  197.6082  0.1458  50  61 0 0.42 0 0
i "GM_Electric_Piano_1"  197.6103  0.1458  65  66 0 0.42 0 0
i "GM_Slap_Bass_1"  197.7083  0.1917  43  73 0 0.50 0 0
i "GM_Standard_Kit"  197.7083  0.1500  42  40 0 0.35 0 0
i "GM_Slap_Bass_1"  197.9167  0.1917  41  81 0 0.50 0 0
i "GM_Standard_Kit"  197.9167  0.2500  36  77 0 0.50 0 0
i "GM_Standard_Kit"  197.9167  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  197.9167  0.2500  51  52 0 0.70 0 0
i "GM_Taiko_Drum"  197.9167  0.2800  50  88 0 0.49 0 0
i "GM_Slap_Bass_1"  198.1250  0.1917  40  71 0 0.50 0 0
i "GM_Standard_Kit"  198.1250  0.1500  42  44 0 0.35 0 0
i "GM_Taiko_Drum"  198.1250  0.2800  38  91 0 0.49 0 0
i "GM_Alto_Sax"  198.2292  0.1146  69  56 0 0.62 0 0
i "GM_Tenor_Sax"  198.2292  0.1146  70  57 0 0.35 0 0
i "GM_Trombone"  198.2292  0.1146  60  60 0 0.28 0 0
i "GM_Trumpet"  198.2292  0.1146  79  56 0 0.72 0 0
i "GM_Electric_Piano_1"  198.2293  0.1458  65  64 0 0.42 0 0
i "GM_Electric_Piano_1"  198.2298  0.1458  62  57 0 0.42 0 0
i "GM_Electric_Piano_1"  198.2320  0.1458  72  58 0 0.42 0 0
i "GM_Electric_Piano_1"  198.2368  0.1458  69  59 0 0.42 0 0
i "GM_Slap_Bass_1"  198.3333  0.1917  38  78 0 0.50 0 0
i "GM_Standard_Kit"  198.3333  0.2000  38  72 0 0.48 0 0
i "GM_Standard_Kit"  198.3333  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  198.3333  0.2500  51  48 0 0.70 0 0
i "GM_Taiko_Drum"  198.3333  0.2800  50  87 0 0.49 0 0
i "GM_Slap_Bass_1"  198.5417  0.1917  45  69 0 0.50 0 0
i "GM_Standard_Kit"  198.5417  0.1500  46  45 0 0.35 0 0
i "GM_Taiko_Drum"  198.5417  0.2800  50  90 0 0.49 0 0
i "GM_Melodic_Tom"  198.7500  0.2800  53  95 0 0.67 0 0
i "GM_Slap_Bass_1"  198.7500  0.1917  46  83 0 0.50 0 0
i "GM_Standard_Kit"  198.7500  0.2500  36  77 0 0.50 0 0
i "GM_Standard_Kit"  198.7500  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"  198.7500  0.2500  51  47 0 0.70 0 0
i "GM_Alto_Sax"  198.9583  0.1146  69  61 0 0.62 0 0
i "GM_Slap_Bass_1"  198.9583  0.1917  49  73 0 0.50 0 0
i "GM_Standard_Kit"  198.9583  0.1500  42  42 0 0.35 0 0
i "GM_Tenor_Sax"  198.9583  0.1146  63  61 0 0.35 0 0
i "GM_Trombone"  198.9583  0.1146  60  58 0 0.28 0 0
i "GM_Trumpet"  198.9583  0.1146  72  54 0 0.72 0 0
i "GM_Electric_Piano_1"  199.0636  0.1458  62  58 0 0.42 0 0
i "GM_Electric_Piano_1"  199.0662  0.1458  65  63 0 0.42 0 0
i "GM_Electric_Piano_1"  199.0669  0.1458  58  58 0 0.42 0 0
i "GM_Electric_Piano_1"  199.0673  0.1458  57  63 0 0.42 0 0
i "GM_Melodic_Tom"  199.1667  0.2800  53  94 0 0.67 0 0
i "GM_Slap_Bass_1"  199.1667  0.1917  51  84 0 0.50 0 0
i "GM_Standard_Kit"  199.1667  0.2000  38  85 0 0.48 0 0
i "GM_Standard_Kit"  199.1667  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  199.1667  0.2500  51  46 0 0.70 0 0
i "GM_Alto_Sax"  199.3750  0.1146  73  55 0 0.62 0 0
i "GM_Melodic_Tom"  199.3750  0.2800  46  95 0 0.67 0 0
i "GM_Standard_Kit"  199.3750  0.1500  46  44 0 0.35 0 0
i "GM_Tenor_Sax"  199.3750  0.1146  63  56 0 0.35 0 0
i "GM_Trombone"  199.3750  0.1146  64  58 0 0.28 0 0
i "GM_Trumpet"  199.3750  0.1146  81  62 0 0.72 0 0
i "GM_Electric_Piano_1"  199.3753  0.1458  69  60 0 0.42 0 0
i "GM_Electric_Piano_1"  199.3765  0.1458  65  60 0 0.42 0 0
i "GM_Electric_Piano_1"  199.3808  0.1458  58  64 0 0.42 0 0
i "GM_Electric_Piano_1"  199.3818  0.1458  74  64 0 0.42 0 0
i "GM_Melodic_Tom"  199.5833  0.2800  46  95 0 0.67 0 0
i "GM_Slap_Bass_1"  199.5833  0.1917  51  81 0 0.50 0 0
i "GM_Standard_Kit"  199.5833  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"  199.5833  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  199.5833  0.2500  51  46 0 0.70 0 0
i "GM_Alto_Sax"  199.6875  0.1146  78  61 0 0.62 0 0
i "GM_Tenor_Sax"  199.6875  0.1146  72  54 0 0.35 0 0
i "GM_Trombone"  199.6875  0.1146  69  60 0 0.28 0 0
i "GM_Trumpet"  199.6875  0.1146  72  61 0 0.72 0 0
i "GM_Melodic_Tom"  199.7917  0.2800  46  91 0 0.67 0 0
i "GM_Slap_Bass_1"  199.7917  0.1917  49  74 0 0.50 0 0
i "GM_Standard_Kit"  199.7917  0.1500  42  41 0 0.35 0 0
i "GM_Melodic_Tom"  200.0000  0.2800  53  96 0 0.67 0 0
i "GM_Slap_Bass_1"  200.0000  0.1917  48  78 0 0.50 0 0
i "GM_Standard_Kit"  200.0000  0.2000  38  76 0 0.48 0 0
i "GM_Standard_Kit"  200.0000  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  200.0000  0.2500  51  52 0 0.70 0 0
i "GM_Electric_Piano_1"  200.0009  0.1458  64  62 0 0.42 0 0
i "GM_Electric_Piano_1"  200.0013  0.1458  53  57 0 0.42 0 0
i "GM_Electric_Piano_1"  200.0035  0.1458  60  63 0 0.42 0 0
i "GM_Electric_Piano_1"  200.0079  0.1458  69  56 0 0.42 0 0
i "GM_Alto_Sax"  200.2083  0.1146  73  59 0 0.62 0 0
i "GM_Melodic_Tom"  200.2083  0.2800  46  92 0 0.67 0 0
i "GM_Slap_Bass_1"  200.2083  0.1917  46  68 0 0.50 0 0
i "GM_Standard_Kit"  200.2083  0.1500  46  45 0 0.35 0 0
i "GM_Tenor_Sax"  200.2083  0.1146  72  61 0 0.35 0 0
i "GM_Trombone"  200.2083  0.1146  64  60 0 0.28 0 0
i "GM_Trumpet"  200.2083  0.1146  76  54 0 0.72 0 0
i "GM_Alto_Sax"  200.4167  0.1146  76  54 0 0.62 0 0
i "GM_Slap_Bass_1"  200.4167  0.1917  41  80 0 0.50 0 0
i "GM_Standard_Kit"  200.4167  0.2500  36  74 0 0.50 0 0
i "GM_Standard_Kit"  200.4167  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  200.4167  0.2500  51  51 0 0.70 0 0
i "GM_Synth_Drum"  200.4167  0.2800  48  84 0 0.29 0 0
i "GM_Tenor_Sax"  200.4167  0.1146  70  61 0 0.35 0 0
i "GM_Trombone"  200.4167  0.1146  67  54 0 0.28 0 0
i "GM_Trumpet"  200.4167  0.1146  79  58 0 0.72 0 0
i "GM_Slap_Bass_1"  200.6250  0.1917  48  76 0 0.50 0 0
i "GM_Standard_Kit"  200.6250  0.1500  42  45 0 0.35 0 0
i "GM_Synth_Drum"  200.6250  0.2800  41  96 0 0.29 0 0
i "GM_Slap_Bass_1"  200.8333  0.1917  41  79 0 0.50 0 0
i "GM_Standard_Kit"  200.8333  0.2000  38  82 0 0.48 0 0
i "GM_Standard_Kit"  200.8333  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"  200.8333  0.2500  51  46 0 0.70 0 0
i "GM_Synth_Drum"  200.8333  0.2800  41  91 0 0.29 0 0
i "GM_Electric_Piano_1"  200.8340  0.1458  53  63 0 0.42 0 0
i "GM_Electric_Piano_1"  200.8342  0.1458  60  65 0 0.42 0 0
i "GM_Electric_Piano_1"  200.8359  0.1458  57  66 0 0.42 0 0
i "GM_Electric_Piano_1"  200.8402  0.1458  52  62 0 0.42 0 0
i "GM_Alto_Sax"  200.9375  0.1146  73  60 0 0.62 0 0
i "GM_Standard_Kit"  200.9375  0.2500  36  70 0 0.50 0 0
i "GM_Tenor_Sax"  200.9375  0.1146  67  55 0 0.35 0 0
i "GM_Trombone"  200.9375  0.1146  67  62 0 0.28 0 0
i "GM_Trumpet"  200.9375  0.1146  79  60 0 0.72 0 0
i "GM_Slap_Bass_1"  201.0417  0.1917  51  75 0 0.50 0 0
i "GM_Standard_Kit"  201.0417  0.1500  46  42 0 0.35 0 0
i "GM_Synth_Drum"  201.0417  0.2800  48  93 0 0.29 0 0
i "GM_Electric_Piano_1"  201.1497  0.1458  57  62 0 0.42 0 0
i "GM_Electric_Piano_1"  201.1500  0.1458  52  66 0 0.42 0 0
i "GM_Electric_Piano_1"  201.1517  0.1458  60  59 0 0.42 0 0
i "GM_Electric_Piano_1"  201.1531  0.1458  53  61 0 0.42 0 0
i "GM_Slap_Bass_1"  201.2500  0.1917  48  80 0 0.50 0 0
i "GM_Standard_Kit"  201.2500  0.2500  36  77 0 0.50 0 0
i "GM_Standard_Kit"  201.2500  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  201.2500  0.2500  51  46 0 0.70 0 0
i "GM_Synth_Drum"  201.2500  0.2800  41  84 0 0.29 0 0
i "GM_Slap_Bass_1"  201.4583  0.1917  46  73 0 0.50 0 0
i "GM_Standard_Kit"  201.4583  0.1500  42  39 0 0.35 0 0
i "GM_Alto_Sax"  201.5625  0.1146  73  59 0 0.62 0 0
i "GM_Tenor_Sax"  201.5625  0.1146  67  56 0 0.35 0 0
i "GM_Trombone"  201.5625  0.1146  59  55 0 0.28 0 0
i "GM_Trumpet"  201.5625  0.1146  76  62 0 0.72 0 0
i "GM_Slap_Bass_1"  201.6667  0.1917  44  80 0 0.50 0 0
i "GM_Standard_Kit"  201.6667  0.2500  36  76 0 0.50 0 0
i "GM_Standard_Kit"  201.6667  0.2000  38  74 0 0.48 0 0
i "GM_Standard_Kit"  201.6667  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  201.6667  0.2500  51  47 0 0.70 0 0
i "GM_Electric_Piano_1"  201.6684  0.1458  60  64 0 0.42 0 0
i "GM_Electric_Piano_1"  201.6686  0.1458  57  61 0 0.42 0 0
i "GM_Electric_Piano_1"  201.6716  0.1458  53  59 0 0.42 0 0
i "GM_Electric_Piano_1"  201.6741  0.1458  52  64 0 0.42 0 0
i "GM_Slap_Bass_1"  201.8750  0.1917  43  74 0 0.50 0 0
i "GM_Standard_Kit"  201.8750  0.1500  46  45 0 0.35 0 0
i "GM_Synth_Drum"  201.8750  0.2800  48  86 0 0.29 0 0
i "GM_Reverse_Cymbal"  202.0833  1.3125  60  86 0 0.47 0 0
i "GM_Slap_Bass_1"  202.0833  0.1917  36  79 0 0.50 0 0
i "GM_Standard_Kit"  202.0833  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"  202.0833  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  202.2917  0.1500  42  40 0 0.35 0 0
i "GM_Electric_Piano_1"  202.3972  0.1146  71  62 0 0.42 0 0
i "GM_Electric_Piano_1"  202.3987  0.1146  60  61 0 0.42 0 0
i "GM_Electric_Piano_1"  202.4018  0.1146  76  65 0 0.42 0 0
i "GM_Electric_Piano_1"  202.4021  0.1146  67  64 0 0.42 0 0
i "GM_Slap_Bass_1"  202.5000  0.1917  36  78 0 0.50 0 0
i "GM_Standard_Kit"  202.5000  0.2500  36  77 0 0.50 0 0
i "GM_Standard_Kit"  202.5000  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"  202.5000  0.1500  42  55 0 0.35 0 0
i "GM_Slap_Bass_1"  202.7083  0.1917  46  72 0 0.50 0 0
i "GM_Standard_Kit"  202.7083  0.2500  36  71 0 0.50 0 0
i "GM_Standard_Kit"  202.7083  0.1500  42  42 0 0.35 0 0
i "GM_Standard_Kit"  202.7083  0.1800  50  86 0 0.40 0 0
i "GM_Electric_Piano_1"  202.7090  0.1146  59  63 0 0.42 0 0
i "GM_Electric_Piano_1"  202.7106  0.1146  67  65 0 0.42 0 0
i "GM_Electric_Piano_1"  202.7110  0.1146  60  61 0 0.42 0 0
i "GM_Electric_Piano_1"  202.7121  0.1146  64  59 0 0.42 0 0
i "GM_Slap_Bass_1"  202.9167  0.1917  43  86 0 0.50 0 0
i "GM_Standard_Kit"  202.9167  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  202.9167  0.1800  48  88 0 0.44 0 0
i "GM_Standard_Kit"  203.1250  0.2000  38  81 0 0.48 0 0
i "GM_Standard_Kit"  203.1250  0.1500  42  43 0 0.35 0 0
i "GM_Standard_Kit"  203.1250  0.1800  47  87 0 0.48 0 0
i "GM_Slap_Bass_1"  203.3333  0.1917  39  80 0 0.50 0 0
i "GM_Standard_Kit"  203.3333  0.1500  46  52 0 0.35 0 0
i "GM_Standard_Kit"  203.3333  0.1800  45  88 0 0.52 0 0
i "GM_Standard_Kit"  203.3333  0.2000  49  82 0 0.70 0 0
i "GM_Electric_Piano_1"  203.3337  0.1146  67  66 0 0.42 0 0
i "GM_Electric_Piano_1"  203.3365  0.1146  60  63 0 0.42 0 0
i "GM_Electric_Piano_1"  203.3369  0.1146  59  61 0 0.42 0 0
i "GM_Electric_Piano_1"  203.3372  0.1146  64  65 0 0.42 0 0
i "GM_Guitar_Fret_Noise"  203.5417  1.5000  60  86 0 0.65 0 0
i "GM_Slap_Bass_1"  203.5417  0.1917  44  81 0 0.50 0 0
i "GM_Standard_Kit"  203.5417  0.2500  36  75 0 0.50 0 0
i "GM_Standard_Kit"  203.5417  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  203.5417  0.2500  51  50 0 0.70 0 0
i "GM_Standard_Kit"  203.5417  0.5500  49  88 0 0.72 0 0
i "GM_Slap_Bass_1"  203.7500  0.1917  51  68 0 0.50 0 0
i "GM_Standard_Kit"  203.7500  0.1500  42  40 0 0.35 0 0
i "GM_Electric_Piano_1"  203.7544  0.1458  56  65 0 0.42 0 0
i "GM_Electric_Piano_1"  203.7565  0.1458  63  63 0 0.42 0 0
i "GM_Electric_Piano_1"  203.7576  0.1458  60  62 0 0.42 0 0
i "GM_Electric_Piano_1"  203.7576  0.1458  55  64 0 0.42 0 0
i "GM_Slap_Bass_1"  203.9583  0.1917  44  83 0 0.50 0 0
i "GM_Standard_Kit"  203.9583  0.2000  38  78 0 0.48 0 0
i "GM_Standard_Kit"  203.9583  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  203.9583  0.2500  51  46 0 0.70 0 0
i "GM_Alto_Sax"  204.0625  0.1146  76  54 0 0.62 0 0
i "GM_Tenor_Sax"  204.0625  0.1146  61  57 0 0.35 0 0
i "GM_Trombone"  204.0625  0.1146  62  61 0 0.28 0 0
i "GM_Trumpet"  204.0625  0.1146  70  61 0 0.72 0 0
i "GM_Slap_Bass_1"  204.1667  0.1917  42  74 0 0.50 0 0
i "GM_Standard_Kit"  204.1667  0.1500  42  41 0 0.35 0 0
i "GM_Electric_Piano_1"  204.1667  0.1458  72  66 0 0.42 0 0
i "GM_Electric_Piano_1"  204.1680  0.1458  63  56 0 0.42 0 0
i "GM_Electric_Piano_1"  204.1688  0.1458  67  59 0 0.42 0 0
i "GM_Electric_Piano_1"  204.1728  0.1458  56  65 0 0.42 0 0
i "GM_Guitar_Fret_Noise"  204.3750  0.6750  60  80 0 0.65 0 0
i "GM_Slap_Bass_1"  204.3750  0.1917  51  82 0 0.50 0 0
i "GM_Standard_Kit"  204.3750  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"  204.3750  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  204.3750  0.2500  51  51 0 0.70 0 0
i "GM_Electric_Piano_1"  204.4835  0.1458  63  59 0 0.42 0 0
i "GM_Electric_Piano_1"  204.4835  0.1458  67  58 0 0.42 0 0
i "GM_Electric_Piano_1"  204.4860  0.1458  60  62 0 0.42 0 0
i "GM_Electric_Piano_1"  204.4863  0.1458  56  66 0 0.42 0 0
i "GM_Standard_Kit"  204.5833  0.1500  42  43 0 0.35 0 0
i "GM_Alto_Sax"  204.7917  0.1146  67  62 0 0.62 0 0
i "GM_Slap_Bass_1"  204.7917  0.1917  47  84 0 0.50 0 0
i "GM_Standard_Kit"  204.7917  0.2000  38  70 0 0.48 0 0
i "GM_Standard_Kit"  204.7917  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  204.7917  0.2500  51  48 0 0.70 0 0
i "GM_Tenor_Sax"  204.7917  0.1146  61  54 0 0.35 0 0
i "GM_Trombone"  204.7917  0.1146  67  60 0 0.28 0 0
i "GM_Trumpet"  204.7917  0.1146  70  62 0 0.72 0 0
i "GM_Alto_Sax"  205.0000  0.1146  76  55 0 0.62 0 0
i "GM_Slap_Bass_1"  205.0000  0.1917  46  69 0 0.50 0 0
i "GM_Standard_Kit"  205.0000  0.1500  46  42 0 0.35 0 0
i "GM_Tenor_Sax"  205.0000  0.1146  70  56 0 0.35 0 0
i "GM_Trombone"  205.0000  0.1146  62  54 0 0.28 0 0
i "GM_Trumpet"  205.0000  0.1146  74  57 0 0.72 0 0
i "GM_Electric_Piano_1"  205.0021  0.1458  63  63 0 0.42 0 0
i "GM_Electric_Piano_1"  205.0038  0.1458  56  66 0 0.42 0 0
i "GM_Electric_Piano_1"  205.0045  0.1458  67  57 0 0.42 0 0
i "GM_Electric_Piano_1"  205.0069  0.1458  72  62 0 0.42 0 0
i "GM_Breath_Noise"  205.2083  1.5000  60  86 0 0.26 0 0
i "GM_Slap_Bass_1"  205.2083  0.1917  39  82 0 0.50 0 0
i "GM_Standard_Kit"  205.2083  0.2500  36  76 0 0.50 0 0
i "GM_Standard_Kit"  205.2083  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  205.2083  0.2500  51  50 0 0.70 0 0
i "GM_Slap_Bass_1"  205.4167  0.1917  46  69 0 0.50 0 0
i "GM_Standard_Kit"  205.4167  0.1500  42  42 0 0.35 0 0
i "GM_Alto_Sax"  205.6250  0.1146  71  62 0 0.62 0 0
i "GM_Slap_Bass_1"  205.6250  0.1917  39  82 0 0.50 0 0
i "GM_Standard_Kit"  205.6250  0.2000  38  85 0 0.48 0 0
i "GM_Standard_Kit"  205.6250  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"  205.6250  0.2500  51  51 0 0.70 0 0
i "GM_Tenor_Sax"  205.6250  0.1146  68  58 0 0.35 0 0
i "GM_Trombone"  205.6250  0.1146  65  54 0 0.28 0 0
i "GM_Trumpet"  205.6250  0.1146  74  59 0 0.72 0 0
i "GM_Electric_Piano_1"  205.6258  0.1458  51  66 0 0.42 0 0
i "GM_Electric_Piano_1"  205.6282  0.1458  58  56 0 0.42 0 0
i "GM_Electric_Piano_1"  205.6288  0.1458  62  60 0 0.42 0 0
i "GM_Electric_Piano_1"  205.6303  0.1458  67  62 0 0.42 0 0
i "GM_Standard_Kit"  205.8333  0.1500  42  42 0 0.35 0 0
i "GM_Alto_Sax"  205.9375  0.1146  71  61 0 0.62 0 0
i "GM_Tenor_Sax"  205.9375  0.1146  68  58 0 0.35 0 0
i "GM_Trombone"  205.9375  0.1146  65  62 0 0.28 0 0
i "GM_Trumpet"  205.9375  0.1146  81  62 0 0.72 0 0
i "GM_Electric_Piano_1"  205.9382  0.1458  63  66 0 0.42 0 0
i "GM_Electric_Piano_1"  205.9384  0.1458  70  66 0 0.42 0 0
i "GM_Electric_Piano_1"  205.9385  0.1458  74  65 0 0.42 0 0
i "GM_Electric_Piano_1"  205.9401  0.1458  67  58 0 0.42 0 0
i "GM_Breath_Noise"  206.0417  0.6750  60  80 0 0.26 0 0
i "GM_Slap_Bass_1"  206.0417  0.1917  46  81 0 0.50 0 0
i "GM_Standard_Kit"  206.0417  0.2500  36  75 0 0.50 0 0
i "GM_Standard_Kit"  206.0417  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"  206.0417  0.2500  51  46 0 0.70 0 0
i "GM_Slap_Bass_1"  206.2500  0.1917  44  68 0 0.50 0 0
i "GM_Standard_Kit"  206.2500  0.1500  42  42 0 0.35 0 0
i "GM_Alto_Sax"  206.4583  0.1146  74  54 0 0.62 0 0
i "GM_Slap_Bass_1"  206.4583  0.1917  42  84 0 0.50 0 0
i "GM_Standard_Kit"  206.4583  0.2500  36  72 0 0.50 0 0
i "GM_Standard_Kit"  206.4583  0.2000  38  72 0 0.48 0 0
i "GM_Standard_Kit"  206.4583  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  206.4583  0.2500  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  206.4583  0.1146  65  57 0 0.35 0 0
i "GM_Trombone"  206.4583  0.1146  62  57 0 0.28 0 0
i "GM_Trumpet"  206.4583  0.1146  81  55 0 0.72 0 0
i "GM_Electric_Piano_1"  206.4602  0.1458  65  65 0 0.42 0 0
i "GM_Electric_Piano_1"  206.4619  0.1458  57  57 0 0.42 0 0
i "GM_Electric_Piano_1"  206.4625  0.1458  58  58 0 0.42 0 0
i "GM_Electric_Piano_1"  206.4639  0.1458  62  56 0 0.42 0 0
i "GM_Slap_Bass_1"  206.6667  0.1917  41  71 0 0.50 0 0
i "GM_Standard_Kit"  206.6667  0.1500  46  43 0 0.35 0 0
i "GM_Seashore"  206.8750  1.5000  60  86 0 0.44 0 0
i "GM_Slap_Bass_1"  206.8750  0.1917  46  81 0 0.50 0 0
i "GM_Standard_Kit"  206.8750  0.2500  36  75 0 0.50 0 0
i "GM_Standard_Kit"  206.8750  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"  206.8750  0.2500  51  46 0 0.70 0 0
i "GM_Slap_Bass_1"  207.0833  0.1917  41  71 0 0.50 0 0
i "GM_Standard_Kit"  207.0833  0.1500  42  41 0 0.35 0 0
i "GM_Slap_Bass_1"  207.2917  0.1917  46  82 0 0.50 0 0
i "GM_Standard_Kit"  207.2917  0.2000  38  82 0 0.48 0 0
i "GM_Standard_Kit"  207.2917  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  207.2917  0.2500  51  48 0 0.70 0 0
i "GM_Electric_Piano_1"  207.2919  0.1458  65  56 0 0.42 0 0
i "GM_Electric_Piano_1"  207.2924  0.1458  69  65 0 0.42 0 0
i "GM_Electric_Piano_1"  207.2934  0.1458  58  58 0 0.42 0 0
i "GM_Electric_Piano_1"  207.2947  0.1458  74  60 0 0.42 0 0
i "GM_Alto_Sax"  207.3958  0.1146  73  61 0 0.62 0 0
i "GM_Tenor_Sax"  207.3958  0.1146  63  56 0 0.35 0 0
i "GM_Trombone"  207.3958  0.1146  64  61 0 0.28 0 0
i "GM_Trumpet"  207.3958  0.1146  72  60 0 0.72 0 0
i "GM_Standard_Kit"  207.5000  0.1500  46  44 0 0.35 0 0
i "GM_Electric_Piano_1"  207.6058  0.1458  65  59 0 0.42 0 0
i "GM_Electric_Piano_1"  207.6063  0.1458  62  64 0 0.42 0 0
i "GM_Electric_Piano_1"  207.6085  0.1458  58  65 0 0.42 0 0
i "GM_Electric_Piano_1"  207.6099  0.1458  57  62 0 0.42 0 0
i "GM_Seashore"  207.7083  0.6750  60  80 0 0.44 0 0
i "GM_Slap_Bass_1"  207.7083  0.1917  41  82 0 0.50 0 0
i "GM_Standard_Kit"  207.7083  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  207.7083  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  207.7083  0.2500  51  50 0 0.70 0 0
i "GM_Standard_Kit"  207.9167  0.1500  42  40 0 0.35 0 0
i "GM_Alto_Sax"  208.1250  0.1146  73  62 0 0.62 0 0
i "GM_Slap_Bass_1"  208.1250  0.1917  49  85 0 0.50 0 0
i "GM_Standard_Kit"  208.1250  0.2000  38  71 0 0.48 0 0
i "GM_Standard_Kit"  208.1250  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"  208.1250  0.2500  51  49 0 0.70 0 0
i "GM_Tenor_Sax"  208.1250  0.1146  72  57 0 0.35 0 0
i "GM_Trombone"  208.1250  0.1146  69  54 0 0.28 0 0
i "GM_Trumpet"  208.1250  0.1146  76  61 0 0.72 0 0
i "GM_Electric_Piano_1"  208.1309  0.1458  65  64 0 0.42 0 0
i "GM_Electric_Piano_1"  208.1314  0.1458  62  56 0 0.42 0 0
i "GM_Electric_Piano_1"  208.1317  0.1458  58  64 0 0.42 0 0
i "GM_Electric_Piano_1"  208.1327  0.1458  57  64 0 0.42 0 0
i "GM_Alto_Sax"  208.3333  0.1146  78  54 0 0.62 0 0
i "GM_Slap_Bass_1"  208.3333  0.1917  48  72 0 0.50 0 0
i "GM_Standard_Kit"  208.3333  0.1500  46  43 0 0.35 0 0
i "GM_Tenor_Sax"  208.3333  0.1146  67  57 0 0.35 0 0
i "GM_Trombone"  208.3333  0.1146  60  58 0 0.28 0 0
i "GM_Trumpet"  208.3333  0.1146  72  58 0 0.72 0 0
i "GM_Bird_Tweet"  208.5417  1.5000  90  86 0 0.63 0 0
i "GM_Slap_Bass_1"  208.5417  0.1917  45  80 0 0.50 0 0
i "GM_Standard_Kit"  208.5417  0.2500  36  74 0 0.50 0 0
i "GM_Standard_Kit"  208.5417  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  208.5417  0.2500  51  46 0 0.70 0 0
i "GM_Slap_Bass_1"  208.7500  0.1917  52  76 0 0.50 0 0
i "GM_Standard_Kit"  208.7500  0.1500  42  43 0 0.35 0 0
i "GM_Alto_Sax"  208.8542  0.1146  71  62 0 0.62 0 0
i "GM_Tenor_Sax"  208.8542  0.1146  71  58 0 0.35 0 0
i "GM_Trombone"  208.8542  0.1146  62  61 0 0.28 0 0
i "GM_Trumpet"  208.8542  0.1146  74  62 0 0.72 0 0
i "GM_Slap_Bass_1"  208.9583  0.1917  45  83 0 0.50 0 0
i "GM_Standard_Kit"  208.9583  0.2000  38  82 0 0.48 0 0
i "GM_Standard_Kit"  208.9583  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  208.9583  0.2500  51  48 0 0.70 0 0
i "GM_Electric_Piano_1"  208.9641  0.1458  67  63 0 0.42 0 0
i "GM_Electric_Piano_1"  208.9646  0.1458  73  62 0 0.42 0 0
i "GM_Electric_Piano_1"  208.9655  0.1458  57  57 0 0.42 0 0
i "GM_Electric_Piano_1"  208.9661  0.1458  64  58 0 0.42 0 0
i "GM_Alto_Sax"  209.1667  0.1146  71  55 0 0.62 0 0
i "GM_Slap_Bass_1"  209.1667  0.1917  43  69 0 0.50 0 0
i "GM_Standard_Kit"  209.1667  0.1500  42  45 0 0.35 0 0
i "GM_Tenor_Sax"  209.1667  0.1146  71  54 0 0.35 0 0
i "GM_Trombone"  209.1667  0.1146  62  62 0 0.28 0 0
i "GM_Trumpet"  209.1667  0.1146  74  60 0 0.72 0 0
i "GM_Electric_Piano_1"  209.2714  0.1458  61  62 0 0.42 0 0
i "GM_Electric_Piano_1"  209.2727  0.1458  67  58 0 0.42 0 0
i "GM_Electric_Piano_1"  209.2728  0.1458  64  58 0 0.42 0 0
i "GM_Electric_Piano_1"  209.2741  0.1458  57  66 0 0.42 0 0
i "GM_Bird_Tweet"  209.3750  0.6750  96  80 0 0.63 0 0
i "GM_Slap_Bass_1"  209.3750  0.1917  52  80 0 0.50 0 0
i "GM_Standard_Kit"  209.3750  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"  209.3750  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  209.3750  0.2500  51  52 0 0.70 0 0
i "GM_Slap_Bass_1"  209.5833  0.1917  50  68 0 0.50 0 0
i "GM_Standard_Kit"  209.5833  0.1500  42  44 0 0.35 0 0
i "GM_Alto_Sax"  209.7917  0.1146  71  59 0 0.62 0 0
i "GM_Slap_Bass_1"  209.7917  0.1917  48  78 0 0.50 0 0
i "GM_Standard_Kit"  209.7917  0.2000  38  71 0 0.48 0 0
i "GM_Standard_Kit"  209.7917  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"  209.7917  0.2500  51  50 0 0.70 0 0
i "GM_Tenor_Sax"  209.7917  0.1146  62  58 0 0.35 0 0
i "GM_Trombone"  209.7917  0.1146  62  61 0 0.28 0 0
i "GM_Trumpet"  209.7917  0.1146  74  54 0 0.72 0 0
i "GM_Electric_Piano_1"  209.7941  0.1458  64  62 0 0.42 0 0
i "GM_Electric_Piano_1"  209.7976  0.1458  57  65 0 0.42 0 0
i "GM_Electric_Piano_1"  209.7992  0.1458  55  65 0 0.42 0 0
i "GM_Electric_Piano_1"  209.7996  0.1458  61  64 0 0.42 0 0
i "GM_Standard_Kit"  210.0000  0.1500  46  43 0 0.35 0 0
i "GM_Slap_Bass_1"  210.2083  0.1917  40  79 0 0.50 0 0
i "GM_Standard_Kit"  210.2083  0.2500  36  72 0 0.50 0 0
i "GM_Standard_Kit"  210.2083  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  210.2083  0.2500  51  51 0 0.70 0 0
i "GM_Telephone_Ring"  210.2083  1.5000  60  86 0 0.24 0 0
i "GM_Alto_Sax"  210.4167  0.1146  75  61 0 0.62 0 0
i "GM_Standard_Kit"  210.4167  0.1500  42  42 0 0.35 0 0
i "GM_Tenor_Sax"  210.4167  0.1146  72  58 0 0.35 0 0
i "GM_Trombone"  210.4167  0.1146  62  55 0 0.28 0 0
i "GM_Trumpet"  210.4167  0.1146  74  59 0 0.72 0 0
i "GM_Electric_Piano_1"  210.5224  0.1458  67  56 0 0.42 0 0
i "GM_Electric_Piano_1"  210.5271  0.1458  62  58 0 0.42 0 0
i "GM_Electric_Piano_1"  210.5279  0.1458  59  63 0 0.42 0 0
i "GM_Electric_Piano_1"  210.5282  0.1458  52  57 0 0.42 0 0
i "GM_Slap_Bass_1"  210.6250  0.1917  43  81 0 0.50 0 0
i "GM_Standard_Kit"  210.6250  0.2000  38  85 0 0.48 0 0
i "GM_Standard_Kit"  210.6250  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  210.6250  0.2500  51  51 0 0.70 0 0
i "GM_Standard_Kit"  210.7292  0.2500  36  75 0 0.50 0 0
i "GM_Alto_Sax"  210.8333  0.1146  71  62 0 0.62 0 0
i "GM_Slap_Bass_1"  210.8333  0.1917  45  72 0 0.50 0 0
i "GM_Standard_Kit"  210.8333  0.1500  46  40 0 0.35 0 0
i "GM_Tenor_Sax"  210.8333  0.1146  69  60 0 0.35 0 0
i "GM_Trombone"  210.8333  0.1146  69  59 0 0.28 0 0
i "GM_Trumpet"  210.8333  0.1146  74  60 0 0.72 0 0
i "GM_Electric_Piano_1"  210.8364  0.1458  62  62 0 0.42 0 0
i "GM_Electric_Piano_1"  210.8393  0.1458  67  61 0 0.42 0 0
i "GM_Electric_Piano_1"  210.8398  0.1458  59  60 0 0.42 0 0
i "GM_Electric_Piano_1"  210.8411  0.1458  52  61 0 0.42 0 0
i "GM_Slap_Bass_1"  211.0417  0.1917  47  86 0 0.50 0 0
i "GM_Standard_Kit"  211.0417  0.2500  36  70 0 0.50 0 0
i "GM_Standard_Kit"  211.0417  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"  211.0417  0.2500  51  52 0 0.70 0 0
i "GM_Telephone_Ring"  211.0417  0.6750  60  80 0 0.24 0 0
i "GM_Alto_Sax"  211.1458  0.1146  78  62 0 0.62 0 0
i "GM_Tenor_Sax"  211.1458  0.1146  69  62 0 0.35 0 0
i "GM_Trombone"  211.1458  0.1146  66  61 0 0.28 0 0
i "GM_Trumpet"  211.1458  0.1146  78  56 0 0.72 0 0
i "GM_Slap_Bass_1"  211.2500  0.1917  50  75 0 0.50 0 0
i "GM_Standard_Kit"  211.2500  0.1500  42  44 0 0.35 0 0
i "GM_Slap_Bass_1"  211.4583  0.1917  47  85 0 0.50 0 0
i "GM_Standard_Kit"  211.4583  0.2500  36  73 0 0.50 0 0
i "GM_Standard_Kit"  211.4583  0.2000  38  72 0 0.48 0 0
i "GM_Standard_Kit"  211.4583  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  211.4583  0.2500  51  46 0 0.70 0 0
i "GM_Electric_Piano_1"  211.4613  0.1458  64  63 0 0.42 0 0
i "GM_Electric_Piano_1"  211.4639  0.1458  67  65 0 0.42 0 0
i "GM_Electric_Piano_1"  211.4645  0.1458  62  64 0 0.42 0 0
i "GM_Electric_Piano_1"  211.4662  0.1458  71  64 0 0.42 0 0
i "GM_Alto_Sax"  211.6667  0.1146  78  55 0 0.62 0 0
i "GM_Slap_Bass_1"  211.6667  0.1917  45  69 0 0.50 0 0
i "GM_Standard_Kit"  211.6667  0.1500  46  39 0 0.35 0 0
i "GM_Tenor_Sax"  211.6667  0.1146  72  59 0 0.35 0 0
i "GM_Trombone"  211.6667  0.1146  62  55 0 0.28 0 0
i "GM_Trumpet"  211.6667  0.1146  81  59 0 0.72 0 0
i "GM_Helicopter"  211.8750  1.5000  60  86 0 0.42 0 0
i "GM_Slap_Bass_1"  211.8750  0.1917  36  86 0 0.50 0 0
i "GM_Standard_Kit"  211.8750  0.2500  36  77 0 0.50 0 0
i "GM_Standard_Kit"  211.8750  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  211.8750  0.2500  51  50 0 0.70 0 0
i "GM_Standard_Kit"  212.0833  0.1500  42  39 0 0.35 0 0
i "GM_Alto_Sax"  212.1875  0.1146  68  56 0 0.62 0 0
i "GM_Tenor_Sax"  212.1875  0.1146  65  58 0 0.35 0 0
i "GM_Trombone"  212.1875  0.1146  59  62 0 0.28 0 0
i "GM_Trumpet"  212.1875  0.1146  74  55 0 0.72 0 0
i "GM_Slap_Bass_1"  212.2917  0.1917  36  81 0 0.50 0 0
i "GM_Standard_Kit"  212.2917  0.2000  38  82 0 0.48 0 0
i "GM_Standard_Kit"  212.2917  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  212.2917  0.2500  51  46 0 0.70 0 0
i "GM_Electric_Piano_1"  212.2933  0.1458  64  61 0 0.42 0 0
i "GM_Electric_Piano_1"  212.2939  0.1458  60  58 0 0.42 0 0
i "GM_Electric_Piano_1"  212.2951  0.1458  67  61 0 0.42 0 0
i "GM_Electric_Piano_1"  212.2980  0.1458  71  63 0 0.42 0 0
i "GM_Alto_Sax"  212.5000  0.1146  75  58 0 0.62 0 0
i "GM_Slap_Bass_1"  212.5000  0.1917  46  76 0 0.50 0 0
i "GM_Standard_Kit"  212.5000  0.1500  42  42 0 0.35 0 0
i "GM_Tenor_Sax"  212.5000  0.1146  65  54 0 0.35 0 0
i "GM_Trombone"  212.5000  0.1146  59  62 0 0.28 0 0
i "GM_Trumpet"  212.5000  0.1146  78  58 0 0.72 0 0
i "GM_Electric_Piano_1"  212.6062  0.1458  71  61 0 0.42 0 0
i "GM_Electric_Piano_1"  212.6063  0.1458  67  59 0 0.42 0 0
i "GM_Electric_Piano_1"  212.6063  0.1458  60  62 0 0.42 0 0
i "GM_Electric_Piano_1"  212.6100  0.1458  76  62 0 0.42 0 0
i "GM_Helicopter"  212.7083  0.6750  60  80 0 0.42 0 0
i "GM_Slap_Bass_1"  212.7083  0.1917  43  85 0 0.50 0 0
i "GM_Standard_Kit"  212.7083  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  212.7083  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"  212.7083  0.2500  51  47 0 0.70 0 0
i "GM_Slap_Bass_1"  212.9167  0.1917  41  72 0 0.50 0 0
i "GM_Standard_Kit"  212.9167  0.1500  42  45 0 0.35 0 0
i "GM_Alto_Sax"  213.1250  0.1146  71  55 0 0.62 0 0
i "GM_Slap_Bass_1"  213.1250  0.1917  39  78 0 0.50 0 0
i "GM_Standard_Kit"  213.1250  0.2000  38  72 0 0.48 0 0
i "GM_Standard_Kit"  213.1250  0.1500  42  52 0 0.35 0 0
i "GM_Standard_Kit"  213.1250  0.2500  51  49 0 0.70 0 0
i "GM_Tenor_Sax"  213.1250  0.1146  69  57 0 0.35 0 0
i "GM_Trombone"  213.1250  0.1146  59  60 0 0.28 0 0
i "GM_Trumpet"  213.1250  0.1146  71  55 0 0.72 0 0
i "GM_Electric_Piano_1"  213.1260  0.1458  55  61 0 0.42 0 0
i "GM_Electric_Piano_1"  213.1311  0.1458  71  62 0 0.42 0 0
i "GM_Electric_Piano_1"  213.1323  0.1458  66  63 0 0.42 0 0
i "GM_Electric_Piano_1"  213.1327  0.1458  62  60 0 0.42 0 0
i "GM_Slap_Bass_1"  213.3333  0.1917  38  70 0 0.50 0 0
i "GM_Standard_Kit"  213.3333  0.1500  46  42 0 0.35 0 0
i "GM_Alto_Sax"  213.5417  0.1146  70  59 0 0.62 0 0
i "GM_Applause"  213.5417  1.5000  60  86 0 0.60 0 0
i "GM_Slap_Bass_1"  213.5417  0.1917  43  86 0 0.50 0 0
i "GM_Standard_Kit"  213.5417  0.2500  36  72 0 0.50 0 0
i "GM_Standard_Kit"  213.5417  0.1500  42  57 0 0.35 0 0
i "GM_Standard_Kit"  213.5417  0.2500  51  47 0 0.70 0 0
i "GM_Tenor_Sax"  213.5417  0.1146  69  56 0 0.35 0 0
i "GM_Trombone"  213.5417  0.1146  69  61 0 0.28 0 0
i "GM_Trumpet"  213.5417  0.1146  73  57 0 0.72 0 0
i "GM_Slap_Bass_1"  213.7500  0.1917  48  72 0 0.50 0 0
i "GM_Standard_Kit"  213.7500  0.1500  42  43 0 0.35 0 0
i "GM_Electric_Piano_1"  213.8557  0.1458  55  64 0 0.42 0 0
i "GM_Electric_Piano_1"  213.8580  0.1458  62  60 0 0.42 0 0
i "GM_Electric_Piano_1"  213.8597  0.1458  66  66 0 0.42 0 0
i "GM_Electric_Piano_1"  213.8618  0.1458  71  65 0 0.42 0 0
i "GM_Slap_Bass_1"  213.9583  0.1917  46  82 0 0.50 0 0
i "GM_Standard_Kit"  213.9583  0.2000  38  84 0 0.48 0 0
i "GM_Standard_Kit"  213.9583  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  213.9583  0.2500  51  52 0 0.70 0 0
i "GM_Alto_Sax"  214.0625  0.1146  70  59 0 0.62 0 0
i "GM_Tenor_Sax"  214.0625  0.1146  72  57 0 0.35 0 0
i "GM_Trombone"  214.0625  0.1146  69  61 0 0.28 0 0
i "GM_Trumpet"  214.0625  0.1146  73  59 0 0.72 0 0
i "GM_Slap_Bass_1"  214.1667  0.1917  45  73 0 0.50 0 0
i "GM_Standard_Kit"  214.1667  0.1500  42  39 0 0.35 0 0
i "GM_Electric_Piano_1"  214.1683  0.1458  62  63 0 0.42 0 0
i "GM_Electric_Piano_1"  214.1710  0.1458  54  65 0 0.42 0 0
i "GM_Electric_Piano_1"  214.1710  0.1458  55  60 0 0.42 0 0
i "GM_Electric_Piano_1"  214.1738  0.1458  59  64 0 0.42 0 0
i "GM_Applause"  214.3750  0.6750  60  80 0 0.60 0 0
i "GM_Slap_Bass_1"  214.3750  0.1917  43  86 0 0.50 0 0
i "GM_Standard_Kit"  214.3750  0.2500  36  72 0 0.50 0 0
i "GM_Standard_Kit"  214.3750  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"  214.3750  0.2500  51  46 0 0.70 0 0
i "GM_Standard_Kit"  214.5833  0.1500  42  41 0 0.35 0 0
i "GM_Alto_Sax"  214.6875  0.1146  78  56 0 0.62 0 0
i "GM_Tenor_Sax"  214.6875  0.1146  69  54 0 0.35 0 0
i "GM_Trombone"  214.6875  0.1146  69  55 0 0.28 0 0
i "GM_Trumpet"  214.6875  0.1146  78  57 0 0.72 0 0
i "GM_Slap_Bass_1"  214.7917  0.1917  41  84 0 0.50 0 0
i "GM_Standard_Kit"  214.7917  0.2000  38  75 0 0.48 0 0
i "GM_Standard_Kit"  214.7917  0.1500  42  53 0 0.35 0 0
i "GM_Standard_Kit"  214.7917  0.2500  51  48 0 0.70 0 0
i "GM_Electric_Piano_1"  214.7961  0.1458  66  66 0 0.42 0 0
i "GM_Electric_Piano_1"  214.7964  0.1458  62  58 0 0.42 0 0
i "GM_Electric_Piano_1"  214.7969  0.1458  71  60 0 0.42 0 0
i "GM_Electric_Piano_1"  214.7977  0.1458  55  65 0 0.42 0 0
i "GM_Slap_Bass_1"  215.0000  0.1917  43  71 0 0.50 0 0
i "GM_Standard_Kit"  215.0000  0.1500  46  44 0 0.35 0 0
i "GM_Gunshot"  215.2083  1.3125  60  86 0 0.22 0 0
i "GM_Slap_Bass_1"  215.2083  0.1917  38  79 0 0.50 0 0
i "GM_Standard_Kit"  215.2083  0.2500  36  69 0 0.50 0 0
i "GM_Standard_Kit"  215.2083  0.1500  42  51 0 0.35 0 0
i "GM_Electric_Piano_1"  215.2094  0.1146  60  56 0 0.42 0 0
i "GM_Electric_Piano_1"  215.2111  0.1146  62  63 0 0.42 0 0
i "GM_Electric_Piano_1"  215.2130  0.1146  69  57 0 0.42 0 0
i "GM_Electric_Piano_1"  215.2163  0.1146  66  66 0 0.42 0 0
i "GM_Slap_Bass_1"  215.4167  0.1917  41  68 0 0.50 0 0
i "GM_Standard_Kit"  215.4167  0.1500  42  45 0 0.35 0 0
i "GM_Slap_Bass_1"  215.6250  0.1917  43  81 0 0.50 0 0
i "GM_Standard_Kit"  215.6250  0.2000  38  85 0 0.48 0 0
i "GM_Standard_Kit"  215.6250  0.1500  42  56 0 0.35 0 0
i "GM_Electric_Piano_1"  215.7292  0.1146  60  58 0 0.42 0 0
i "GM_Electric_Piano_1"  215.7326  0.1146  62  66 0 0.42 0 0
i "GM_Electric_Piano_1"  215.7335  0.1146  69  60 0 0.42 0 0
i "GM_Electric_Piano_1"  215.7363  0.1146  66  65 0 0.42 0 0
i "GM_Slap_Bass_1"  215.8333  0.1917  45  74 0 0.50 0 0
i "GM_Standard_Kit"  215.8333  0.2500  36  72 0 0.50 0 0
i "GM_Standard_Kit"  215.8333  0.1500  42  44 0 0.35 0 0
i "GM_Standard_Kit"  215.8333  0.1800  50  78 0 0.40 0 0
i "GM_Slap_Bass_1"  216.0417  0.1917  43  84 0 0.50 0 0
i "GM_Standard_Kit"  216.0417  0.1500  42  51 0 0.35 0 0
i "GM_Standard_Kit"  216.0417  0.1800  48  85 0 0.44 0 0
i "GM_Slap_Bass_1"  216.2500  0.1917  41  76 0 0.50 0 0
i "GM_Standard_Kit"  216.2500  0.2000  38  85 0 0.48 0 0
i "GM_Standard_Kit"  216.2500  0.1500  42  45 0 0.35 0 0
i "GM_Standard_Kit"  216.2500  0.1800  47  80 0 0.48 0 0
i "GM_Electric_Piano_1"  216.3560  0.1146  60  66 0 0.42 0 0
i "GM_Electric_Piano_1"  216.3573  0.1146  66  61 0 0.42 0 0
i "GM_Electric_Piano_1"  216.3583  0.1146  57  63 0 0.42 0 0
i "GM_Electric_Piano_1"  216.3588  0.1146  50  58 0 0.42 0 0
i "GM_Slap_Bass_1"  216.4583  0.1917  40  86 0 0.50 0 0
i "GM_Standard_Kit"  216.4583  0.1500  46  55 0 0.35 0 0
i "GM_Standard_Kit"  216.4583  0.1800  45  76 0 0.52 0 0
i "GM_Standard_Kit"  216.4583  0.2000  49  82 0 0.70 0 0
i "GM_Alto_Sax"  216.6667  0.1146  71  62 0 0.62 0 0
i "GM_Slap_Bass_1"  216.6667  0.1917  45  85 0 0.50 0 0
i "GM_Standard_Kit"  216.6667  0.2500  36  79 0 0.50 0 0
i "GM_Standard_Kit"  216.6667  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  216.6667  0.2500  51  48 0 0.70 0 0
i "GM_Standard_Kit"  216.6667  0.5500  49  88 0 0.72 0 0
i "GM_Tenor_Sax"  216.6667  0.1146  70  62 0 0.35 0 0
i "GM_Trombone"  216.6667  0.1146  67  55 0 0.28 0 0
i "GM_Trumpet"  216.6667  0.1146  71  59 0 0.72 0 0
i "GM_Slap_Bass_1"  216.8750  0.1917  48  79 0 0.50 0 0
i "GM_Standard_Kit"  216.8750  0.1500  42  41 0 0.35 0 0
i "GM_Slap_Bass_1"  217.0833  0.1917  50  84 0 0.50 0 0
i "GM_Standard_Kit"  217.0833  0.2000  38  83 0 0.48 0 0
i "GM_Standard_Kit"  217.0833  0.1500  42  60 0 0.35 0 0
i "GM_Standard_Kit"  217.0833  0.2500  51  48 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"  217.0845  0.1458  52  59 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  217.0849  0.1458  45  68 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  217.0853  0.1458  67  64 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  217.0904  0.1458  60  62 0 0.40 0 0
i "GM_Alto_Sax"  217.1875  0.1146  71  58 0 0.62 0 0
i "GM_Tenor_Sax"  217.1875  0.1146  65  60 0 0.35 0 0
i "GM_Trombone"  217.1875  0.1146  67  59 0 0.28 0 0
i "GM_Trumpet"  217.1875  0.1146  79  61 0 0.72 0 0
i "GM_Slap_Bass_1"  217.2917  0.1917  52  80 0 0.50 0 0
i "GM_Standard_Kit"  217.2917  0.1500  42  41 0 0.35 0 0
i "GM_Acoustic_Grand_Piano"  217.3988  0.1458  60  61 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  217.3988  0.1458  67  60 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  217.4000  0.1458  45  65 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  217.4013  0.1458  52  65 0 0.40 0 0
i "GM_Slap_Bass_1"  217.5000  0.1917  50  85 0 0.50 0 0
i "GM_Standard_Kit"  217.5000  0.2500  36  80 0 0.50 0 0
i "GM_Standard_Kit"  217.5000  0.1500  42  55 0 0.35 0 0
i "GM_Standard_Kit"  217.5000  0.2500  51  48 0 0.70 0 0
i "GM_Slap_Bass_1"  217.7083  0.1917  48  79 0 0.50 0 0
i "GM_Standard_Kit"  217.7083  0.1500  42  47 0 0.35 0 0
i "GM_Alto_Sax"  217.8125  0.1146  71  62 0 0.62 0 0
i "GM_Tenor_Sax"  217.8125  0.1146  70  62 0 0.35 0 0
i "GM_Trombone"  217.8125  0.1146  67  54 0 0.28 0 0
i "GM_Trumpet"  217.8125  0.1146  71  54 0 0.72 0 0
i "GM_Slap_Bass_1"  217.9167  0.1917  47  91 0 0.50 0 0
i "GM_Standard_Kit"  217.9167  0.2000  38  81 0 0.48 0 0
i "GM_Standard_Kit"  217.9167  0.1500  42  54 0 0.35 0 0
i "GM_Standard_Kit"  217.9167  0.2500  51  48 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"  217.9220  0.1458  52  58 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  217.9233  0.1458  67  62 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  217.9238  0.1458  45  66 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  217.9245  0.1458  60  58 0 0.40 0 0
i "GM_Slap_Bass_1"  218.1250  0.1917  45  79 0 0.50 0 0
i "GM_Standard_Kit"  218.1250  0.1500  46  47 0 0.35 0 0
i "GM_Slap_Bass_1"  218.3333  0.1917  41  90 0 0.50 0 0
i "GM_Standard_Kit"  218.3333  0.2500  36  79 0 0.50 0 0
i "GM_Standard_Kit"  218.3333  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  218.3333  0.2500  51  50 0 0.70 0 0
i "GM_Standard_Kit"  218.3333  0.5500  49  88 0 0.72 0 0
i "GM_Standard_Kit"  218.3333  0.4000  57  70 0 0.78 0 0
i "GM_Alto_Sax"  218.5417  0.1146  76  54 0 0.62 0 0
i "GM_Slap_Bass_1"  218.5417  0.1917  44  80 0 0.50 0 0
i "GM_Standard_Kit"  218.5417  0.1500  42  43 0 0.35 0 0
i "GM_Tenor_Sax"  218.5417  0.1146  62  56 0 0.35 0 0
i "GM_Trombone"  218.5417  0.1146  64  60 0 0.28 0 0
i "GM_Trumpet"  218.5417  0.1146  71  58 0 0.72 0 0
i "GM_Acoustic_Grand_Piano"  218.5452  0.1458  41  58 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  218.5485  0.1458  48  62 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  218.5488  0.1458  57  61 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  218.5492  0.1458  64  61 0 0.40 0 0
i "GM_Slap_Bass_1"  218.7500  0.1917  46  84 0 0.50 0 0
i "GM_Standard_Kit"  218.7500  0.2000  38  88 0 0.48 0 0
i "GM_Standard_Kit"  218.7500  0.1500  42  59 0 0.35 0 0
i "GM_Standard_Kit"  218.7500  0.2500  51  47 0 0.70 0 0
i "GM_Alto_Sax"  218.9583  0.1146  68  54 0 0.62 0 0
i "GM_Slap_Bass_1"  218.9583  0.1917  48  75 0 0.50 0 0
i "GM_Standard_Kit"  218.9583  0.1500  42  41 0 0.35 0 0
i "GM_Tenor_Sax"  218.9583  0.1146  70  62 0 0.35 0 0
i "GM_Trombone"  218.9583  0.1146  59  58 0 0.28 0 0
i "GM_Trumpet"  218.9583  0.1146  79  59 0 0.72 0 0
i "GM_Acoustic_Grand_Piano"  218.9590  0.1458  48  64 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  218.9603  0.1458  64  64 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  218.9621  0.1458  57  66 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  218.9624  0.1458  41  66 0 0.40 0 0
i "GM_Slap_Bass_1"  219.1667  0.1917  46  84 0 0.50 0 0
i "GM_Standard_Kit"  219.1667  0.2500  36  76 0 0.50 0 0
i "GM_Standard_Kit"  219.1667  0.1500  42  56 0 0.35 0 0
i "GM_Standard_Kit"  219.1667  0.2500  51  48 0 0.70 0 0
i "GM_Standard_Kit"  219.1667  0.1800  50  88 0 0.40 0 0
i "GM_Alto_Sax"  219.2708  0.1146  73  58 0 0.62 0 0
i "GM_Tenor_Sax"  219.2708  0.1146  67  57 0 0.35 0 0
i "GM_Trombone"  219.2708  0.1146  67  55 0 0.28 0 0
i "GM_Trumpet"  219.2708  0.1146  79  57 0 0.72 0 0
i "GM_Acoustic_Grand_Piano"  219.2729  0.1458  43  63 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  219.2730  0.1458  59  66 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  219.2730  0.1458  36  60 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  219.2738  0.1458  52  60 0 0.40 0 0
i "GM_Standard_Kit"  219.3750  0.1500  42  47 0 0.35 0 0
i "GM_Standard_Kit"  219.3750  0.1800  48  82 0 0.44 0 0
i "GM_Slap_Bass_1"  219.5833  0.1917  43  92 0 0.50 0 0
i "GM_Standard_Kit"  219.5833  0.2500  36  76 0 0.50 0 0
i "GM_Standard_Kit"  219.5833  0.2000  38  75 0 0.48 0 0
i "GM_Standard_Kit"  219.5833  0.1500  42  58 0 0.35 0 0
i "GM_Standard_Kit"  219.5833  0.2500  51  52 0 0.70 0 0
i "GM_Standard_Kit"  219.5833  0.1800  47  81 0 0.48 0 0
i "GM_Alto_Sax"  219.7917  0.1146  73  56 0 0.62 0 0
i "GM_Slap_Bass_1"  219.7917  0.1917  41  78 0 0.50 0 0
i "GM_Standard_Kit"  219.7917  0.1500  46  44 0 0.35 0 0
i "GM_Standard_Kit"  219.7917  0.1800  45  86 0 0.52 0 0
i "GM_Standard_Kit"  219.7917  0.2000  49  82 0 0.70 0 0
i "GM_Tenor_Sax"  219.7917  0.1146  67  62 0 0.35 0 0
i "GM_Trombone"  219.7917  0.1146  64  62 0 0.28 0 0
i "GM_Trumpet"  219.7917  0.1146  79  62 0 0.72 0 0
i "GM_Acoustic_Grand_Piano"  219.7943  0.1458  59  59 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  219.7985  0.1458  36  61 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  219.7988  0.1458  52  65 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  219.7989  0.1458  43  62 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  220.0000  1.5000  52  78 0 0.38 0 0
i "GM_Alto_Sax"  220.0000  2.3333  67  68 0 0.60 0 0
i "GM_Electric_Bass_finger"  220.0000  2.6667  28  90 0 0.50 0 0
i "GM_Rock_Organ"  220.0000  2.3333  40  68 0 0.50 0 0
i "GM_Standard_Kit"  220.0000  0.6000  49  88 0 0.72 0 0
i "GM_Standard_Kit"  220.0000  0.5000  36  84 0 0.50 0 0
i "GM_Standard_Kit"  220.0000  0.5000  57  78 0 0.78 0 0
i "GM_Tenor_Sax"  220.0000  2.3333  64  68 0 0.40 0 0
i "GM_Trombone"  220.0000  2.3333  52  68 0 0.30 0 0
i "GM_Trumpet"  220.0000  2.3333  76  68 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"  220.0100  1.4900  59  78 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  220.0200  1.4800  64  78 0 0.38 0 0
i "GM_Alto_Sax"  220.0200  2.3333  74  68 0 0.60 0 0
i "GM_Rock_Organ"  220.0200  2.3333  52  68 0 0.50 0 0
i "GM_Tenor_Sax"  220.0200  2.3333  71  68 0 0.40 0 0
i "GM_Trombone"  220.0200  2.3333  59  68 0 0.30 0 0
i "GM_Trumpet"  220.0200  2.3333  83  68 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"  220.0300  1.4700  67  78 0 0.38 0 0
i "GM_Acoustic_Grand_Piano"  220.0400  1.4600  71  78 0 0.38 0 0
i "GM_Rock_Organ"  220.0400  2.3333  59  68 0 0.50 0 0
i "GM_Acoustic_Grand_Piano"  220.8333  1.8333  55  80 0 0.40 0 0
i "GM_Brass_Section"  220.8333  1.9167  67  70 0 0.55 0 0
i "GM_Brass_Section"  220.8333  1.9167  71  70 0 0.55 0 0
i "GM_Brass_Section"  220.8333  1.9167  74  70 0 0.55 0 0
i "GM_Brass_Section"  220.8333  1.9167  79  70 0 0.55 0 0
i "GM_Electric_Bass_finger"  220.8333  2.0000  31  88 0 0.50 0 0
i "GM_Standard_Kit"  220.8333  0.5000  49  90 0 0.70 0 0
i "GM_Acoustic_Grand_Piano"  220.8413  1.8333  59  80 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  220.8493  1.8333  62  80 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  220.8573  1.8333  67  80 0 0.40 0 0
i "GM_Acoustic_Grand_Piano"  220.8653  1.8333  71  80 0 0.40 0 0
e 227.167
</CsScore>
</CsoundSynthesizer>
