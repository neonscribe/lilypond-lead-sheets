%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Birk's Works - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Birk's Works - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Birk's Works - Ly - Fm Standard"}

%}
