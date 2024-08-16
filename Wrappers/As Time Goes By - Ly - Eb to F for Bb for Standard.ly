%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/As Time Goes By - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{As Time Goes By - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/As Time Goes By - Ly - Eb to F for Bb for Standard"}

%}
