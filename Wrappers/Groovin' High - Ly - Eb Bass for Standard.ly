%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Groovin' High - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Groovin' High - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Groovin' High - Ly - Eb Bass for Standard"}

%}
