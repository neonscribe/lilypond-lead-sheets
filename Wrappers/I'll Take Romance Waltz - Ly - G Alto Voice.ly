%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Jeri Southern Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/I'll Take Romance Waltz - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Take Romance (3/4) - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I'll Take Romance Waltz - Ly - G Alto Voice"}

%}
