%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Little Girl Blue - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Little Girl Blue - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Little Girl Blue - Ly - F Bass for Standard"}

%}
