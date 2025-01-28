%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/You and the Night and the Music - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You and the Night and the Music - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/You and the Night and the Music - Ly - Cm Standard"}

%}
