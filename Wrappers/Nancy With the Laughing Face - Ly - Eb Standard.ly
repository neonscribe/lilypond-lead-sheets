%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Nancy With the Laughing Face - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nancy With the Laughing Face - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Nancy With the Laughing Face - Ly - Eb Standard"}

%}
