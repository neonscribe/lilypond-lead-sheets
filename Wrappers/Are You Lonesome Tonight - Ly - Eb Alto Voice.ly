%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day Key"
whatKey = ef,
whatClef = "treble_8"

\include "../Core/Are You Lonesome Tonight - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Are You Lonesome Tonight - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Are You Lonesome Tonight - Ly - Eb Alto Voice"}

%}
