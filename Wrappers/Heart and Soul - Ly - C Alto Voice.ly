%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Mae Morse Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Heart and Soul - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Heart and Soul - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Heart and Soul - Ly - C Alto Voice"}

%}
