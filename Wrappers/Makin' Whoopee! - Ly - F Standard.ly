%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Makin' Whoopee! - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Makin' Whoopee! - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Makin' Whoopee! - Ly - F Standard"}

%}
