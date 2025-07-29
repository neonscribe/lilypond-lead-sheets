%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Anita O'Day Key"
whatKey = g
whatClef = "treble"

\include "../Core/You Don't Know What Love Is - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Don't Know What Love Is - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/You Don't Know What Love Is - Ly - Gm Alto Voice"}

%}
