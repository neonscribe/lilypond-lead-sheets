%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Song for My Father Lyrics - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Song for My Father (with lyrics) - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Song for My Father Lyrics - Ly - Fm Standard"}

%}
