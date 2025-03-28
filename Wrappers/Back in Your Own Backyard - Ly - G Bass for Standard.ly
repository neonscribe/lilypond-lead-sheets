%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Back in Your Own Backyard - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Back in Your Own Backyard - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Back in Your Own Backyard - Ly - G Bass for Standard"}

%}
