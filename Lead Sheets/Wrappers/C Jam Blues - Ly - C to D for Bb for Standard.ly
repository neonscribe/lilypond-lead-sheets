%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/C Jam Blues - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{C Jam Blues - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/C Jam Blues - Ly - C to D for Bb for Standard"}

%}
