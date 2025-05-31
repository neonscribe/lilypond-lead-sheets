%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Scrapple From the Apple - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Scrapple From the Apple - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Scrapple From the Apple - Ly - F Standard"}

%}
