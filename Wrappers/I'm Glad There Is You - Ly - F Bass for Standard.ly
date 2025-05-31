%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/I'm Glad There Is You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm Glad There Is You - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I'm Glad There Is You - Ly - F Bass for Standard"}

%}
