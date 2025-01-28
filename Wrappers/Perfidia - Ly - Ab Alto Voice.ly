%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Helen Forest (with Benny Goodman) Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Perfidia - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Perfidia - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Perfidia - Ly - Ab Alto Voice"}

%}
