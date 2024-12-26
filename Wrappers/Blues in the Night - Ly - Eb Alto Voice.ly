%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald, Julie London, Peggy Lee Key"
whatKey = ef
whatClef = "treble_8"

femaleSinger = ##t

\include "../Core/Blues in the Night - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blues in the Night - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Blues in the Night - Ly - Eb Alto Voice"}

%}
