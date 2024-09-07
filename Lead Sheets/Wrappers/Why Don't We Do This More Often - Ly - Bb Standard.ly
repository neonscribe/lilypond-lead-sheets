%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Why Don't We Do This More Often - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Why Don't We Do This More Often - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Why Don't We Do This More Often - Ly - Bb Standard"}

%}
