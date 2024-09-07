%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c
whatClef = "bass"

\include "../Core/I Can't Stop Loving You - Ly Core - B.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Can't Stop Loving You - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I Can't Stop Loving You - Ly - C Bass for Standard"}

%}
