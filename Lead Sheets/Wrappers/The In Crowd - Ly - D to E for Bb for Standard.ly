%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/The In Crowd - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The “In” Crowd - D to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/The In Crowd - Ly - D to E for Bb for Standard"}

%}
