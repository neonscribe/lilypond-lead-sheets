%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/My Baby Just Cares for Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Baby Just Cares for Me - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/My Baby Just Cares for Me - Ly - G Standard"}

%}
