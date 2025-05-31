%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Peace - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Peace - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Peace - Ly - Bb Standard"}

%}
