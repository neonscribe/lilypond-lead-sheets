%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Well You Needn't - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Well You Needn't - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Well You Needn't - Ly - F to G for Bb for Standard"}

%}
