%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Mack the Knife - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mack the Knife - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Mack the Knife - Ly - C to D for Bb for Standard"}

%}
