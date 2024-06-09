%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Lucy in the Sky With Diamonds - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lucy in the Sky With Diamonds - A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Lucy in the Sky With Diamonds - Ly - A Standard"}

%}
