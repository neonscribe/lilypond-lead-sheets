%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Who Walks In When I Walk Out - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Who Walks In When I Walk Out? - Gm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Who Walks In When I Walk Out - Ly - Gm to Am for Bb for Standard"}

%}
