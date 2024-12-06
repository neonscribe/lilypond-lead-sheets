%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Mildred Bailey, Helen Forrest, Elly Ameling Key"
whatKey = f
whatVerseKey = e
whatClef = "treble"

\include "../Core/All the Things You Are - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{All the Things You Are - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/All the Things You Are - Ly - F Alto Voice"}

%}
