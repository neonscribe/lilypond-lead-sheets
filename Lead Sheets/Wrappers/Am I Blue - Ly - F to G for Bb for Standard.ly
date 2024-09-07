%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Am I Blue - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Am I Blue - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Am I Blue - Ly - F to G for Bb for Standard"}

%}
