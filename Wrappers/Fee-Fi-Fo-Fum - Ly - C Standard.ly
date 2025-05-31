%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Fee-Fi-Fo-Fum - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fee-Fi-Fo-Fum - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Fee-Fi-Fo-Fum - Ly - C Standard"}

%}
