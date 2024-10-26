%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alternate Key"
whatKey = a
whatClef = "treble"

\include "../Core/Besame Mucho - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Besame Mucho - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Besame Mucho - Ly - Am Standard"}

%}
