%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Blue in Green - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue in Green - Dm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Blue in Green - Ly - Dm to Em for Bb for Standard"}

%}
