%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Liza (All the Clouds'll Roll Away) - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Liza (All the Clouds'll Roll Away) - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Liza (All the Clouds'll Roll Away) - Ly - Eb Bass for Standard"}

%}
