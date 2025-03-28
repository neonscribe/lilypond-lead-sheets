%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Hallelujah I Love Him (Her) So - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Hallelujah I Love Her So - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Hallelujah I Love Him (Her) So - Ly - F Bass for Standard"}

%}
