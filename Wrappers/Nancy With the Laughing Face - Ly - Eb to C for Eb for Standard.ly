%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Nancy With the Laughing Face - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nancy With the Laughing Face - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Nancy With the Laughing Face - Ly - Eb to C for Eb for Standard"}

%}
