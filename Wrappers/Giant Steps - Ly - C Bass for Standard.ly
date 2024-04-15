%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Giant Steps - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Giant Steps - Bass Clef}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Giant Steps - Ly - C Bass for Standard"}

%}
