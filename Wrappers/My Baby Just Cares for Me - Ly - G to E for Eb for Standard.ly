%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/My Baby Just Cares for Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Baby Just Cares for Me - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/My Baby Just Cares for Me - Ly - G to E for Eb for Standard"}

%}
