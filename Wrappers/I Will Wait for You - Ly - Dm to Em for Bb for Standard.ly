%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/I Will Wait for You - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Will Wait for You - Dm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I Will Wait for You - Ly - Dm to Em for Bb for Standard"}

%}
