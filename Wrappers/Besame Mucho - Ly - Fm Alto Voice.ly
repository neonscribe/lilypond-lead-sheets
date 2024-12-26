%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Carmen McRae (with Cal Tjader) Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Besame Mucho - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Besame Mucho - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Besame Mucho - Ly - Fm Alto Voice"}

%}
