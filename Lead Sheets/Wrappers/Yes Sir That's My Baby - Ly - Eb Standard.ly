%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Yes Sir That's My Baby - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Yes Sir, That's My Baby - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Yes Sir, That's My Baby - Ly - Eb Standard"}

%}
