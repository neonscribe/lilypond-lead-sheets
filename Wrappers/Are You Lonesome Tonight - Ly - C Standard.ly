%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Are You Lonesome Tonight - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Are You Lonesome Tonight - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Are You Lonesome Tonight - Ly - C Standard"}

%}
