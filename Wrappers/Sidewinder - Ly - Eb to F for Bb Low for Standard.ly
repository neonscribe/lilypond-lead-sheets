%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = f,
bassKey = f
whatClef = "treble"

\include "../Core/Sidewinder - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sidewinder - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Sidewinder - Ly - Eb to F for Bb Low for Standard"}

%}
