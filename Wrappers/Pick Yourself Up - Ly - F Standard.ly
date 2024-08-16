%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Pick Yourself Up - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Pick Yourself Up - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Pick Yourself Up - Ly - F Standard"}

%}
