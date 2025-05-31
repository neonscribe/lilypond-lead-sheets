%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Scrapple From the Apple - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Scrapple From the Apple - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Scrapple From the Apple - Ly - F to G for Bb for Standard"}

%}
