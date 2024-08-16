%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/Like a Lover - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Like a Lover (O Cantador) - D to B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Like a Lover - Ly - D to B for Eb for Standard"}

%}
