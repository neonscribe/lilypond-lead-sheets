%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = e,
whatClef = "bass"

\include "../Core/My Favorite Things - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Favorite Things - Em Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/My Favorite Things - Ly - Em Bass for Standard"}

%}
