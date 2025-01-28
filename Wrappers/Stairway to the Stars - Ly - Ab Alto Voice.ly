%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald (with Chick Webb) Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Stairway to the Stars - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stairway to the Stars - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Stairway to the Stars - Ly - Ab Alto Voice"}

%}
