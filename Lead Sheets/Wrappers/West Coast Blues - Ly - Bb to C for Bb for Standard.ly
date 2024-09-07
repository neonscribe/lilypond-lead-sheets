%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/West Coast Blues - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{West Coast Blues - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/West Coast Blues - Ly - Bb to C for Bb for Standard"}

%}
