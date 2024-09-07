%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Walkin' My Baby Back Home - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Walkin' My Baby Back Home - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Walkin' My Baby Back Home - Ly - Eb to C for Eb for Standard"}

%}
