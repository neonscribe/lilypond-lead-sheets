%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Baby Won't You Please Come Home - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Baby, Won't You Please Come Home - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Baby Won't You Please Come Home - Ly - G Standard"}

%}
