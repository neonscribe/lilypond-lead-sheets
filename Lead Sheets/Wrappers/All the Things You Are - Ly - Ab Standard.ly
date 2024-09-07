%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
whatVerseKey = g
whatClef = "treble"

\include "../Core/All the Things You Are - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{All the Things You Are - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/All the Things You Are - Ly - Ab Standard"}

%}
