%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/The Best Things in Life Are Free - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Best Things in Life Are Free - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/The Best Things in Life Are Free - Ly - C to D for Bb for Standard"}

%}
