%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Witchcraft - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Witchcraft - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Witchcraft - Ly - F to D for Eb for Standard"}

%}
