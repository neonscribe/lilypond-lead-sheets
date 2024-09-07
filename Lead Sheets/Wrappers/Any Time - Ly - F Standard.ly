%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Any Time - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Any Time - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Any Time - Ly - F Standard"}

%}
