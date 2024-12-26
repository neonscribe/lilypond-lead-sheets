%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Always Swing - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Always (4/4) - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Always Swing - Ly - F to G for Bb for Standard"}

%}
