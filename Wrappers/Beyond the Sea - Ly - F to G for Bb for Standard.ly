%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Beyond the Sea - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Beyond the Sea - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Beyond the Sea - Ly - F to G for Bb for Standard"}

%}
