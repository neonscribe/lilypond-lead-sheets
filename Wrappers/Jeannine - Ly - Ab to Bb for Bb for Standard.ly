%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Jeannine - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jeannine - Ab to Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Jeannine - Ly - Ab to Bb for Bb for Standard"}

%}
