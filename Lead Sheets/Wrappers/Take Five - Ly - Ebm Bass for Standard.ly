%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Take Five - Ly Core - Ebm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Take Five - Ebm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Take Five - Ly - Ebm Bass for Standard"}

%}
