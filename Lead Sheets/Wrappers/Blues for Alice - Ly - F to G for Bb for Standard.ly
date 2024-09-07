%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Blues for Alice - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blues for Alice - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Blues for Alice - Ly - F to G for Bb for Standard"}

%}
