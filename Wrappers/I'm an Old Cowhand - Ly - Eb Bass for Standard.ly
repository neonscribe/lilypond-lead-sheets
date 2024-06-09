%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Jazz Key"
whatKey = ef,
whatClef = "bass"

useJazzChords = ##t

\include "../Core/I'm an Old Cowhand - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm an Old Cowhand - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I'm an Old Cowhand - Ly - Eb Bass for Standard"}

%}
