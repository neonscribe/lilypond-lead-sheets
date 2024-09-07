%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Waltz"
whatKey = c,
whatClef = "bass"

\include "../Core/Songe d'Automne Waltz - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Songe d'Automne Waltz - Cm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Songe d'Automne Waltz - Ly - Cm Bass for Standard"}

%}
