%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Lazy River - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(Up a) Lazy River - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Lazy River - Ly - F to G for Bb for Standard"}

%}
