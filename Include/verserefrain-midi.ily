%% -*- Mode: LilyPond -*-

\version "2.26.0"

verseFile =
#(if (and (defined? 'noIntro) noIntro)
  "../Include/nothing.ily"
  "../Include/midi.ily")

midiKey = \verseKey
midiChords = \verseChords
midiMelody = \verseMelody
leadingEighth = \verseLeadingEighth

\include \verseFile

midiKey = \refrainKey
midiChords = \refrainChords
midiMelody = \refrainMelody
leadingEighth = \refrainLeadingEighth

\include "../Include/midi.ily"
