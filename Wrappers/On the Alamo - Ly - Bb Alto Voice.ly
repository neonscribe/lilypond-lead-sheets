%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Betty Carter Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/On the Alamo - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{On the Alamo - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/On the Alamo - Ly - Bb Alto Voice"}

%}
