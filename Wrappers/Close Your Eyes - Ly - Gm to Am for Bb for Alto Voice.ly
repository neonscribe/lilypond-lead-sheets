%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Alto Voice"
whatKey = a
whatClef = "treble_8"

\include "../Core/Close Your Eyes - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Close Your Eyes - Gm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Bb/Close Your Eyes - Ly - Gm to Am for Bb for Alto Voice"}

%}
