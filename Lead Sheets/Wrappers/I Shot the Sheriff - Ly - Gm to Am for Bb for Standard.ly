%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/I Shot the Sheriff - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Shot the Sheriff - Gm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I Shot the Sheriff - Ly - Gm to Am for Bb for Standard"}

%}
