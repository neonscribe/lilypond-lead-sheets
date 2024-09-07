%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Yes Sir That's My Baby - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Yes Sir, That's My Baby - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Yes Sir, That's My Baby - Ly - Eb to F for Bb for Standard"}

%}
