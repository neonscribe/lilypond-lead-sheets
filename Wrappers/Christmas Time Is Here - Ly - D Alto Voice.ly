%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Jane Monheit Key"
whatKey = d,
whatClef = "treble_8"

\include "../Core/Christmas Time Is Here - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Christmas Time Is Here - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Christmas Time Is Here - Ly - D Alto Voice"}

%}
