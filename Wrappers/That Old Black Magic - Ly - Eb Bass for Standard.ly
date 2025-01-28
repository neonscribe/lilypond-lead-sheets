%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/That Old Black Magic - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{That Old Black Magic - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/That Old Black Magic - Ly - Eb Bass for Standard"}

%}
