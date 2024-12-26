%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Catherine Russell, Helen Merrill Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/When Lights Are Low - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When Lights Are Low - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/When Lights Are Low - Ly - Ab Alto Voice"}

%}
