%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Squeeze Me - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Squeeze Me - Db to Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Squeeze Me - Ly - Db to Bb for Eb for Standard"}

%}
