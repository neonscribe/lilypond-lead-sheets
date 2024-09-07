%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Walkin' My Baby Back Home - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Walkin' My Baby Back Home - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Walkin' My Baby Back Home - Ly - Eb Bass for Standard"}

%}
