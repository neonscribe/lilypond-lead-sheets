%% -*- Mode: LilyPond -*-

\version "2.26.0"

introFile =
#(if (and (defined? 'noIntro) noIntro)
  "../Include/nothing.ily"
  "../Include/midi.ily")

midiKey = \introKey
midiChords = \introChords
midiMelody = \bassIntro
leadingEighth = \introLeadingEighth

\include \introFile

midiKey = \refrainKey
midiChords = \refrainChords
midiMelody = \refrainMelody
leadingEighth = \refrainLeadingEighth

\include "../Include/midi.ily"

midiKey = \bassLineKey
midiChords = \bassLineChords
midiMelody = \bassLineMelody
leadingEighth = \bassLineLeadingEighth

\include "../Include/midi.ily"

midiKey = \outroKey
midiChords = \outroChords
midiMelody = \outroMelody
leadingEighth = \outroLeadingEighth

\include "../Include/midi.ily"
