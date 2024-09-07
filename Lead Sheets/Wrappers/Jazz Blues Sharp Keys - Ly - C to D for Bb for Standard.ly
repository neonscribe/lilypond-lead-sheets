%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Transposed for Bb Instruments"
whatKey = d
whatClef = "treble"

\include "../Core/Jazz Blues Sharp Keys - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jazz Blues Sharp Keys}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Jazz Blues Sharp Keys - Ly - C to D for Bb for Standard"}

%}
