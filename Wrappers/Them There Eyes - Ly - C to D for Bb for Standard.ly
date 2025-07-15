%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Them There Eyes - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Them There Eyes - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Them There Eyes - Ly - C to D for Bb for Standard"}

%}
