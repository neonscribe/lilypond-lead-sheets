%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = df,
whatClef = "bass"

\include "../Core/Isfahan - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Isfahan - Db Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Isfahan - Ly - Db Bass for Standard"}

%}
