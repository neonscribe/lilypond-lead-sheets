%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Mr PC - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mr. P.C. - Cm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Mr PC - Ly - Cm Bass for Standard"}

%}
