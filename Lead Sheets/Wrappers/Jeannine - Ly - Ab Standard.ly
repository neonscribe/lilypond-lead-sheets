%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
whatClef = "treble"

\include "../Core/Jeannine - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jeannine - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Jeannine - Ly - Ab Standard"}

%}
