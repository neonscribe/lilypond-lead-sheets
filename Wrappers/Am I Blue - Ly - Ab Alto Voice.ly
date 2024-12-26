%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ernestine Anderson Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Am I Blue - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Am I Blue - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Am I Blue - Ly - Ab Alto Voice"}

%}
