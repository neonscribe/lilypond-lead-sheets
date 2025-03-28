%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Poinciana - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Poinciana - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Poinciana - Ly - G Standard"}

%}
