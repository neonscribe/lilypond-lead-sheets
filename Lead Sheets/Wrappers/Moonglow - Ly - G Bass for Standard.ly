%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Moonglow - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moonglow - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Moonglow - Ly - G Bass for Standard"}

%}
