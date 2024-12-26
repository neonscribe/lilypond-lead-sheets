%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Jill Barber Key"
whatKey = a,
whatClef = "treble_8"

\include "../Core/Petite Fleur - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Petite Fleur - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Petite Fleur - Ly - Am Alto Voice"}

%}
