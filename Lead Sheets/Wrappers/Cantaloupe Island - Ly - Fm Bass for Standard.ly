%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Cantaloupe Island - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cantaloupe Island - Fm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Cantaloupe Island - Ly - Fm Bass for Standard"}

%}
