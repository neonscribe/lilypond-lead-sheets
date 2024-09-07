%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/The Shadow of Your Smile - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Shadow of Your Smile - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The Shadow of Your Smile - Ly - G Standard"}

%}
