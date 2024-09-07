%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/As Time Goes By - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{As Time Goes By - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/As Time Goes By - Ly - Eb Standard"}

%}
