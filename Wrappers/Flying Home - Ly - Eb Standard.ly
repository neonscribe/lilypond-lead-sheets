%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Flying Home - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Flying Home - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Flying Home - Ly - Eb Standard"}

%}
