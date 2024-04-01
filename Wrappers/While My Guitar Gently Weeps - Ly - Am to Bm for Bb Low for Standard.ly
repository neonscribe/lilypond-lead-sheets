%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = b,
whatClef = "treble"

\include "../Core/While My Guitar Gently Weeps - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{While My Guitar Gently Weeps - Am to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/While My Guitar Gently Weeps - Ly - Am to Bm for Bb Low for Standard"}

%}
