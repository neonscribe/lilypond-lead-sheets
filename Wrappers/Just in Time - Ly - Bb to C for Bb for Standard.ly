%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Just in Time - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Just in Time - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Just in Time - Ly - Bb to C for Bb for Standard"}

%}
