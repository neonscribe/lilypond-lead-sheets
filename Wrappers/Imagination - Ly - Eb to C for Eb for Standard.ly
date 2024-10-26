%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Imagination - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Imagination - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Imagination - Ly - Eb to C for Eb for Standard"}

%}
