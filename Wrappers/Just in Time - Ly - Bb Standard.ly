%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Just in Time - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Just in Time - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Just in Time - Ly - Bb Standard"}

%}
