%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/Si Tu Vois Ma Mere - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Si Tu Vois Ma Mère - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Si Tu Vois Ma Mere - Ly - Bb Standard"}

%}
