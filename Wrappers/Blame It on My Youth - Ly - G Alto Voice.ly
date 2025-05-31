%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Chris Connor, Julie London Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Blame It on My Youth - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blame It on My Youth - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Blame It on My Youth - Ly - G Alto Voice"}

%}
