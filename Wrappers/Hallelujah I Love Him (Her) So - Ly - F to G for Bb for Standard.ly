%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Hallelujah I Love Him (Her) So - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Hallelujah I Love Her So - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Hallelujah I Love Him (Her) So - Ly - F to G for Bb for Standard"}

%}
