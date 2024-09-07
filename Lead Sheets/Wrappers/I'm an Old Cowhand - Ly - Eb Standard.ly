%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Jazz Key"
whatKey = ef
whatClef = "treble"

useJazzChords = ##t

\include "../Core/I'm an Old Cowhand - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm an Old Cowhand - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I'm an Old Cowhand - Ly - Eb Standard"}

%}
