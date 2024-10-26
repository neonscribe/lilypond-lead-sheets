%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Pent Up House - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Pent Up House - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Pent Up House - Ly - G Bass for Standard"}

%}
