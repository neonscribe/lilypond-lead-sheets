%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Stella Cole Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Blame It on My Youth - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blame It on My Youth - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Blame It on My Youth - Ly - Bb Alto Voice"}

%}
