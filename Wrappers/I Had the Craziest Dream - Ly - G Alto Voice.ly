%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Teresa Brewer Key"
whatKey = g,
whatClef = "treble_8"

femaleSinger = ##t

\include "../Core/I Had the Craziest Dream - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Had the Craziest Dream - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Had the Craziest Dream - Ly - G Alto Voice"}

%}
