%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/God Bless the Child - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{God Bless the Child - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/God Bless the Child - Ly - Eb Standard"}

%}
