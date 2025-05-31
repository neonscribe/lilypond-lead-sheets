%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Carmen McRae, Karrin Allyson Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Blame It on My Youth - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blame It on My Youth - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Blame It on My Youth - Ly - Ab Alto Voice"}

%}
