%% -*- Mode: LilyPond -*-

\version "2.26.0"

midiKey = \introKey
midiChords = \introChords
midiMelody = \introMelody
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

midiKey = \outroKey
midiChords = \outroChords
midiMelody = \outroMelody
leadingEighth = \outroLeadingEighth

\include "../Include/midi.ily"
