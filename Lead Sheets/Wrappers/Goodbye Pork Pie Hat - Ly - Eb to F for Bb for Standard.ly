%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Goodbye Pork Pie Hat - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Goodbye Pork Pie Hat - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Goodbye Pork Pie Hat - Ly - Eb to F for Bb for Standard"}

%}
