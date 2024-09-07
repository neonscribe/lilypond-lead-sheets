%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/My Buddy Swing - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Buddy (Swing) - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/My Buddy Swing - Ly - G Bass for Standard"}

%}
