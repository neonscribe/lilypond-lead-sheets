%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/When I Fall in Love - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When I Fall in Love - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/When I Fall in Love - Ly - Eb Standard"}

%}
