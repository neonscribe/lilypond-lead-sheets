%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sarah Vaughan Key"
whatKey = d
whatClef = "treble_8"

\include "../Core/Comes Love - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Comes Love - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Comes Love - Ly - Dm Alto Voice"}

%}
