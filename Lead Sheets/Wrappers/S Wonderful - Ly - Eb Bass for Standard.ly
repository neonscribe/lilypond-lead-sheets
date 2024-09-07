%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/S Wonderful - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{'S Wonderful - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/S Wonderful - Ly - Eb Bass for Standard"}

%}
