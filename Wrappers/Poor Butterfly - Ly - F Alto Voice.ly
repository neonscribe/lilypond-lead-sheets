%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sarah Vaughan Key"
whatKey = f
whatClef = "treble_8"

\include "../Core/Poor Butterfly - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Poor Butterfly - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Poor Butterfly - Ly - F Alto Voice"}

%}
