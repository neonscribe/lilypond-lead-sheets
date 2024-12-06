%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Midnight in Moscow - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Midnight in Moscow - Dm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Midnight in Moscow - Ly - Dm to Em for Bb for Standard"}

%}
