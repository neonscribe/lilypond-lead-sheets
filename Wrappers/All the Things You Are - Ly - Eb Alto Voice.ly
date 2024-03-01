%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alto Voice"
whatKey = ef
whatVerseKey = d
whatClef = "treble"

\include "../Core/All the Things You Are - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{All the Things You Are - A♭}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/All the Things You Are - Ly - Eb Alto Voice"}

%}
