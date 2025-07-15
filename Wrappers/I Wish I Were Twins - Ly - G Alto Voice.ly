%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Janet Klein Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/I Wish I Were Twins - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Wish I Were Twins - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Wish I Were Twins - Ly - G Alto Voice"}

%}
