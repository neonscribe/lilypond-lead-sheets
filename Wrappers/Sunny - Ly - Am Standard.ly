%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Sunny - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sunny - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Sunny - Ly - Am Standard"}

%}
