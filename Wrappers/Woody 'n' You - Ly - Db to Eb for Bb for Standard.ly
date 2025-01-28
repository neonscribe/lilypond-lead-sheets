%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Woody 'n' You - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Woody 'n' You - Db to Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Woody 'n' You - Ly - Db to Eb for Bb for Standard"}

%}
