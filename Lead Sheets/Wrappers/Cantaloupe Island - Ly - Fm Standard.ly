%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Cantaloupe Island - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cantaloupe Island - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Cantaloupe Island - Ly - Fm Standard"}

%}
