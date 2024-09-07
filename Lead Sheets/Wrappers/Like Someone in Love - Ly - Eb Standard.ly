%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Like Someone in Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Like Someone in Love - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Like Someone in Love - Ly - Eb Standard"}

%}
