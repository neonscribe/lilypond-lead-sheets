%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Once in a While - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Once in a While - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Once in a While - Ly - Eb Bass for Standard"}

%}
