%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/I Wish I Were Twins - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Wish I Were Twins - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I Wish I Were Twins - Ly - C to A for Eb for Standard"}

%}
