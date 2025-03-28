%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eydie Gormé Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/I'll Take Romance Swing - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Take Romance (4/4) - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I'll Take Romance Swing - Ly - C Alto Voice"}

%}
