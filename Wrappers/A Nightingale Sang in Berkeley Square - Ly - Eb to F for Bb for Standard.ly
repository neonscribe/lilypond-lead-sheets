%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/A Nightingale Sang in Berkeley Square - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Nightingale Sang in Berkeley Square - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/A Nightingale Sang in Berkeley Square - Ly - Eb to F for Bb for Standard"}

%}
