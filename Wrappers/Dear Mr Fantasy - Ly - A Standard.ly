%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Dear Mr Fantasy - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dear Mr. Fantasy - A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Dear Mr Fantasy - Ly - A Standard"}

%}
