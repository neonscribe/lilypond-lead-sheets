%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/The Preacher - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Preacher - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The Preacher - Ly - F Standard"}

%}
