%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/I Only Have Eyes for You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Only Have Eyes for You - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I Only Have Eyes for You - Ly - C to A for Eb for Standard"}

%}
