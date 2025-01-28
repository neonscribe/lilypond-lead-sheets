%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = df
whatClef = "treble"

\include "../Core/Woody 'n' You - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Woody 'n' You - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Woody 'n' You - Ly - Db Standard"}

%}
