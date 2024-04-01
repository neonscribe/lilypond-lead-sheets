%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Moonlight in Vermont - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moonlight in Vermont - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Moonlight in Vermont - Ly - Eb to F for Bb for Standard"}

%}
