%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Stablemates - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stablemates - Db to Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Stablemates - Ly - Db to Eb for Bb for Standard"}

%}
