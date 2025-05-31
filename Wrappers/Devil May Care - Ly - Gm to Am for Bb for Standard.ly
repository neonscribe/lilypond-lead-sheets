%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Devil May Care - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Devil May Care - Gm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Devil May Care - Ly - Gm to Am for Bb for Standard"}

%}
