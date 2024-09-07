%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/I Wish I Were Twins - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Wish I Were Twins - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I Wish I Were Twins - Ly - C to D for Bb for Standard"}

%}
