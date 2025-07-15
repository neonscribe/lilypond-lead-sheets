%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/I'll Never Be the Same - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Never Be the Same - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I'll Never Be the Same - Ly - C Alto Voice"}

%}
