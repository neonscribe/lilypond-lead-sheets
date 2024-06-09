%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb High for Standard Key"
whatKey = c''
whatClef = "treble"

\include "../Core/Mercy Mercy Mercy - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mercy, Mercy, Mercy - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Mercy Mercy Mercy - Ly - Bb to C for Bb High for Standard"}

%}
