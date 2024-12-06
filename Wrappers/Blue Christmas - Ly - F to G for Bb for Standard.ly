%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Blue Christmas - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Christmas - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Blue Christmas - Ly - F to G for Bb for Standard"}

%}
