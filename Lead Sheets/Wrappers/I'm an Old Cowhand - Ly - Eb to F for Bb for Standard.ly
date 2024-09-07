%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Jazz Key"
whatKey = f
whatClef = "treble"

useJazzChords = ##t

\include "../Core/I'm an Old Cowhand - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm an Old Cowhand - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I'm an Old Cowhand - Ly - Eb to F for Bb for Standard"}

%}
