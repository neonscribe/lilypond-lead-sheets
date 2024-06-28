%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Dindi - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dindi - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Dindi - Ly - Eb to F for Bb for Standard"}

%}
