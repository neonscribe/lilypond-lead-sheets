%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Like Someone in Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Like Someone in Love - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Like Someone in Love - Ly - Eb to C for Eb for Standard"}

%}
