%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Topsy - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Topsy - Dm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Topsy - Ly - Dm to Em for Bb for Standard"}

%}
