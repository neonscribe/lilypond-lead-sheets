%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Django Key"
whatKey = a
whatClef = "treble"

djangoChords = ##t

\include "../Core/The Jitterbug Waltz - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Jitterbug Waltz - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The Jitterbug Waltz - Ly - C to A for Eb for Standard"}

%}
