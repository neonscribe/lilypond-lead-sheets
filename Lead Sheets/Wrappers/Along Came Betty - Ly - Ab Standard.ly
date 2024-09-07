%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
whatClef = "treble"

\include "../Core/Along Came Betty - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Along Came Betty - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Along Came Betty - Ly - Ab Standard"}

%}
