%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Liza (All the Clouds'll Roll Away) - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Liza (All the Clouds'll Roll Away) - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Liza (All the Clouds'll Roll Away) - Ly - Eb Standard"}

%}
