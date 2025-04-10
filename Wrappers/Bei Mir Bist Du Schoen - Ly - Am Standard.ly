%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Bei Mir Bist Du Schoen - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bei Mir Bist Du Schoen - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bei Mir Bist Du Schoen - Ly - Am Standard"}

%}
