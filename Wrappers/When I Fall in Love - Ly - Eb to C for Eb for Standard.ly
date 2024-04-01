%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/When I Fall in Love - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When I Fall in Love - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/When I Fall in Love - Ly - Eb to C for Eb for Standard"}

%}
