%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = fs'
whatClef = "treble"

\include "../Core/Hard to Thrill - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Hard to Thrill - Am to F\#m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Hard to Thrill - Ly - Am to Fsm for Eb for Standard"}

%}
