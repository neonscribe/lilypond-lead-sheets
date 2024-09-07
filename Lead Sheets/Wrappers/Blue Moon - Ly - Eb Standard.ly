%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Blue Moon - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Moon - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Blue Moon - Ly - Eb Standard"}

%}
