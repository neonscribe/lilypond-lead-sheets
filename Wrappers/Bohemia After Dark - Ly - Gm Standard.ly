%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Bohemia After Dark - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bohemia After Dark - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bohemia After Dark - Ly - Gm Standard"}

%}
