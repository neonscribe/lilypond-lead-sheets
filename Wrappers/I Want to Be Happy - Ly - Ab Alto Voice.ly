%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day Key"
whatKey = af,
whatClef = "treble"

\include "../Core/I Want to Be Happy - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Want to Be Happy - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Want to Be Happy - Ly - Ab Alto Voice"}

%}
