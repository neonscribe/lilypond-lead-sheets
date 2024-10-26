%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Good Morning Heartache - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Good Morning Heartache - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Good Morning Heartache - Ly - F to G for Bb for Standard"}

%}
