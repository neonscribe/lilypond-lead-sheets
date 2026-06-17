%% -*- Mode: LilyPond -*-

\version "2.26.0"

midiKey = \introKey
midiChords = \introChords
midiMelody = \bassIntro
leadingEighth = \introLeadingEighth

introFile =
#(if (and (defined? 'noIntro) noIntro)
  "../Include/nothing.ily"
  "../Include/midi.ily")

\include \introFile

midiKey = \refrainKey
midiChords = \refrainChords
midiMelody = \refrainMelody
leadingEighth = \refrainLeadingEighth

\include "../Include/midi.ily"
