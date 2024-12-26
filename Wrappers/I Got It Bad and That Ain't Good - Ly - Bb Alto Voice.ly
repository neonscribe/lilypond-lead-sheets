%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/I Got It Bad and That Ain't Good - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Got It Bad and That Ain't Good - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Got It Bad and That Ain't Good - Ly - Bb Alto Voice"}

%}
