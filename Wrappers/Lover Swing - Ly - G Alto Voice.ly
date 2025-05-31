%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald, Peggy Lee 1952 Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Lover Swing - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lover (4/4) - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Lover Swing - Ly - G Alto Voice"}

%}
