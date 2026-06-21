%% -*- Mode: LilyPond -*-

\version "2.26.0"

introFile =
#(if (and (defined? 'noIntro) noIntro)
  "../Include/nothing.ily"
  "../Include/midi.ily")

midiKey = \introKey
midiChords = \introChords
midiMelody = \introMelody
leadingEighth = \introLeadingEighth

\include \introFile

midiKey = \refrainKey
midiChords = \refrainChords
midiMelody = \refrainMelody
leadingEighth = \refrainLeadingEighth

\include "../Include/midi.ily"
