%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = a,,
bassKey = a
whatClef = "bass"

\include "../Core/Lady Madonna - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lady Madonna - A Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Lady Madonna - Ly - A Bass for Standard"}

%}
