%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Good Bait - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Good Bait - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Good Bait - Ly - Bb Standard"}

%}
