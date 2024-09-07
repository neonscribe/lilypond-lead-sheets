%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Let's Face the Music and Dance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Face the Music and Dance - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Let's Face the Music and Dance - Ly - C to A for Eb for Standard"}

%}
