%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Imagination - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Imagination - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Imagination - Ly - Eb to F for Bb for Standard"}

%}
