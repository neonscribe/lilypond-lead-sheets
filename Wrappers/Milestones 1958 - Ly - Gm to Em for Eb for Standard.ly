%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e'
whatClef = "treble"

\include "../Core/Milestones 1958 - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Milestones (1958) - Gm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Milestones 1958 - Ly - Gm to Em for Eb for Standard"}

%}
