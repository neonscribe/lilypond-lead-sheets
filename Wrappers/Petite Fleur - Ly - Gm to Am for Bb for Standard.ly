%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Petite Fleur - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Petite Fleur - Gm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Petite Fleur - Ly - Gm to Am for Bb for Standard"}

%}
