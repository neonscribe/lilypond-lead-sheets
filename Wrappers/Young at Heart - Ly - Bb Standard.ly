%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Young at Heart - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Young at Heart - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Young at Heart - Ly - Bb Standard"}

%}
