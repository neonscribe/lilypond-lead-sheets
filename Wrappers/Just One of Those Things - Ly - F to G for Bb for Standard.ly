%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Just One of Those Things - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Just One of Those Things - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Just One of Those Things - Ly - F to G for Bb for Standard"}

%}
