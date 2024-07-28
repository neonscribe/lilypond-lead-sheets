%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/A Nightingale Sang in Berkeley Square - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Nightingale Sang in Berkeley Square - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/A Nightingale Sang in Berkeley Square - Ly - Eb Standard"}

%}
