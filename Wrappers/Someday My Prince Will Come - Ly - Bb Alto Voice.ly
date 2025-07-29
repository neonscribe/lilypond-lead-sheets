%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Etta Jones Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Someday My Prince Will Come - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Someday My Prince Will Come - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Someday My Prince Will Come - Ly - Bb Alto Voice"}

%}
