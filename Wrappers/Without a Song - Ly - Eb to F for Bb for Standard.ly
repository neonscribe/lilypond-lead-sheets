%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Without a Song - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Without a Song - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Without a Song - Ly - Eb to F for Bb for Standard"}

%}
