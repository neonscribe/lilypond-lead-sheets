%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
whatClef = "treble"

\include "../Core/The Late Late Show - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Late Late Show - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The Late Late Show - Ly - Ab Standard"}

%}
