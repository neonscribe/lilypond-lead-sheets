%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Fly Me to the Moon - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fly Me to the Moon - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Fly Me to the Moon - Ly - C to D for Bb for Standard"}

%}
