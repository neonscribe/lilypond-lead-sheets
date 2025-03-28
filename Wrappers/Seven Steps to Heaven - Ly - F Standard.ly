%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Seven Steps to Heaven - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Seven Steps to Heaven - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Seven Steps to Heaven - Ly - F Standard"}

%}
