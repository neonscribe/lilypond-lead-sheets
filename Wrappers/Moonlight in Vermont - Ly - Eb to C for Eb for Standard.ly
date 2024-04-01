%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Moonlight in Vermont - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moonlight in Vermont - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Moonlight in Vermont - Ly - Eb to C for Eb for Standard"}

%}
