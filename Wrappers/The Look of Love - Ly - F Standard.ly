%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/The Look of Love - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Look of Love - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The Look of Love - Ly - F Standard"}

%}
