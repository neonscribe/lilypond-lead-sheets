%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = f
whatClef = "treble_8"

\include "../Core/It Don't Mean a Thing - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Don't Mean a Thing (If It Ain't Got That Swing) - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/It Don't Mean a Thing - Ly - F Alto Voice"}

%}
