%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/In the Still of the Night - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In the Still of the Night - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/In the Still of the Night - Ly - F Bass for Standard"}

%}
