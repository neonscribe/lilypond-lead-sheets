%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Anita O'Day Key"
whatKey = d,
whatClef = "treble_8"

\include "../Core/You and the Night and the Music - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You and the Night and the Music - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/You and the Night and the Music - Ly - Dm Alto Voice"}

%}
