%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Now's the Time - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Now's the Time - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Now's the Time - Ly - F to G for Bb for Standard"}

%}
