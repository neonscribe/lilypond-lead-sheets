%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/As Time Goes By - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{As Time Goes By - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/As Time Goes By - Ly - Eb to C for Eb for Standard"}

%}
