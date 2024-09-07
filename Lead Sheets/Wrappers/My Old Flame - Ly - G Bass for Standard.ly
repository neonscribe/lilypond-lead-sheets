%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/My Old Flame - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Old Flame - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/My Old Flame - Ly - G Bass for Standard"}

%}
