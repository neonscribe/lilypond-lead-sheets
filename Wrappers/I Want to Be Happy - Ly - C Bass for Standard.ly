%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/I Want to Be Happy - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Want to Be Happy - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I Want to Be Happy - Ly - C Bass for Standard"}

%}
