%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Imagination - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Imagination - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Imagination - Ly - Eb Bass for Standard"}

%}
