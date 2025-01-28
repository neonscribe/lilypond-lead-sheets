%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Libby Holman, Mildred Bailey, Ella Fitzgerald, Linda Ronstadt Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Can't We Be Friends - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Can't We Be Friends - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Can't We Be Friends - Ly - Bb Alto Voice"}

%}
