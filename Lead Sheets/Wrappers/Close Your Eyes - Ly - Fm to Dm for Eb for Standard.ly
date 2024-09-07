%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Close Your Eyes - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Close Your Eyes - Fm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Close Your Eyes - Ly - Fm to Dm for Eb for Standard"}

%}
