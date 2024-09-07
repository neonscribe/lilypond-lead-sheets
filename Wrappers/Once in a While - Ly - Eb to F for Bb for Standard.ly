%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Once in a While - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Once in a While - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Once in a While - Ly - Eb to F for Bb for Standard"}

%}
