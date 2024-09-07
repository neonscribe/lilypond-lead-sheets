%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Moonlight Saving Time - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moonlight Saving Time - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Moonlight Saving Time - Ly - F Standard"}

%}
