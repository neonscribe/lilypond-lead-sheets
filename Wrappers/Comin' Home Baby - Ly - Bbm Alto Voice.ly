%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dee Dee Sharp Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Comin' Home Baby - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Comin' Home Baby - Bbm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Comin' Home Baby - Ly - Bbm Alto Voice"}

%}
