%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Between the Devil and the Deep Blue Sea - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Between the Devil and the Deep Blue Sea - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Between the Devil and the Deep Blue Sea - Ly - F to G for Bb for Standard"}

%}
