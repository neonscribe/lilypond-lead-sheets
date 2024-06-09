%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Any Time - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Any Time - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Any Time - Ly - F to G for Bb for Standard"}

%}
