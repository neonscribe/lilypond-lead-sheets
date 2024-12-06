%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ethel Merman, Ella Fitzgerald, Helen Forrest (with Artie Shaw) Key"
whatKey = af,
whatClef = "treble"

\include "../Core/Do I Love You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Do I Love You - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Do I Love You - Ly - Ab Alto Voice"}

%}
