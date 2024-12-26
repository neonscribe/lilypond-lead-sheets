%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Patsy Cline Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Always Swing - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Always (4/4) - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Always Swing - Ly - Bb Alto Voice"}

%}
