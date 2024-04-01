%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Comin' Home Baby - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Comin' Home Baby - Gm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Comin' Home Baby - Ly - Gm to Am for Bb for Standard"}

%}
