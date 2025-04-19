%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Johnson (with Buddy Johnson) Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Since I Fell for You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Since I Fell for You - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Since I Fell for You - Ly - Ab Alto Voice"}

%}
