%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = fs
whatClef = "treble"

\include "../Core/Unchain My Heart - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Unchain My Heart - Am to F\#m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Unchain My Heart - Ly - Am to Fsm for Eb for Standard"}

%}
