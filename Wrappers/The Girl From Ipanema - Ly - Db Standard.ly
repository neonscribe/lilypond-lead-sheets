%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alternate Key"
whatKey = df
whatClef = "treble_8"

\include "../Core/The Girl From Ipanema - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Girl From Ipanema - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The Girl From Ipanema - Ly - Db Standard"}

%}
