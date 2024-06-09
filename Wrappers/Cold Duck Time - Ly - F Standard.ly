%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
bassKey = f
whatClef = "treble"

\include "../Core/Cold Duck Time - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cold Duck Time - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Cold Duck Time - Ly - F Standard"}

%}
