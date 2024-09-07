%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Two Parts, in F, to G for Bb"
whatKey = g
whatClef = "treble"

\include "../Core/Stumbling - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stumbling - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Stumbling - Ly - F to G for Bb for Standard"}

%}
