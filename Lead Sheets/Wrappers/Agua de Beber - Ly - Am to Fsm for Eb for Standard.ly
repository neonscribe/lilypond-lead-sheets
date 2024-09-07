%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = fs
whatClef = "treble"

\include "../Core/Agua de Beber - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Água de Beber (Water to Drink) - Am to F\#m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Agua de Beber - Ly - Am to Fsm for Eb for Standard"}

%}
