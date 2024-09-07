%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Smile - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Smile - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Smile - Ly - F to G for Bb for Standard"}

%}
