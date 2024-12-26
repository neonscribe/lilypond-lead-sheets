%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Mary Ford (with Les Paul) Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/Bye Bye Blues - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bye Bye Blues - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Bye Bye Blues - Ly - Bb Alto Voice"}

%}
