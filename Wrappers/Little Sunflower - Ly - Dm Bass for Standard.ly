%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
bassKey = d
whatClef = "bass"

\include "../Core/Little Sunflower - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Little Sunflower - Dm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Little Sunflower - Ly - Dm Bass for Standard"}

%}
