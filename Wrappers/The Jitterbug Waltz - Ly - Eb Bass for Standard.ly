%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/The Jitterbug Waltz - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Jitterbug Waltz - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The Jitterbug Waltz - Ly - Eb Bass for Standard"}

%}
