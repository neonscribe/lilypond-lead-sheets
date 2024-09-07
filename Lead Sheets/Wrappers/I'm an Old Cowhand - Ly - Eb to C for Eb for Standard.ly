%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Jazz Key"
whatKey = c
whatClef = "treble"

useJazzChords = ##t

\include "../Core/I'm an Old Cowhand - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm an Old Cowhand - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I'm an Old Cowhand - Ly - Eb to C for Eb for Standard"}

%}
