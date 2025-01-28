%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Harlem Nocturne - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Harlem Nocturne - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Harlem Nocturne - Ly - Gm Standard"}

%}
