%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald 1960 Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/You Turned the Tables on Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Turned the Tables on Me - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/You Turned the Tables on Me - Ly - C Alto Voice"}

%}
