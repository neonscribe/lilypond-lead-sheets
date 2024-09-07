%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e'
whatClef = "treble"

\include "../Core/Milestones - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Milestones - Gm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Milestones - Ly - Gm to Em for Eb for Standard"}

%}
