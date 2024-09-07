%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass Transcription"
whatKey = c,
whatClef = "bass"

\include "../Core/Lebanon - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lebanon - C Bass Line}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Bass Line/Lebanon - Ly - C Bass Line for Standard"}

%}
