%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Love for Sale - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love for Sale - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Love for Sale - Ly - Bb Standard"}

%}
