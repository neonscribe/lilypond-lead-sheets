%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Liza (All the Clouds'll Roll Away) - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Liza (All the Clouds'll Roll Away) - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Liza (All the Clouds'll Roll Away) - Ly - Eb to C for Eb for Standard"}

%}
