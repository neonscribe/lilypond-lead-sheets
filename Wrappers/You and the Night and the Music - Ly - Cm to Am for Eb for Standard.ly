%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/You and the Night and the Music - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You and the Night and the Music - Cm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/You and the Night and the Music - Ly - Cm to Am for Eb for Standard"}

%}
