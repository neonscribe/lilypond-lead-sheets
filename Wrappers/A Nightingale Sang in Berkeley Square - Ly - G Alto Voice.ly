%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Rosemary Clooney Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/A Nightingale Sang in Berkeley Square - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Nightingale Sang in Berkeley Square - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/A Nightingale Sang in Berkeley Square - Ly - G Alto Voice"}

%}
