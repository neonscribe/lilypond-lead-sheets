%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Rosa Passos Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/The Girl From Ipanema - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Girl From Ipanema - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/The Girl From Ipanema - Ly - C Alto Voice"}

%}
