%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb High for Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/Agua de Beber - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Água de Beber (Water to Drink) - Am to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Agua de Beber - Ly - Am to Bm for Bb for Standard"}

%}
