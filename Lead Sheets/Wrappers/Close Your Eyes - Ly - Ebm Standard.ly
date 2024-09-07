%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Close Your Eyes - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Close Your Eyes - Ebm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Close Your Eyes - Ly - Ebm Standard"}

%}
