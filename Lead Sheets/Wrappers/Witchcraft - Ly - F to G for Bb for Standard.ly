%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Witchcraft - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Witchcraft - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Witchcraft - Ly - F to G for Bb for Standard"}

%}
