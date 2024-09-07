%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,,
whatClef = "bass"

\include "../Core/Anthropology - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Anthropology - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Anthropology - Ly - Bb Bass for Standard"}

%}
