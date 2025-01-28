%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e'
whatClef = "treble"

\include "../Core/Harlem Nocturne - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Harlem Nocturne - Gm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Harlem Nocturne - Ly - Gm to Em for Eb for Standard"}

%}
