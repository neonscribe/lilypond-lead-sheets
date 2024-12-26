%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Diana Ross, Diane Schuur Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/God Bless the Child - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{God Bless the Child - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/God Bless the Child - Ly - Bb Alto Voice"}

%}
