%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Petite Fleur - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Petite Fleur - Gm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Petite Fleur - Ly - Gm Bass for Standard"}

%}
