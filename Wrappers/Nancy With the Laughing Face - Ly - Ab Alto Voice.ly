%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Karrin Allyson Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Nancy With the Laughing Face - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nancy With the Laughing Face - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Nancy With the Laughing Face - Ly - Ab Alto Voice"}

%}
