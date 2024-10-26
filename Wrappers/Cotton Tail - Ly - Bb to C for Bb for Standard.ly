%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Cotton Tail - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cotton Tail - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Cotton Tail - Ly - Bb to C for Bb for Standard"}

%}
