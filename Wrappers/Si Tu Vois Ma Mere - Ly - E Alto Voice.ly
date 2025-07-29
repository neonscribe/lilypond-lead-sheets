%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Cyrille Aimée Key"
whatKey = e,
whatClef = "treble_8"

\include "../Core/Si Tu Vois Ma Mere - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Si Tu Vois Ma Mère - E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Si Tu Vois Ma Mere - Ly - E Alto Voice"}

%}
