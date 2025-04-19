%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eydie Gormé, Celia Cruz Key"
whatKey = a,
whatClef = "treble_8"

\include "../Core/Sway - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sway - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Sway - Ly - Am Alto Voice"}

%}
