%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/It's a Good Day - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's a Good Day - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/It's a Good Day - Ly - Eb to F for Bb for Standard"}

%}
