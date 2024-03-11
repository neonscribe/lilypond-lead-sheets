%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,,
whatClef = "bass"

\include "../Core/Lucky Southern - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lucky Southern - D Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Lucky Southern - Ly - D Bass for Standard"}

%}
