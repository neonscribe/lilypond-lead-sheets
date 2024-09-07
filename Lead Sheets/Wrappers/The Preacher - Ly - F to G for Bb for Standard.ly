%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/The Preacher - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Preacher - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/The Preacher - Ly - F to G for Bb for Standard"}

%}
