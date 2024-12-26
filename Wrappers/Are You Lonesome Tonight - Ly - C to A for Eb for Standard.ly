%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Are You Lonesome Tonight - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Are You Lonesome Tonight - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Are You Lonesome Tonight - Ly - C to A for Eb for Standard"}

%}
