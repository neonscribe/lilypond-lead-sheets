%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Beautiful Love - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Beautiful Love - Dm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Beautiful Love - Ly - Dm to Em for Bb for Standard"}

%}
