%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Help the Poor - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Help the Poor - Dm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Help the Poor - Ly - Dm to Em for Bb for Standard"}

%}
