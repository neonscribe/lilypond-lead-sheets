%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Dream a Little Dream of Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dream a Little Dream of Me - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Dream a Little Dream of Me - Ly - G Bass for Standard"}

%}
