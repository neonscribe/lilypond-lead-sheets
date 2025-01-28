%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,,
whatClef = "bass"

\include "../Core/Just Squeeze Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Just Squeeze Me - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Just Squeeze Me - Ly - F Bass for Standard"}

%}
