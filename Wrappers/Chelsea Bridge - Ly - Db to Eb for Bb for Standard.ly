%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Chelsea Bridge - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Chelsea Bridge - Db to Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Chelsea Bridge - Ly - Db to Eb for Bb for Standard"}

%}
