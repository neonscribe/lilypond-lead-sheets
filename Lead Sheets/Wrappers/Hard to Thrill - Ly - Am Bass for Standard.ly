%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = a,
whatClef = "bass"

\include "../Core/Hard to Thrill - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Hard to Thrill - Am Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Hard to Thrill - Ly - Am Bass for Standard"}

%}
