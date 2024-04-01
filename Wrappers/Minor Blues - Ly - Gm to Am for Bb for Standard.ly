%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Minor Blues - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Minor Blues (Blues en Mineur) - Gm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Minor Blues - Ly - Gm to Am for Bb for Standard"}

%}
