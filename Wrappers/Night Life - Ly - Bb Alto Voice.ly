%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Night Life - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Night Life - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Night Life - Ly - Bb Alto Voice"}

%}
