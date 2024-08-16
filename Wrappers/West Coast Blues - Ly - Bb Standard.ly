%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/West Coast Blues - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{West Coast Blues - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/West Coast Blues - Ly - Bb Standard"}

%}
