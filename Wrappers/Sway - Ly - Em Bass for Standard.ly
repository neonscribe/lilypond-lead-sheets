%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = e,,
whatClef = "bass"

\include "../Core/Sway - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sway - Em Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Sway - Ly - Em Bass for Standard"}

%}
