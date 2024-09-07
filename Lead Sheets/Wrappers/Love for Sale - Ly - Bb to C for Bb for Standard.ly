%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Love for Sale - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love for Sale - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Love for Sale - Ly - Bb to C for Bb for Standard"}

%}
