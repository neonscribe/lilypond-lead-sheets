%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Like a Lover - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Like a Lover (O Cantador) - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Like a Lover - Ly - D Standard"}

%}
