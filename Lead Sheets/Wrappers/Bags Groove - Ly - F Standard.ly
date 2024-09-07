%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
bassKey = f
whatClef = "treble"

\include "../Core/Bags Groove - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bags' Groove - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bags Groove - Ly - F Standard"}

%}
