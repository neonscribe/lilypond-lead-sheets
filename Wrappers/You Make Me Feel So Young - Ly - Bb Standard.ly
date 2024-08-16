%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/You Make Me Feel So Young - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Make Me Feel So Young - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/You Make Me Feel So Young - Ly - Bb Standard"}

%}
