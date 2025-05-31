%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dakota Staton Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Invitation - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Invitation - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Invitation - Ly - Fm Alto Voice"}

%}
