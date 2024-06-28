%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Moon River - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moon River - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Moon River - Ly - C to A for Eb for Standard"}

%}
