%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Unchain My Heart - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Unchain My Heart - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Unchain My Heart - Ly - Am Standard"}

%}
