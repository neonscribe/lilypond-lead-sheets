%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Almost Blue - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Almost Blue - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Almost Blue - Ly - Am Standard"}

%}
