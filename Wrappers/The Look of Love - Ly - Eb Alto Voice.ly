%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dusty Springfield Key"
whatKey = ef
whatClef = "treble"

\include "../Core/The Look of Love - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Look of Love - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/The Look of Love - Ly - Eb Alto Voice"}

%}
