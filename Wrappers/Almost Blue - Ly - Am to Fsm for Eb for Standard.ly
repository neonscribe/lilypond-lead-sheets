%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = fs'
whatClef = "treble"

\include "../Core/Almost Blue - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Almost Blue - Am to F\#m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Almost Blue - Ly - Am to Fsm for Eb for Standard"}

%}
