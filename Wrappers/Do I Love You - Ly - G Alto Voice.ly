%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Judy Garland Key"
whatKey = g,
whatClef = "treble"

\include "../Core/Do I Love You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Do I Love You - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Do I Love You - Ly - G Alto Voice"}

%}
