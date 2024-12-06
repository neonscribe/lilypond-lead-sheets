%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "John Pizzarelli Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Have Yourself a Merry Little Christmas - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Have Yourself a Merry Little Christmas - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Have Yourself a Merry Little Christmas - Ly - Bb Standard"}

%}
