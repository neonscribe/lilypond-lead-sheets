%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/We'll Be Together Again - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{We'll Be Together Again - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/We'll Be Together Again - Ly - C to D for Bb for Standard"}

%}
