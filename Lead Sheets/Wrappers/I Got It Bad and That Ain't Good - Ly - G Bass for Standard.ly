%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/I Got It Bad and That Ain't Good - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Got It Bad and That Ain't Good - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I Got It Bad and That Ain't Good - Ly - G Bass for Standard"}

%}
