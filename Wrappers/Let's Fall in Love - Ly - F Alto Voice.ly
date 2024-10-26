%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Peggy Lee, Anita O'Day, Betty Carter, Annette Hanshaw Key"
whatKey = f,
whatClef = "treble"

\include "../Core/Let's Fall in Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Fall in Love - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Let's Fall in Love - Ly - F Alto Voice"}

%}
