%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Swing"
whatKey = c,
whatClef = "bass"

\include "../Core/Songe d'Automne Swing - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Songe d'Automne Swing - Cm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Songe d'Automne Swing - Ly - Cm Bass for Standard"}

%}
