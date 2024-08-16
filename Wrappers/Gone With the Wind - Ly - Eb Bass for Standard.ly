%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,,
whatClef = "bass"

\include "../Core/Gone With the Wind - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Gone With the Wind - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Gone With the Wind - Ly - Eb Bass for Standard"}

%}
