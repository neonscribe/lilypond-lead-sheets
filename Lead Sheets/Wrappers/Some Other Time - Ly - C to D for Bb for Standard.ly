%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Some Other Time - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Some Other Time - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Some Other Time - Ly - C to D for Bb for Standard"}

%}
