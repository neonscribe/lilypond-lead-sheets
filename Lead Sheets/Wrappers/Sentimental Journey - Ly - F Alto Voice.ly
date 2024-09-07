%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Rosemary Clooney Key"
whatKey = f,
whatClef = "treble"

\include "../Core/Sentimental Journey - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sentimental Journey - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Sentimental Journey - Ly - F Alto Voice"}

%}
