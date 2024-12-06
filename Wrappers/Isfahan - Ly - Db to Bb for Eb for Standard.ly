%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Isfahan - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Isfahan - Db to Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Isfahan - Ly - Db to Bb for Eb for Standard"}

%}
