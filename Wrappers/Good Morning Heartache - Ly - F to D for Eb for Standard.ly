%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Good Morning Heartache - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Good Morning Heartache - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Good Morning Heartache - Ly - F to D for Eb for Standard"}

%}
