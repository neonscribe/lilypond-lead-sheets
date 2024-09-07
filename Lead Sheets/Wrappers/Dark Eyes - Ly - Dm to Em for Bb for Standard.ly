%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e,
whatClef = "treble"

\include "../Core/Dark Eyes - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dark Eyes - Dm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Dark Eyes - Ly - Dm to Em for Bb for Standard"}

%}
