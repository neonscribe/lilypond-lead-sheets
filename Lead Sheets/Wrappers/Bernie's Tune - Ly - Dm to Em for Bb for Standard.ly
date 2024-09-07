%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Bernie's Tune - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bernie's Tune - Dm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Bernie's Tune - Ly - Dm to Em for Bb for Standard"}

%}
