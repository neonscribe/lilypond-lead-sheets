%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Woody 'n' You - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Woody 'n' You - Db to Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Woody 'n' You - Ly - Db to Bb for Eb for Standard"}

%}
