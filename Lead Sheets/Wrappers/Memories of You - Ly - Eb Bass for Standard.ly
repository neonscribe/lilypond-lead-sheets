%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Memories of You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Memories of You - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Memories of You - Ly - Eb Bass for Standard"}

%}
