%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Recorda-Me - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Recorda-Me - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Recorda-Me - Ly - Am Standard"}

%}
