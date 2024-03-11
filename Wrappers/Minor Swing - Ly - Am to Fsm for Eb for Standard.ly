%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = fs
whatClef = "treble"

\include "../Core/Minor Swing - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Minor Swing - Am to F♯m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Minor Swing - Ly - Am to Fsm for Eb for Standard"}

%}
