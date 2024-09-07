%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Elena's Bossa - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Elena's Bossa - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Elena's Bossa - Ly - Am Standard"}

%}
