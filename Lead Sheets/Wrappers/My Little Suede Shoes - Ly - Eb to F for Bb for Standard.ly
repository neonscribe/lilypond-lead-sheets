%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/My Little Suede Shoes - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Little Suede Shoes - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/My Little Suede Shoes - Ly - Eb to F for Bb for Standard"}

%}
