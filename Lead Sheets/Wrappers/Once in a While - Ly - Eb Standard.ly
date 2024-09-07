%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Once in a While - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Once in a While - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Once in a While - Ly - Eb Standard"}

%}
