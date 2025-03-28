%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Breezin' Along With the Breeze - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Breezin' Along With the Breeze - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Breezin' Along With the Breeze - Ly - F to G for Bb for Standard"}

%}
