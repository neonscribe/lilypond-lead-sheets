%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/This Time the Dream's on Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{This Time the Dream's on Me - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/This Time the Dream's on Me - Ly - G to A for Bb for Standard"}

%}
