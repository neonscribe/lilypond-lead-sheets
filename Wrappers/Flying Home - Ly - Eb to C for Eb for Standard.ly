%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Flying Home - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Flying Home - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Flying Home - Ly - Eb to C for Eb for Standard"}

%}
