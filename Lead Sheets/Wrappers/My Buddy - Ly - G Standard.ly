%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/My Buddy - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Buddy (Waltz) - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/My Buddy - Ly - G Standard"}

%}
