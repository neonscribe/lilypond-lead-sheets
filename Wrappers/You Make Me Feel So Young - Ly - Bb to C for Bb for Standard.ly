%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/You Make Me Feel So Young - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Make Me Feel So Young - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/You Make Me Feel So Young - Ly - Bb to C for Bb for Standard"}

%}
