%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Cotton Tail - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cotton Tail - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Cotton Tail - Ly - Bb Standard"}

%}
