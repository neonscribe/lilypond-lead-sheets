%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Squeeze Me - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Squeeze Me - Db to Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Squeeze Me - Ly - Db to Eb for Bb for Standard"}

%}
