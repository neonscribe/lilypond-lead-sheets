%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Betty Carter, Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/Moonlight in Vermont - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moonlight in Vermont - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Moonlight in Vermont - Ly - Bb Alto Voice"}

%}
