%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
bassKey = c
whatClef = "treble"

\include "../Core/Con Alma - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Con Alma - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Con Alma - Ly - C Standard"}

%}
