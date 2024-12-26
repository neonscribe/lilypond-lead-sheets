%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Vera Lynn Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/I'm in the Mood for Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm in the Mood for Love - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I'm in the Mood for Love - Ly - Ab Alto Voice"}

%}
