%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Mean to Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mean to Me - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Mean to Me - Ly - Bb Alto Voice"}

%}
