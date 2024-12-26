%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Rosemary Clooney Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Alice in Wonderland - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Alice in Wonderland - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Alice in Wonderland - Ly - Bb Alto Voice"}

%}
