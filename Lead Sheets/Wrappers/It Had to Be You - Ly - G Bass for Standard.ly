%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/It Had to Be You - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Had to Be You - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/It Had to Be You - Ly - G Bass for Standard"}

%}
