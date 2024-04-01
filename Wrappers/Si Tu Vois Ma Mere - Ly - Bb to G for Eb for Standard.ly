%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Si Tu Vois Ma Mere - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Si Tu Vois Ma Mère - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Si Tu Vois Ma Mere - Ly - Bb to G for Eb for Standard"}

%}
