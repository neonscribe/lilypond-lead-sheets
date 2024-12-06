%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,,
whatClef = "bass"

\include "../Core/Crazy Rhythm - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Crazy Rhythm - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Crazy Rhythm - Ly - G Bass for Standard"}

%}
