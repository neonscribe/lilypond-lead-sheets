beforeTextFile =
#(if (and (defined? 'beforeText) beforeText)
  "../Include/beforetext.ily"
  "../Include/nothing.ily")

betweenTextFile =
#(if (and (defined? 'betweenText) betweenText)
  "../Include/betweentext.ily"
  "../Include/nothing.ily")

afterTextFile =
#(if (and (defined? 'afterText) afterText)
  "../Include/aftertext.ily"
  "../Include/nothing.ily")

pianoChordsFile =
#(if (and (defined? 'pianoChordNames) pianoChordNames)
  "../Include/pianochords-score.ily"
  "../Include/nothing.ily")

guitarPresetsFile =
#(if (and (defined? 'chordDiagrams) chordDiagrams)
  "../Include/guitar-chord-presets.ily"
  "../Include/nothing.ily")

\include \guitarPresetsFile

guitarChordsFile =
#(if (and (defined? 'chordDiagrams) chordDiagrams)
  "../Include/chorddiagrams-score.ily"
  "../Include/nothing.ily")

