%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/I Get a Kick Out of You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Get a Kick Out of You - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Get a Kick Out of You - Ly - Ab Alto Voice"}

%}
