%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Better Than Anything - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Better Than Anything - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Better Than Anything - Ly - D Standard"}

%}
