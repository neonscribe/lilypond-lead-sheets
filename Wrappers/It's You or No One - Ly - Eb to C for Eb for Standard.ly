%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/It's You or No One - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's You or No One - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/It's You or No One - Ly - Eb to C for Eb for Standard"}

%}
