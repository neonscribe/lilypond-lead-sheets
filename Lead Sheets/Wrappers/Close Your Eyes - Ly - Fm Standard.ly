%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Close Your Eyes - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Close Your Eyes - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Close Your Eyes - Ly - Fm Standard"}

%}
