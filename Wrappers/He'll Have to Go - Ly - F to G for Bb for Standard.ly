%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/He'll Have to Go - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{He'll Have to Go - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/He'll Have to Go - Ly - F to G for Bb for Standard"}

%}
