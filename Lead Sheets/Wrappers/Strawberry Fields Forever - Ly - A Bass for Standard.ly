%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = a,,
bassKey = a
whatClef = "bass"

\include "../Core/Strawberry Fields Forever - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Strawberry Fields Forever - A Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Strawberry Fields Forever - Ly - A Bass for Standard"}

%}
