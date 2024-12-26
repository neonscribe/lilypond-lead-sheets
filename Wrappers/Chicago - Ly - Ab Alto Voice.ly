%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Judy Garland Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Chicago - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Chicago - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Chicago - Ly - Ab Alto Voice"}

%}
