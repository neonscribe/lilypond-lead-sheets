%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Change Partners - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Change Partners - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Change Partners - Ly - F Standard"}

%}
