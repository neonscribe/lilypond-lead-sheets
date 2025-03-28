%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Kaye Ballard, Nancy Wilson, Dinah Washington Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Fly Me to the Moon - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fly Me to the Moon - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Fly Me to the Moon - Ly - Ab Alto Voice"}

%}
