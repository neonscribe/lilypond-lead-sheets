%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Don't Fence Me In - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Don't Fence Me In - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Don't Fence Me In - Ly - F Bass for Standard"}

%}
