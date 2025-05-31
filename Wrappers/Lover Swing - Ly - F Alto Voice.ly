%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Peggy Lee 1977 Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Lover Swing - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lover (4/4) - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Lover Swing - Ly - F Alto Voice"}

%}
