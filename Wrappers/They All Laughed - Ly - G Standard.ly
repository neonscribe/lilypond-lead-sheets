%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/They All Laughed - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{They All Laughed - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/They All Laughed - Ly - G Standard"}

%}
