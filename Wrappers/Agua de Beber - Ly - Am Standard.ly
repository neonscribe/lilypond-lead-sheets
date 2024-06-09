%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Agua de Beber - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Água de Beber (Water to Drink) - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Agua de Beber - Ly - Am Standard"}

%}
