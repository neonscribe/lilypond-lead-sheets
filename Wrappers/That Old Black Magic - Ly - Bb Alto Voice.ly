%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sarah Vaughan, Ella Fitzgerald, Peggy Lee Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/That Old Black Magic - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{That Old Black Magic - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/That Old Black Magic - Ly - Bb Alto Voice"}

%}
