%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,,
whatClef = "bass"

\include "../Core/Struttin' With Some Berbecue - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Struttin' With Some Berbecue - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Struttin' With Some Berbecue - Ly - F Bass for Standard"}

%}
