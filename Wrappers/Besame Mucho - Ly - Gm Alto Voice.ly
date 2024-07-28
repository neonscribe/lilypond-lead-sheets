%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alto Voice Key"
whatKey = g
whatClef = "treble"

\include "../Core/Besame Mucho - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Besame Mucho - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Besame Mucho - Ly - Gm Alto Voice"}

%}
