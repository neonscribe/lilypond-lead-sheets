%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Undecided - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Undecided - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Undecided - Ly - Bb to C for Bb for Standard"}

%}
