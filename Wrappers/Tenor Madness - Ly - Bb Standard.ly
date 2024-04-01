%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Tenor Madness - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tenor Madness - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Tenor Madness - Ly - Bb Standard"}

%}
