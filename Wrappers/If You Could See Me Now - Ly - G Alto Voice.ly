%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sheila Jordan Key"
whatKey = g,
whatClef = "treble"

\include "../Core/If You Could See Me Now - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{If You Could See Me Now - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/If You Could See Me Now - Ly - G Alto Voice"}

%}
