%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alternate Key"
whatKey = g
whatClef = "treble"

\include "../Core/Imagination - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Imagination - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Imagination - Ly - G Standard"}

%}
