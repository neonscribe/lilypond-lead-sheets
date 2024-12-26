%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sarah Vaughan Key"
whatKey = df
whatClef = "treble_8"

\include "../Core/Bluesette - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bluesette - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Bluesette - Ly - Db Alto Voice"}

%}
