%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/Blue in Green - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue in Green - Dm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Blue in Green - Ly - Dm Bass for Standard"}

%}
