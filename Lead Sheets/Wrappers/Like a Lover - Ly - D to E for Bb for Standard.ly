%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Like a Lover - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Like a Lover (O Cantador) - D to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Like a Lover - Ly - D to E for Bb for Standard"}

%}
