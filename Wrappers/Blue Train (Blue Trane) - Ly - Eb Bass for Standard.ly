%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Blue Train (Blue Trane) - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Train (Blue Trane) - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Blue Train (Blue Trane) - Ly - Eb Bass for Standard"}

%}
