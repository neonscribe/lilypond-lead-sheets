%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
whatClef = "treble"

\include "../Core/Remember - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Remember - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Remember - Ly - Ab Standard"}

%}
