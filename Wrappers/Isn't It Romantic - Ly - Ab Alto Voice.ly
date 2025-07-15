%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Isn't It Romantic - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Isn't It Romantic - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Isn't It Romantic - Ly - Ab Alto Voice"}

%}
