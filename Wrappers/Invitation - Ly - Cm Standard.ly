%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Invitation - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Invitation - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Invitation - Ly - Cm Standard"}

%}
