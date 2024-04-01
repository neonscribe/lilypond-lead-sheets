%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Bags Groove - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bags' Groove - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Bags Groove - Ly - F to G for Bb for Standard"}

%}
