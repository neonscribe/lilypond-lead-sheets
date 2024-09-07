%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = a,,
whatClef = "bass"

\include "../Core/Dear Mr Fantasy - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dear Mr. Fantasy - A Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Dear Mr Fantasy - Ly - A Bass for Standard"}

%}
