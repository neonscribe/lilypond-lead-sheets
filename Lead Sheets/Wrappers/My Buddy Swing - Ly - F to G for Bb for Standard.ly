%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/My Buddy Swing - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Buddy (Swing) - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/My Buddy Swing - Ly - G to A for Bb for Standard"}

%}
