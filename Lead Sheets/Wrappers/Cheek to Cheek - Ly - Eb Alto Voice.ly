%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday Key"
whatKey = ef,
whatClef = "treble"

\include "../Core/Cheek to Cheek - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cheek to Cheek - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Cheek to Cheek - Ly - Eb Alto Voice"}

%}
