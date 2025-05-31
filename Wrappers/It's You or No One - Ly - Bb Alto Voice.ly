%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/It's You or No One - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's You or No One - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/It's You or No One - Ly - Bb Alto Voice"}

%}
