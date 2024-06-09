%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Mercy Mercy Mercy - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mercy, Mercy, Mercy - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Mercy Mercy Mercy - Ly - Bb Standard"}

%}
