%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Where or When - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Where or When - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Where or When - Ly - Eb to F for Bb for Standard"}

%}
