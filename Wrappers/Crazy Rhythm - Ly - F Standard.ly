%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Django Key"
whatKey = f
whatClef = "treble"

\include "../Core/Crazy Rhythm - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Crazy Rhythm - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Crazy Rhythm - Ly - F Standard"}

%}
