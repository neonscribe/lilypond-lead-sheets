%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Black Coffee - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Black Coffee - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Black Coffee - Ly - F Standard"}

%}
