%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Linda Ronstadt Key"
whatKey = f
whatClef = "treble_8"

\include "../Core/Straighten Up and Fly Right - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Straighten Up and Fly Right - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Straighten Up and Fly Right - Ly - F Alto Voice"}

%}
