%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = fs
whatClef = "treble"

\include "../Core/Elena's Bossa - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Elena's Bossa - Am to F♯m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Elena's Bossa - Ly - Am to Fsm for Eb for Standard"}

%}
