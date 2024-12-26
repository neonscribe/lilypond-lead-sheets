%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday, Sarah Vaughan Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/April in Paris - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{April in Paris - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/April in Paris - Ly - F Alto Voice"}

%}
