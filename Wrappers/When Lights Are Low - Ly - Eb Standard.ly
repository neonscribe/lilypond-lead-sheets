%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/When Lights Are Low - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When Lights Are Low - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/When Lights Are Low - Ly - Eb Standard"}

%}
