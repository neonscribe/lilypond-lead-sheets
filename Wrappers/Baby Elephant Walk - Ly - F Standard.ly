%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Baby Elephant Walk - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Baby Elephant Walk - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Baby Elephant Walk - Ly - F Standard"}

%}
