%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Alto Voice"
whatKey = d
whatClef = "treble"

\include "../Core/Close Your Eyes - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Close Your Eyes - Gm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Eb/Close Your Eyes - Ly - Gm to Dm for Eb for Alto Voice"}

%}
