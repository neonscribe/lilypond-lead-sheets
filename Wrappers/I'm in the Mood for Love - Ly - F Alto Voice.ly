%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Julie London Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/I'm in the Mood for Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm in the Mood for Love - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I'm in the Mood for Love - Ly - F Alto Voice"}

%}
