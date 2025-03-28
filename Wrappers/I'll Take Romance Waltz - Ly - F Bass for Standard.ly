%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/I'll Take Romance Waltz - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Take Romance (3/4) - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I'll Take Romance Waltz - Ly - F Bass for Standard"}

%}
