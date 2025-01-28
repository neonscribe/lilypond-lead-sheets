%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/You and the Night and the Music - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You and the Night and the Music - Cm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/You and the Night and the Music - Ly - Cm to Dm for Bb for Standard"}

%}
