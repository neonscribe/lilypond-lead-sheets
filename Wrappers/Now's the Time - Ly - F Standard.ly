%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Now's the Time - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Now's the Time - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Now's the Time - Ly - F Standard"}

%}
