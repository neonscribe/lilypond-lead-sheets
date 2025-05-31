%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Flying Home - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Flying Home - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Flying Home - Ly - Eb to F for Bb Low for Standard"}

%}
