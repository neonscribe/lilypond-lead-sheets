%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = af,,
whatClef = "bass"

\include "../Core/The Late Late Show - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Late Late Show - Ab Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The Late Late Show - Ly - Ab Bass for Standard"}

%}
