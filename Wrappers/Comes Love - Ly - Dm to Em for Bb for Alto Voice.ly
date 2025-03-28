%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Sarah Vaughan Key"
whatKey = e
whatClef = "treble"

\include "../Core/Comes Love - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Comes Love - Dm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Bb/Comes Love - Ly - Dm to Em for Bb for Alto Voice"}

%}
