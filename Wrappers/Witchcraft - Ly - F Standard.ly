%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Witchcraft - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Witchcraft - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Witchcraft - Ly - F Standard"}

%}
