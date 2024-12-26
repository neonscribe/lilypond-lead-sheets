%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Always Waltz - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Always (3/4) - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Always Waltz - Ly - F Standard"}

%}
