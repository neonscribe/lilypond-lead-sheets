%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = fs'
whatClef = "treble"

\include "../Core/Sunny - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sunny - Am to F\#m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Sunny - Ly - Am to Fsm for Eb for Standard"}

%}
