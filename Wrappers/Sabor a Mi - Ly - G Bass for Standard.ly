%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Sabor a Mi - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sabor a Mí - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Sabor a Mi - Ly - G Bass for Standard"}

%}
