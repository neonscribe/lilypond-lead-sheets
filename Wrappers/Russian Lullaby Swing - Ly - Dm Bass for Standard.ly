%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Swing"
whatKey = d,
whatClef = "bass"

\include "../Core/Russian Lullaby Swing - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Russian Lullaby Swing - Dm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Russian Lullaby Swing - Ly - Dm Bass for Standard"}

%}
