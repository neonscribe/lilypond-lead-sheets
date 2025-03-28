%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Julie London, Carmen McRae Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Spring Can Really Hang You Up the Most - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Spring Can Really Hang You Up the Most - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Spring Can Really Hang You Up the Most - Ly - G Alto Voice"}

%}
