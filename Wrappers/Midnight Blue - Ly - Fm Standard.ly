%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
bassKey = f
whatClef = "treble"

\include "../Core/Midnight Blue - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Midnight Blue - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Midnight Blue - Ly - Fm Standard"}

%}
