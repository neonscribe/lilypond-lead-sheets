%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Under Paris Skies - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Under Paris Skies - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Under Paris Skies - Ly - Fm Standard"}

%}
