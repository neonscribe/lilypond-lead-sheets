%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Moonlight Saving Time - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moonlight Saving Time - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Moonlight Saving Time - Ly - F to G for Bb for Standard"}

%}
