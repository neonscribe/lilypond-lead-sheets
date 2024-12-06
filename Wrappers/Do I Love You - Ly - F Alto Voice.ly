%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Peggy Lee Key"
whatKey = f,
whatClef = "treble"

\include "../Core/Do I Love You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Do I Love You - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Do I Love You - Ly - F Alto Voice"}

%}
