%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/I'm Gonna Sit Right Down and Write Myself a Letter - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm Gonna Sit Right Down and Write Myself a Letter - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I'm Gonna Sit Right Down and Write Myself a Letter - Ly - C Bass for Standard"}

%}
