%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Night Train - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Night Train - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Night Train - Ly - Bb Bass for Standard"}

%}
