%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = df,
whatClef = "bass"

\include "../Core/Chelsea Bridge - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Chelsea Bridge - Db Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Chelsea Bridge - Ly - Db Bass for Standard"}

%}
