%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/Baby Won't You Please Come Home - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Baby, Won't You Please Come Home - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Baby Won't You Please Come Home - Ly - Bb Alto Voice"}

%}
