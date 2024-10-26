%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Night Life - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Night Life - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Night Life - Ly - Eb Standard"}

%}
