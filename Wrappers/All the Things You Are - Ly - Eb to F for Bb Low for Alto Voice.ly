%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Alto Voice"
whatKey = f
whatVerseKey = e
whatClef = "treble"

\include "../Core/All the Things You Are - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{All the Things You Are - A♭ to B♭}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/All the Things You Are - Ly - Eb to F for Bb Low for Alto Voice"}

%}
