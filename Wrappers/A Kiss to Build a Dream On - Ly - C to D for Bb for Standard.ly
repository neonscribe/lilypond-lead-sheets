%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/A Kiss to Build a Dream On - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Kiss to Build a Dream On - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/A Kiss to Build a Dream On - Ly - C to D for Bb for Standard"}

%}
