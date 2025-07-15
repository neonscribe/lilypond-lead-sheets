%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Jo Stafford, Etta Jones Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Fools Rush In - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fools Rush In - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Fools Rush In - Ly - G Alto Voice"}

%}
