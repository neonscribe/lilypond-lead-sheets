%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/My Baby Just Cares for Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Baby Just Cares for Me - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/My Baby Just Cares for Me - Ly - G Bass for Standard"}

%}
