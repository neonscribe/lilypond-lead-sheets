%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day Key"
whatKey = c
whatClef = "treble"

\include "../Core/We Kiss in a Shadow - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{We Kiss in a Shadow - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/We Kiss in a Shadow - Ly - C Alto Voice"}

%}
