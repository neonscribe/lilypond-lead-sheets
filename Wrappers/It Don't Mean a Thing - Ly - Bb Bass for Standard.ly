%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,,
whatClef = "bass"

\include "../Core/It Don't Mean a Thing - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Don't Mean a Thing (If It Ain't Got That Swing) - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/It Don't Mean a Thing - Ly - Bb Bass for Standard"}

%}
