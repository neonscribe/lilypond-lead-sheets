%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = a,,
whatClef = "bass"

\include "../Core/While My Guitar Gently Weeps - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{While My Guitar Gently Weeps - Am Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/While My Guitar Gently Weeps - Ly - Am Bass for Standard"}

%}
