%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sarah Vaughan Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Bewitched - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bewitched - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Bewitched - Ly - Ab Alto Voice"}

%}
