%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Cantaloupe Island - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cantaloupe Island - Fm to Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Cantaloupe Island - Ly - Fm to Gm for Bb for Standard"}

%}
