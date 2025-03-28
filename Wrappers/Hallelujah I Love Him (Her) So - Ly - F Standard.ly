%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Hallelujah I Love Him (Her) So - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Hallelujah I Love Her So - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Hallelujah I Love Him (Her) So - Ly - F Standard"}

%}
