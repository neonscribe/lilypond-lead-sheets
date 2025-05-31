%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = f,
whatClef = "treble"

\include "../Core/Bessie's Blues - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bessie's Blues - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Bessie's Blues - Ly - Eb to F for Bb Low for Standard"}

%}
