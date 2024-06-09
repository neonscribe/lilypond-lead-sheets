%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Jazz Blues in G - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jazz Blues in G - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Jazz Blues in G - Ly - G Standard"}

%}
