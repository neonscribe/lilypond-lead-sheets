%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Sarah Vaughan Key"
whatKey = b
whatClef = "treble_8"

\include "../Core/Comes Love - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Comes Love - Dm to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Eb/Comes Love - Ly - Dm to Bm for Eb for Alto Voice"}

%}
