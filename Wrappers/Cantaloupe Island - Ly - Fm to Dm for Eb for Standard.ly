%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Cantaloupe Island - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cantaloupe Island - Fm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Cantaloupe Island - Ly - Fm to Dm for Eb for Standard"}

%}
