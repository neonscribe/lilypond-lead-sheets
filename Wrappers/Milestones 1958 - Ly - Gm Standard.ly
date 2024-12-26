%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Milestones 1958 - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Milestones (1958) - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Milestones 1958 - Ly - Gm Standard"}

%}
