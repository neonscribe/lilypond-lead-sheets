%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/My Old Flame - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Old Flame - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/My Old Flame - Ly - G Standard"}

%}
