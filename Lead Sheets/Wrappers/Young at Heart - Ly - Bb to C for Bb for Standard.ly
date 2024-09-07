%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Young at Heart - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Young at Heart - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Young at Heart - Ly - Bb to C for Bb for Standard"}

%}
