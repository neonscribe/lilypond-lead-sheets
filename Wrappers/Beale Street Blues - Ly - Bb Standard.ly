%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Beale Street Blues - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Beale Street Blues - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Beale Street Blues - Ly - Bb Standard"}

%}
