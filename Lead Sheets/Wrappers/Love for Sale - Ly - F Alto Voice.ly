%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = f
whatClef = "treble"

\include "../Core/Love for Sale - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love for Sale - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Love for Sale - Ly - F Alto Voice"}

%}
