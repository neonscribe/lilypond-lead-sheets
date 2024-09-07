%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/When I Take My Sugar to Tea - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When I Take My Sugar to Tea - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/When I Take My Sugar to Tea - Ly - F to G for Bb for Standard"}

%}
