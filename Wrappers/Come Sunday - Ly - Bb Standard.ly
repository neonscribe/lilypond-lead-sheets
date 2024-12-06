%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Come Sunday - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Come Sunday - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Come Sunday - Ly - Bb Standard"}

%}
