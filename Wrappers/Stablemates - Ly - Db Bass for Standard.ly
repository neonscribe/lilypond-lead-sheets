%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = df,
whatClef = "bass"

\include "../Core/Stablemates - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stablemates - Db Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Stablemates - Ly - Db Bass for Standard"}

%}
