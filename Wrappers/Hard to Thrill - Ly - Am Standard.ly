%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Hard to Thrill - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Hard to Thrill - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Hard to Thrill - Ly - Am Standard"}

%}
