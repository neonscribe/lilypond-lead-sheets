%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Do You Know What It Means to Miss New Orleans - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Do You Know What It Means to Miss New Orleans - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Do You Know What It Means to Miss New Orleans - Ly - C Bass for Standard"}

%}
