%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "John Pizzarelli (with Clare Fischer) Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Christmas Time Is Here - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Christmas Time Is Here - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Christmas Time Is Here - Ly - Eb Baritone Voice"}

%}
