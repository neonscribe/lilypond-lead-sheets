%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = fs
whatClef = "treble"

\include "../Core/While My Guitar Gently Weeps - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{While My Guitar Gently Weeps - Am to F♯m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/While My Guitar Gently Weeps - Ly - Am to Fsm for Eb for Standard"}

%}
