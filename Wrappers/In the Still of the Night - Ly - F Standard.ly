%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/In the Still of the Night - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In the Still of the Night - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/In the Still of the Night - Ly - F Standard"}

%}
