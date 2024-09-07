%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Work Song - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Work Song - Fm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Work Song - Ly - Fm Bass for Standard"}

%}
