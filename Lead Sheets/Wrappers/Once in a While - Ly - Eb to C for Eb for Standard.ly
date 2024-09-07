%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Once in a While - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Once in a While - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Once in a While - Ly - Eb to C for Eb for Standard"}

%}
