%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Inner Urge - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Inner Urge - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Inner Urge - Ly - C Standard"}

%}
