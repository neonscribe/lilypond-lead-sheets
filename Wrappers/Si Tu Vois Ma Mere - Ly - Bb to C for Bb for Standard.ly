%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Si Tu Vois Ma Mere - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Si Tu Vois Ma Mère - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Si Tu Vois Ma Mere - Ly - Bb to C for Bb for Standard"}

%}
