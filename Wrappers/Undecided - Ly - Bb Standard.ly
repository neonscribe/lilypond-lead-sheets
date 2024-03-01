%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Undecided - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Undecided - B♭}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Undecided - Ly - Bb Standard"}

%}
