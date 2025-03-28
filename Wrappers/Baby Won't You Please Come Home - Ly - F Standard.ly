%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alternate Key"
whatKey = f
whatClef = "treble"

\include "../Core/Baby Won't You Please Come Home - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Baby, Won't You Please Come Home - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Baby Won't You Please Come Home - Ly - F Standard"}

%}
