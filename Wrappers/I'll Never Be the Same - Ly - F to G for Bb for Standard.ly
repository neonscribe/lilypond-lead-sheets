%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/I'll Never Be the Same - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Never Be the Same - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I'll Never Be the Same - Ly - F to G for Bb for Standard"}

%}
