%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = fs
whatClef = "treble"

\include "../Core/502 Blues - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{502 Blues - Am to F\#m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/502 Blues - Ly - Am to Fsm for Eb for Standard"}

%}
