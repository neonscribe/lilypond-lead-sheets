%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Heart and Soul - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Heart and Soul - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Heart and Soul - Ly - F Bass for Standard"}

%}
