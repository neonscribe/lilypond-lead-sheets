%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/My Baby Just Cares for Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Baby Just Cares for Me - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/My Baby Just Cares for Me - Ly - G to A for Bb for Standard"}

%}
