%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Moonglow - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moonglow - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Moonglow - Ly - G Standard"}

%}
