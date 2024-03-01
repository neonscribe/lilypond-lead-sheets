%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Freddie Freeloader - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Freddie Freeloader - B♭}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Freddie Freeloader - Ly - Bb Standard"}

%}
