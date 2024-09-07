%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sarah Vaughan Key"
whatKey = df
whatClef = "treble"

\include "../Core/Moonlight in Vermont - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moonlight in Vermont - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Moonlight in Vermont - Ly - Db Alto Voice"}

%}
