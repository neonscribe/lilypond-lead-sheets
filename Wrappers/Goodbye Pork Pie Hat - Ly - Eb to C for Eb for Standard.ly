%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Goodbye Pork Pie Hat - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Goodbye Pork Pie Hat - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Goodbye Pork Pie Hat - Ly - Eb to C for Eb for Standard"}

%}
