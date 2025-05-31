%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Susannah McCorkle Key"
whatKey = a,
whatClef = "treble_8"

\include "../Core/It Ain't Necessarily So - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Ain't Necessarily So - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/It Ain't Necessarily So - Ly - Am Alto Voice"}

%}
