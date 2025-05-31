%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald (with Louis Armstrong) Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/It Ain't Necessarily So - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Ain't Necessarily So - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/It Ain't Necessarily So - Ly - Cm Alto Voice"}

%}
