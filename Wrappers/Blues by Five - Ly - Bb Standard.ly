%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Blues by Five - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blues by Five - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Blues by Five - Ly - Bb Standard"}

%}
