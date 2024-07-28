%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/September in the Rain - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{September in the Rain - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/September in the Rain - Ly - Eb to F for Bb for Standard"}

%}
