%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = df,
whatClef = "bass"

\include "../Core/Woody 'n' You - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Woody 'n' You - Db Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Woody 'n' You - Ly - Db Bass for Standard"}

%}
