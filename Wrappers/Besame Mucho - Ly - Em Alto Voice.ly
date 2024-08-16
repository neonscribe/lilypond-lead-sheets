%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Cesária Évora, Julie London, Diana Krall Key"
whatKey = e
whatClef = "treble"

\include "../Core/Besame Mucho - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Besame Mucho - Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Besame Mucho - Ly - Em Alto Voice"}

%}
