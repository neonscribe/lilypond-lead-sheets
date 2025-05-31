%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/ESP - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{E.S.P. - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/ESP - Ly - C Standard"}

%}
