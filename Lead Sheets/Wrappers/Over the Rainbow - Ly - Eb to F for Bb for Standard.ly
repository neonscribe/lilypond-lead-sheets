%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Over the Rainbow - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Over the Rainbow - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Over the Rainbow - Ly - Eb to F for Bb for Standard"}

%}
