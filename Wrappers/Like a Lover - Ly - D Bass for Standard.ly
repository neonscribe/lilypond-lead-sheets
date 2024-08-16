%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/Like a Lover - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Like a Lover (O Cantador) - D Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Like a Lover - Ly - D Bass for Standard"}

%}
