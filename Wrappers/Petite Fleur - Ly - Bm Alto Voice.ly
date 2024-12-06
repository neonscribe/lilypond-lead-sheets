%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Petula Clark Key"
whatKey = b,
whatClef = "treble"

petulaLyrics = ##t

\include "../Core/Petite Fleur - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Petite Fleur - Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Petite Fleur - Ly - Bm Alto Voice"}

%}
