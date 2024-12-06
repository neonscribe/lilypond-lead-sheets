%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Beale Street Blues - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Beale Street Blues - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Beale Street Blues - Ly - Bb Bass for Standard"}

%}
