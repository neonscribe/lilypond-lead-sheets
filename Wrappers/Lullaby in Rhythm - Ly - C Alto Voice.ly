%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "June Christy, Peggy Lee, Patti Page Key"
whatKey = c
whatClef = "treble"

\include "../Core/Lullaby in Rhythm - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lullaby in Rhythm - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Lullaby in Rhythm - Ly - C Alto Voice"}

%}
