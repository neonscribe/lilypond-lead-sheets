%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sarah Vaughan Key"
whatKey = df
whatClef = "treble_8"

\include "../Core/Mean to Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mean to Me - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Mean to Me - Ly - Db Alto Voice"}

%}
