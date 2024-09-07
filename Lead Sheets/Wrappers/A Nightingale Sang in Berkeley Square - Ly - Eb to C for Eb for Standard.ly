%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/A Nightingale Sang in Berkeley Square - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Nightingale Sang in Berkeley Square - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/A Nightingale Sang in Berkeley Square - Ly - Eb to C for Eb for Standard"}

%}
