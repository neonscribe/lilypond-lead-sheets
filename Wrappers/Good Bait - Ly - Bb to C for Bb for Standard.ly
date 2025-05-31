%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Good Bait - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Good Bait - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Good Bait - Ly - Bb to C for Bb for Standard"}

%}
