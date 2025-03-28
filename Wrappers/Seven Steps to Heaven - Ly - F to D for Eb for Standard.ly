%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Seven Steps to Heaven - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Seven Steps to Heaven - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Seven Steps to Heaven - Ly - F to D for Eb for Standard"}

%}
