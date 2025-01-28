%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Nina Simone, Diana Krall Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/The Look of Love - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Look of Love - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/The Look of Love - Ly - Bb Alto Voice"}

%}
