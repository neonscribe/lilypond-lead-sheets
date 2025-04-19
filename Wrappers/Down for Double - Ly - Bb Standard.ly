%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Down for Double - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Down for Double - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Down for Double - Ly - Bb Standard"}

%}
