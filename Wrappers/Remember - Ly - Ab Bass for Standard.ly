%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = af,
whatClef = "bass"

\include "../Core/Remember - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Remember - Ab Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Remember - Ly - Ab Bass for Standard"}

%}
