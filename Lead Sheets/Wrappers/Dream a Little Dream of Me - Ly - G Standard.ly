%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Dream a Little Dream of Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dream a Little Dream of Me - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Dream a Little Dream of Me - Ly - G Standard"}

%}
