%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/A Nightingale Sang in Berkeley Square - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Nightingale Sang in Berkeley Square - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/A Nightingale Sang in Berkeley Square - Ly - Eb Bass for Standard"}

%}
