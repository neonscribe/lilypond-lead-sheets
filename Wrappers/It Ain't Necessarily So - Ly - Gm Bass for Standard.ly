%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/It Ain't Necessarily So - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Ain't Necessarily So - Gm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/It Ain't Necessarily So - Ly - Gm Bass for Standard"}

%}
