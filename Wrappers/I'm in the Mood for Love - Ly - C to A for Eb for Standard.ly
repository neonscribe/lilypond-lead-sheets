%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/I'm in the Mood for Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm in the Mood for Love - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I'm in the Mood for Love - Ly - C to A for Eb for Standard"}

%}