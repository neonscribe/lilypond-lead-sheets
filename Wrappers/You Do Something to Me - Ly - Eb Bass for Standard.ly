%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/You Do Something to Me - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Do Something to Me - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/You Do Something to Me - Ly - Eb Bass for Standard"}

%}
