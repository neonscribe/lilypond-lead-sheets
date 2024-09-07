%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Along Came Betty - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Along Came Betty - Ab to Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Along Came Betty - Ly - Ab to Bb for Bb for Standard"}

%}
