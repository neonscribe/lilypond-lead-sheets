%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Patti Page Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/It's a Good Day - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's a Good Day - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/It's a Good Day - Ly - Bb Alto Voice"}

%}
