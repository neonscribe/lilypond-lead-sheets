%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Cyrille Aimée Key"
whatKey = e,
whatClef = "treble_8"

\include "../Core/Seul Ce Soir - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(Je Suis) Seul Ce Soir - E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Seul Ce Soir - Ly - E Alto Voice"}

%}
