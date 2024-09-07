%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Swing Gitan - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Swing Gitan - Gm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Swing Gitan - Ly - Gm to Am for Bb for Standard"}

%}
