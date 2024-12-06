%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Maxine Sullivan (with Claude Thornhill), Sarah Vaughan Key"
whatKey = af,
whatClef = "treble"

\include "../Core/Gone With the Wind - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Gone With the Wind - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Gone With the Wind - Ly - Ab Alto Voice"}

%}
