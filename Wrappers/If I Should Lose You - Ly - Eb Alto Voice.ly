%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Julie London Key"
whatKey = ef
whatClef = "treble_8"

\include "../Core/If I Should Lose You - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{If I Should Lose You - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/If I Should Lose You - Ly - Eb Alto Voice"}

%}
