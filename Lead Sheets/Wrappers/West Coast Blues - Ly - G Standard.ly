%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Non-Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/West Coast Blues - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{West Coast Blues - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/West Coast Blues - Ly - G Standard"}

%}
