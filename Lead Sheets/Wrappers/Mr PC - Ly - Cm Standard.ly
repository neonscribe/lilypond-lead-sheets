%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Mr PC - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mr. P.C. - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Mr PC - Ly - Cm Standard"}

%}
