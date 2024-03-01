%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Invitation - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Invitation - Cm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Invitation - Ly - Cm Bass for Standard"}

%}
