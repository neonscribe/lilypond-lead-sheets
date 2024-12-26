%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Keely Smith Key"
whatKey = ef
whatClef = "treble_8"

\include "../Core/Blue Christmas - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Christmas - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Blue Christmas - Ly - Eb Alto Voice"}

%}
