%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/When It's Sleepy Time Down South - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When It's Sleepy Time Down South - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/When It's Sleepy Time Down South - Ly - C to D for Bb for Standard"}

%}
