%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/St James Infirmary - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{St. James Infirmary - Dm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/St James Infirmary - Ly - Dm Bass for Standard"}

%}
