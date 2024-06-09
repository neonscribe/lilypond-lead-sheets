%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Norwegian Wood - Ly Core - E.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Norwegian Wood - E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Norwegian Wood - Ly - E Standard"}

%}
