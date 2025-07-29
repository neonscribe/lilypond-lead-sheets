%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Helen O'Connell 1957 Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Tangerine - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tangerine - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Tangerine - Ly - C Alto Voice"}

%}
