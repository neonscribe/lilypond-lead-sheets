%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Secret Love - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Secret Love - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Secret Love - Ly - Eb to F for Bb for Standard"}

%}
