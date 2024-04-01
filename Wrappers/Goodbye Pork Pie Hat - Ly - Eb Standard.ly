%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Goodbye Pork Pie Hat - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Goodbye Pork Pie Hat - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Goodbye Pork Pie Hat - Ly - Eb Standard"}

%}
