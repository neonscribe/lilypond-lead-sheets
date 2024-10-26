%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/My Heart Stood Still - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Heart Stood Still - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/My Heart Stood Still - Ly - F Bass for Standard"}

%}
