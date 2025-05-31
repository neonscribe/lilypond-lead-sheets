%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/Fee-Fi-Fo-Fum - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fee-Fi-Fo-Fum - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Fee-Fi-Fo-Fum - Ly - C Bass for Standard"}

%}
