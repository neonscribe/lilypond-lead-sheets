%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Moon River - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moon River - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Moon River - Ly - C to D for Bb for Standard"}

%}
