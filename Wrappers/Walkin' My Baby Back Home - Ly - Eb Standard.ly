%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Walkin' My Baby Back Home - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Walkin' My Baby Back Home - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Walkin' My Baby Back Home - Ly - Eb Standard"}

%}
