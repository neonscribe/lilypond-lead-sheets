%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Chris Connor Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Moonlight in Vermont - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moonlight in Vermont - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Moonlight in Vermont - Ly - Ab Alto Voice"}

%}
