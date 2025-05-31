%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Moment's Notice - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moment's Notice - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Moment's Notice - Ly - Eb Standard"}

%}
