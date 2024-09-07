%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Milestones - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Milestones - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Milestones - Ly - Gm Standard"}

%}
