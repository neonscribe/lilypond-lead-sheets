%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = af,
whatClef = "bass"

\include "../Core/Along Came Betty - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Along Came Betty - Ab Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Along Came Betty - Ly - Ab Bass for Standard"}

%}
