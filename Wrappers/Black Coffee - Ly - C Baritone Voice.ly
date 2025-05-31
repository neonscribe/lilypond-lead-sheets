%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Baritone Voice Key"
whatKey = c
whatClef = "treble_8"

maleSinger = ##t

\include "../Core/Black Coffee - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Black Coffee - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Black Coffee - Ly - C Baritone Voice"}

%}
