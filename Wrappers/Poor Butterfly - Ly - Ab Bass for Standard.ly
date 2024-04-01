%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = af,
whatClef = "bass"

\include "../Core/Poor Butterfly - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Poor Butterfly - Ab Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Poor Butterfly - Ly - Ab Bass for Standard"}

%}
