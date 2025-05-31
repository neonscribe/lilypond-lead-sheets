%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,,
whatClef = "bass"

\include "../Core/Lazy Bird - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lazy Bird - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Lazy Bird - Ly - G Bass for Standard"}

%}
