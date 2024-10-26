%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Imagination - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Imagination - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Imagination - Ly - Eb Standard"}

%}
