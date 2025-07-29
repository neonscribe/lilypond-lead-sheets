%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/My Heart Stood Still - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Heart Stood Still - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/My Heart Stood Still - Ly - C Alto Voice"}

%}
