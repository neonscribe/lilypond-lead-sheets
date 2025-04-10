%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = a,
whatClef = "bass"

\include "../Core/Bei Mir Bist Du Schoen - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bei Mir Bist Du Schoen - Am Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Bei Mir Bist Du Schoen - Ly - Am Bass for Standard"}

%}
