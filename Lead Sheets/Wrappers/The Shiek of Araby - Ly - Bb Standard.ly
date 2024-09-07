%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/The Shiek of Araby - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Shiek of Araby - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The Shiek of Araby - Ly - Bb Standard"}

%}
