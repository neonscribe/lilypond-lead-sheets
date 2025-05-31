%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/It's You or No One - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's You or No One - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/It's You or No One - Ly - Eb Standard"}

%}
