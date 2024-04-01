%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Seul Ce Soir - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(Je Suis) Seul Ce Soir - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Seul Ce Soir - Ly - C Standard"}

%}
