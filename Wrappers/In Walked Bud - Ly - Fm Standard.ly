%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/In Walked Bud - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In Walked Bud - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/In Walked Bud - Ly - Fm Standard"}

%}
