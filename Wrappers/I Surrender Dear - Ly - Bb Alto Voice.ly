%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Aretha Franklin Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/I Surrender Dear - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Surrender, Dear - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Surrender Dear - Ly - Bb Alto Voice"}

%}
