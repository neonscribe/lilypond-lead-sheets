%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d
bassKey = d
whatClef = "treble"

\include "../Core/Bags Groove - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bags' Groove - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Bags Groove - Ly - F to D for Eb for Standard"}

%}
