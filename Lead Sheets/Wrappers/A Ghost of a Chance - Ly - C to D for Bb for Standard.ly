%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/A Ghost of a Chance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Ghost of a Chance - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/A Ghost of a Chance - Ly - C to D for Bb for Standard"}

%}
