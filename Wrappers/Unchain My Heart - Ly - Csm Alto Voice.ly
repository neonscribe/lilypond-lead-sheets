%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Nancy Wilson Key"
whatKey = cs
whatClef = "treble_8"

\include "../Core/Unchain My Heart - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Unchain My Heart - C\#m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Unchain My Heart - Ly - Csm Alto Voice"}

%}
