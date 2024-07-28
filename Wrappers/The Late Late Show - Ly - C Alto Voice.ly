%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Etta Jones Key"
whatKey = c
whatClef = "treble"

\include "../Core/The Late Late Show - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Late Late Show - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/The Late Late Show - Ly - C Alto Voice"}

%}
