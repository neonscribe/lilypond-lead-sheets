%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = a,,
whatClef = "bass"

\include "../Core/Minor Swing - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Minor Swing - Am Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Minor Swing - Ly - Am Bass for Standard"}

%}
