%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Yes Sir That's My Baby - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Yes Sir, That's My Baby - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Yes Sir, That's My Baby - Ly - Eb to C for Eb for Standard"}

%}
