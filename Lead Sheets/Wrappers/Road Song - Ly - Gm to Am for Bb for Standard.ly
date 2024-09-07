%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Road Song - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Road Song - Gm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Road Song - Ly - Gm to Am for Bb for Standard"}

%}
