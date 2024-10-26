%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Let's Fall in Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Fall in Love - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Let's Fall in Love - Ly - C Standard"}

%}
