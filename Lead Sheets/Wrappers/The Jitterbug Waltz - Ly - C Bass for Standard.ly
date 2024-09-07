%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass Clef for Django Key"
whatKey = c,
whatClef = "bass"

djangoChords = ##t

\include "../Core/The Jitterbug Waltz - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Jitterbug Waltz - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The Jitterbug Waltz - Ly - C Bass for Standard"}

%}
