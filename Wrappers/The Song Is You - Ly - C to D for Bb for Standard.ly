%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/The Song Is You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Song Is You - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/The Song Is You - Ly - C to D for Bb for Standard"}

%}
