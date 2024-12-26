%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Falling in Love With Love - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Falling in Love With Love - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Falling in Love With Love - Ly - Bb Bass for Standard"}

%}
