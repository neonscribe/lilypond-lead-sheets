%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = a,,
whatClef = "bass"

\include "../Core/Elena's Bossa - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Elena's Bossa - Am Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Elena's Bossa - Ly - Am Bass for Standard"}

%}
