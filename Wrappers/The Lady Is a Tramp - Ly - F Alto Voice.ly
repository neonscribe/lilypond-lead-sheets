%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Rosemary Clooney Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/The Lady Is a Tramp - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Lady Is a Tramp - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/The Lady Is a Tramp - Ly - F Alto Voice"}

%}
