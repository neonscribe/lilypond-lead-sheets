%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Makin' Whoopee! - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Makin' Whoopee! - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Makin' Whoopee! - Ly - C Alto Voice"}

%}
