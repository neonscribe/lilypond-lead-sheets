%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/Artillerie Lourde - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Artillerie Lourde - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Artillerie Lourde - Ly - C Bass for Standard"}

%}
