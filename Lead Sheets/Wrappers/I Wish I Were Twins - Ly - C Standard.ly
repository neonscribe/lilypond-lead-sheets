%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/I Wish I Were Twins - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Wish I Were Twins - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I Wish I Were Twins - Ly - C Standard"}

%}
