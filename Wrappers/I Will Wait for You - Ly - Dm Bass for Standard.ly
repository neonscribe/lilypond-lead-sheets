%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/I Will Wait for You - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Will Wait for You - Dm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I Will Wait for You - Ly - Dm Bass for Standard"}

%}
