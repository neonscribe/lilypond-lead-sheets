%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/He'll Have to Go - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{He'll Have to Go - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/He'll Have to Go - Ly - F Standard"}

%}
