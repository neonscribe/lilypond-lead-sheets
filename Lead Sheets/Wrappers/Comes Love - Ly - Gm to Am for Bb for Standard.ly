%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Comes Love - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Comes Love - Gm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Comes Love - Ly - Gm to Am for Bb for Standard"}

%}
