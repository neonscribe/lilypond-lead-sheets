%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/A Child Is Born - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Child Is Born - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/A Child Is Born - Ly - Bb Bass for Standard"}

%}
