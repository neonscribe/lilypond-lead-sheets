%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = df,
whatClef = "bass"

\include "../Core/Don't Be That Way - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Don't Be That Way - Db Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Don't Be That Way - Ly - Db Bass for Standard"}

%}
