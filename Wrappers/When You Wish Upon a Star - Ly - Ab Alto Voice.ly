%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Rosemary Clooney, June Christy Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/When You Wish Upon a Star - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When You Wish Upon a Star - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/When You Wish Upon a Star - Ly - Ab Alto Voice"}

%}
