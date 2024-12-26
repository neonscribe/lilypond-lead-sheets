%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Easier Key"
whatKey = c
whatClef = "treble"

bassKey = c

\include "../Core/Red Clay - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Red Clay - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Red Clay - Ly - Cm Standard"}

%}
