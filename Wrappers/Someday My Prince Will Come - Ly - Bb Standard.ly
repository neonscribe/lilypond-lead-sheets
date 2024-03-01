%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Someday My Prince Will Come - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Someday My Prince Will Come - B♭}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Someday My Prince Will Come - Ly - Bb Standard"}

%}
