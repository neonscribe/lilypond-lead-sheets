%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Dat Dere - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dat Dere - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Dat Dere - Ly - Cm Standard"}

%}
