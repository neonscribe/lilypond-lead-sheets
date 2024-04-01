%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/If I Should Lose You - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{If I Should Lose You - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/If I Should Lose You - Ly - Bb Bass for Standard"}

%}
