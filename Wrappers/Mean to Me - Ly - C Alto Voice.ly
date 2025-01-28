%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Mean to Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mean to Me - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Mean to Me - Ly - C Alto Voice"}

%}
