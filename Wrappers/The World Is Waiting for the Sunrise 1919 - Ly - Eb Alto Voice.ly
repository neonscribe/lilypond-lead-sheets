%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sue Raney Key"
whatKey = ef,
whatClef = "treble_8"

\include "../Core/The World Is Waiting for the Sunrise 1919 - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The World Is Waiting for the Sunrise - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The World Is Waiting for the Sunrise 1919 - Ly - C Standard"}

%}
