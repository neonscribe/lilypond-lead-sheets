%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Artillerie Lourde - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Artillerie Lourde - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Artillerie Lourde - Ly - C Standard"}

%}
