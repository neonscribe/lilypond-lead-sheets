%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Oleo - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Oleo - B♭}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Oleo - Ly - Bb Standard"}

%}
