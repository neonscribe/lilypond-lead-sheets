%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Thou Swell - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Thou Swell - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Thou Swell - Ly - Eb Bass for Standard"}

%}
