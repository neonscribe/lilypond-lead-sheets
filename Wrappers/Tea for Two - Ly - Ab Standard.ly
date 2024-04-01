%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
whatClef = "treble"

\include "../Core/Tea for Two - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tea for Two - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Tea for Two - Ly - Ab Standard"}

%}
