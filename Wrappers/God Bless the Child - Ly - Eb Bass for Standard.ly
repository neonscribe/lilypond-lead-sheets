%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/God Bless the Child - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{God Bless the Child - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/God Bless the Child - Ly - Eb Bass for Standard"}

%}
