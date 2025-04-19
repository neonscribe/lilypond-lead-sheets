%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Lover Waltz - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lover (3/4) - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Lover Waltz - Ly - C to D for Bb for Standard"}

%}
