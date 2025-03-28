%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Hallelujah I Love Him (Her) So - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Hallelujah I Love Her So - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Hallelujah I Love Him (Her) So - Ly - F to D for Eb for Standard"}

%}
