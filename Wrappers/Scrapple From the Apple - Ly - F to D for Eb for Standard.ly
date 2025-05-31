%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Scrapple From the Apple - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Scrapple From the Apple - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Scrapple From the Apple - Ly - F to D for Eb for Standard"}

%}
