%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb High for Standard Key"
whatKey = a'
whatClef = "treble"

\include "../Core/Bohemia After Dark - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bohemia After Dark - Gm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Bohemia After Dark - Ly - Gm to Am for Bb High for Standard"}

%}
