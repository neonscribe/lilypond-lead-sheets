%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/Besame Mucho - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Besame Mucho - Dm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Besame Mucho - Ly - Dm Bass for Standard"}

%}
