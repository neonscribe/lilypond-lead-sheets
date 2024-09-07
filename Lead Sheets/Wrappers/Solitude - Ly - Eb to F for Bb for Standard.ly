%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Solitude - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Solitude - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Solitude - Ly - Eb to F for Bb for Standard"}

%}
