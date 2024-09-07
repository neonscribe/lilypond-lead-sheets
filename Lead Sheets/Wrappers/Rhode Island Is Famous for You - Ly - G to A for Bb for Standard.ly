%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Rhode Island Is Famous for You - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Rhode Island Is Famous for You - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Rhode Island Is Famous for You - Ly - G to A for Bb for Standard"}

%}
