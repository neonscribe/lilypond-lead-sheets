%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = fs'
whatClef = "treble"

\include "../Core/Recorda-Me - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Recorda-Me - Am to F♯m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Recorda-Me - Ly - Am to Fsm for Eb for Standard"}

%}
