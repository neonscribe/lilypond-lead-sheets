%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
whatClef = "treble"

\include "../Core/Ceora - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Ceora - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Ceora - Ly - Ab Standard"}

%}
