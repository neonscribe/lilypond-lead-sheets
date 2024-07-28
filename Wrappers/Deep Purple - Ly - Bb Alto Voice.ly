%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Helen Forrest Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/Deep Purple - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Deep Purple - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Deep Purple - Ly - Bb Alto Voice"}

%}
