%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alto Voice Key"
whatKey = f
whatClef = "treble"

\include "../Core/Besame Mucho - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Besame Mucho - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Besame Mucho - Ly - Fm Alto Voice"}

%}
