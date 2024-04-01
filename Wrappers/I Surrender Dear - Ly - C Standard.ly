%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/I Surrender Dear - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Surrender, Dear - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I Surrender Dear - Ly - C Standard"}

%}
