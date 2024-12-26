%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dianne Reeves, Karrin Allyson, Norah Jones Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Christmas Time Is Here - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Christmas Time Is Here - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Christmas Time Is Here - Ly - C Alto Voice"}

%}
