%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Walkin' My Baby Back Home - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Walkin' My Baby Back Home - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Walkin' My Baby Back Home - Ly - Eb to F for Bb for Standard"}

%}
