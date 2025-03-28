%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Joan Edwards (with Paul Whiteman) Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Russian Lullaby Swing - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Russian Lullaby (Swing) - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Russian Lullaby Swing - Ly - Gm Alto Voice"}

%}
