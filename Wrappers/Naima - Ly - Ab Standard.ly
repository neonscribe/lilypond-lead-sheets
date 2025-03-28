%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
bassKey = af
whatClef = "treble"

\include "../Core/Naima - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Naima - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Naima - Ly - Ab Standard"}

%}
