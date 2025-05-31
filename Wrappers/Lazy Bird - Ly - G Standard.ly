%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Lazy Bird - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lazy Bird - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Lazy Bird - Ly - G Standard"}

%}
