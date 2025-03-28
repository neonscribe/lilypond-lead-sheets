%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = df,
whatClef = "bass"

\include "../Core/Squeeze Me - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Squeeze Me - Db Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Squeeze Me - Ly - Db Bass for Standard"}

%}
