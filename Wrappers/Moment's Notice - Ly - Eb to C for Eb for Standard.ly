%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Moment's Notice - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moment's Notice - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Moment's Notice - Ly - Eb to C for Eb for Standard"}

%}
