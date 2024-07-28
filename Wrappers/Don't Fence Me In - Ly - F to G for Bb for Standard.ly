%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Don't Fence Me In - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Don't Fence Me In - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Don't Fence Me In - Ly - F to G for Bb for Standard"}

%}
