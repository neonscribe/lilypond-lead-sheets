%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Django Key"
whatKey = c
whatClef = "treble"

djangoChords = ##t

\include "../Core/The Jitterbug Waltz - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Jitterbug Waltz - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The Jitterbug Waltz - Ly - C Standard"}

%}
