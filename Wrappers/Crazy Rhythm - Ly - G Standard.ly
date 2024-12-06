%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Crazy Rhythm - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Crazy Rhythm - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Crazy Rhythm - Ly - G Standard"}

%}
