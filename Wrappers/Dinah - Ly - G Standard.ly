%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Dinah - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dinah - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Dinah - Ly - G Standard"}

%}
