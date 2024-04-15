%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Why Don't We Do This More Often - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Why Don't We Do This More Often - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Why Don't We Do This More Often - Ly - Bb to C for Bb for Standard"}

%}
