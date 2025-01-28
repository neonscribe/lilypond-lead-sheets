%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Can't We Be Friends - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Can't We Be Friends - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Can't We Be Friends - Ly - F Bass for Standard"}

%}
