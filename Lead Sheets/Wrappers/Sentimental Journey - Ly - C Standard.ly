%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Sentimental Journey - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sentimental Journey - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Sentimental Journey - Ly - C Standard"}

%}
