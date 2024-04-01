%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/The Shiek of Araby - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Shiek of Araby - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/The Shiek of Araby - Ly - Bb to C for Bb for Standard"}

%}
