%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Scrapple From the Apple - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Scrapple From the Apple - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Scrapple From the Apple - Ly - F Bass for Standard"}

%}
