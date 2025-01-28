%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/502 Blues - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{502 Blues - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/502 Blues - Ly - Am Standard"}

%}
