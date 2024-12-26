%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/God Bless the Child - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{God Bless the Child - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/God Bless the Child - Ly - Eb to F for Bb for Standard"}

%}
