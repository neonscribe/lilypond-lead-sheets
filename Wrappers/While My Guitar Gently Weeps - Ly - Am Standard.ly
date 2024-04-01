%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/While My Guitar Gently Weeps - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{While My Guitar Gently Weeps - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/While My Guitar Gently Weeps - Ly - Am Standard"}

%}
