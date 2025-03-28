%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Seven Steps to Heaven - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Seven Steps to Heaven - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Seven Steps to Heaven - Ly - F to G for Bb for Standard"}

%}
