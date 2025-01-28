%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/The Look of Love - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Look of Love - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/The Look of Love - Ly - F to G for Bb for Standard"}

%}
