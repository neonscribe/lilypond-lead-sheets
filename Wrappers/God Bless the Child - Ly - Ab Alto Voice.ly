%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday, Ella Fitzgerald Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/God Bless the Child - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{God Bless the Child - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/God Bless the Child - Ly - Ab Alto Voice"}

%}
