%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Good Morning Heartache - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Good Morning Heartache - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Good Morning Heartache - Ly - F Standard"}

%}
