%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/On the Alamo - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{On the Alamo - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/On the Alamo - Ly - Eb Standard"}

%}
