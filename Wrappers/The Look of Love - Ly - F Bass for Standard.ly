%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/The Look of Love - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Look of Love - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The Look of Love - Ly - F Bass for Standard"}

%}
